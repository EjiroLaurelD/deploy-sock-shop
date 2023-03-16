#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "us-east-1"
    }
    stages {
        stage("Create an EKS Cluster") {
            steps {
                script {
                    dir('./terraform'){
                        sh "terraform init"
                        sh "terraform apply -auto-approve" 
                    }                        
                }
            }
        }
        stage("Deploy to EKS") {
            steps {
                script {
                        sh "aws eks update-kubeconfig --name myapp-eks-cluster"
                        sh "kubectl apply -f deployment.yaml"
                        sh "kubectl apply -f complete-demo.yaml"
                        sh "kubectl apply -f monitoring-deploy.yaml"
                        sh "kubectl apply -f ./kubernetes/manifests-alerting/*" 
                }
            }
        }
    }
}
