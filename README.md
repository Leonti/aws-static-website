# aws-static-website
A Cloudformation file to create a static website setup on AWS

1. Modify `parameters.properties` and change `example.com` to your domain
2. Modify `deploy-infra.sh` and change `<stack-name>` to yours (you can use domain name as a a stack name)
3. Deploy CloudFormation stack:  

```bash
./deploy-infra.sh
```  

You will have go into AWS Console to verify SSL certificate after the the stack creation has started.
Without it the stack won't proceed.  

4. Modify `deploy.sh` and change `stack-name` to the name of the stack (same as in step 2) and `distribution-id` to the Cloudfront distribution id from AWS Console.
5. Deploy your code with:  

```bash
./deploy.sh
```

More details in Medium or Dev.to posts:  
https://medium.com/@leonti.bielski/deploying-an-spa-on-aws-91a0b35aab31  
https://dev.to/leonti/deploying-an-spa-on-aws-34lf
