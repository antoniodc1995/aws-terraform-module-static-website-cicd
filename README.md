# Cloud Resume Challenge - AWS & Terraform

## Overview

This repository contains my ongoing solution to Forrest Brazeal's Cloud Resume Challenge, using DevOps tools such as Terraform for Infrastructure as Code, GitHub Actions for CI/CD, and various AWS services to build a static website that serves as my portfolio.

## Architecture

![AWS Cloud Resume Challenge Flowchart](https://github.com/antoniodc1995/aws-terraform-module-static-website-cicd/blob/main/aws-terraform-architecture.png)

## Project Phases

I completed the project in several phases:

1. **Set up the development environment**  
   Created the GitHub repository and the necessary assets to work with Terraform.

2. **Configure the Terraform AWS backend module**  
   After creating the repository, I configured the backend module with the necessary AWS resources:
   - Dedicated IAM user for Terraform, applying the principle of least privilege.
   - S3 bucket to store the Terraform state, with a policy that allows listing, retrieving, and storing files.
   - DynamoDB table for file locking during modifications, preventing conflicts if multiple developers work on the infrastructure simultaneously.

3. **Automate deployment with GitHub Actions CI/CD pipeline**  
   Set up a CI/CD pipeline with GitHub Actions that detects and executes the workload automatically whenever a push is made to the main branch.

4. **Develop DNS and manage SSL certificates**  
   Configured DNS and SSL certificates for secure website connection. With Route 53, I created a DNS record for validation. Once Route 53 validated the record, the SSL certificate was confirmed and ready for use, ensuring the domain and subdomains are protected with HTTPS.

5. **Create an Amazon S3 static website module**  
   Created a Terraform module for the S3 bucket to host the website's frontend, with an S3 policy set to make the site accessible to users.

6. **Implement the Amazon CloudFront distribution module**  
   Configured CloudFront to ensure content delivery from the S3 bucket through the SSL certificate. The bucket is associated with a policy for CloudFront. Finally, with an alias record, my domain is linked to the CloudFront distribution, routing domain traffic to the distribution.

- Here's my [website] (https://antoniodececio.com/).

## Resources used

- [Cloud Resume Challenge] (https://cloudresumechallenge.dev/);
- [ Static Web Hosting on AWS Series: Terraform Modules & GitHub Actions] (https://www.youtube.com/playlist?list=PLfmMgg_VrrlAz4s0UxLCdgZlcw2iCqVrD);
- [Responsive Portfolio Website From Scratch] (https://www.youtube.com/watch?v=ldwlOzRvYOU&list=LL&index=13&t=6401s&ab_channel=HowtoBecomeaDeveloper).