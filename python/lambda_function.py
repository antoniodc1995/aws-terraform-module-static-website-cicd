import boto3
import json

def lambda_handler(event, context):
    
    TABLE_NAME = "views_table"
    db_client = boto3.client('dynamodb')
    dynamodb = boto3.resource('dynamodb')
    table = dynamodb.Table(TABLE_NAME)

    update = db_client.update_item(
        TableName=TABLE_NAME,
        Key={"Views": {"N": "0"}},
        UpdateExpression="ADD views :inc",
        ExpressionAttributeValues={":inc": {"N": "1"}}
    )

    getItems = table.get_item(Key={"Views": 0})
    itemsObjectOnly = getItems["Item"]
    visitcount = itemsObjectOnly["visits"]

    response = {
        "headers": {
            "content-type" : "application/json"
        },
        "status_code": 200,
        "body" : {
            "count": visitcount
        }
    }

    return response