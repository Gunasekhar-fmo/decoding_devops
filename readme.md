
# Decoding Devops : 

# 8 steps 

### Step 1 : Basics of linux , Server Management in linux , Vagrant , Basics of networking , Vprofile project intro & setup on VM's

### Step 2 : Cloud Computing intro | Aws , IAM , Ec2 Instance , EBS Volumes , ELB , S3 Cloudwatch , RDS , Autoscaling , Route53 , Vprofile Project Setup on AWS Cloud

### Step 3 (CI/CD) : GIT , Maven , Jenkins , CI/CD , Nexus , Sonarqube , Jenkins Administrator , Pipeline as a code . 

### Step 4 (Bash & python scripting) : Variables , Conditions , Loops etc Automating day to day admin task | Python programming basics. Vars , datatypes , Conditions , loops , functions , modules etc , pythons for automating OS tasks . 

### Step 5 ( configuration Mangement) : Ansible intro , Ad Hoc Commands , Modules , YAML intro , Playbooks , VArs , Condtions , loops , handlers , templates etc etc , Variables deep dive & Roles , Ansible for AWS . 

### Step 6 : AWS Part 2 : VPC in depth , Log management and custom metrics , Cloudmatch , AWS Cli & S3 cli , Beanstalk & RDS , Vprofile on Beanstalk , Code commit , Code Build & Code , pipeline 

### Step 7a ( Containerization) : Docker intro , Understanding & IMplementing , Containers , Volumes , Network , logs etc | Building images for Vprofile project , Docker compse to run vprofile multi container . 

### Step 7b( Orchestration ) : Kubernetes Intro , Kubernetes setup for production Env | Kubernates objects , Pods , SErvices , Controllers , Deployment Replicaton , Autoscaling , REsource quotas , Secret , Configmap , namespace. 

### Step 8 (Cloud Automation ) : Cloud Automation with Terraform , Cloud Formation . 

---------------------------------------------------------------

# SECTION 1 : INTRODUCTION 

1. SDLC [ 
       1. Requirements Gathering ( Product features , Users , Usage , user requirement , Market state)
       2. Planning ( cost , REsource , Risk ) 
       3. Design Architects 
       4. Development Developers 
       5. Testing ( QA) 
       6. Deployment ( system Admins )
       7. Maintanance ]

2. Models : Waterfall(can move to next phase only after previous)
         Agile (Divide work into sprints usinally 2 to 4 weeks)
         Spiral
         Bigbang etc 

 ***Dev is agile but ops is still waterfall.***

3. Devops : Communication , Collaboration , Integration ( Basically goal is to reduce the SDLC )

4. Automation : Code Build , Code Testing , software testing , infra changes , Deployments . 

5. DevOps Lifecycle : 1. Code (Developers commits code )
                   2. Code Build (Deployable Software: Artiface)
                   3. Code Test (Unit & Integration test) 
                   4. Code Analysis(Vulnerability,best practices) 
                   5. Delivery(Deploy changes to staging)
                   6. DB/Sec Changes(Every other ops changes)
                   7. Software Testing(QA/Functional , load , performance tests) 
                   8. Deploy to Prod
                   9. Go Live(User traffic diverted to new changes) 
                   10. User Approval(User Feedback)
                   11 . Keep Monitoring

***Plan > Create > Verify > Package > Release > Configure > Monitor***

## WHAT IS CONTINUOUS INTEGRATION : 

1. Repo --> Build Server(Build , Tested , Evaluated)[Generated artifact ] -> Testing -> Production 

***MERGED BUT NOT INTEGRATED***
***FOR EVERY COMMIT > BUILD & TEST***

***CODE > FETCH > BUILD > TEST > NOTIFY > FEEDBACK > CODE [CI]***

2. ARTIFACT[WAR/JAR in java | DLL/EXE/MSI for windows | ZIP/TAR]

3. TOOLS : 1. IDE(Eclipse , Vistual Studio , Atom , Pycharm etc)
        2. VCS(Git , Svn , Tfs , Perforce)
        3. Build Tools(Maven , Ant , Gradle | MSbuild , Visual Build | IBM urban Code | Make | Grunt)
        4. Software Repository(Sonatype nexus , Jfrog artifactory , Archiva , Cloudsmith package , Grunt)
        5. CI Tools(Jenkins , CircleCI , TeamCity , Bamboo CI , Cruise Control)

## WHAT IS CONTINUOUS DELIVERY : 

***Deploying the artifacts on the servers*** 

1. DEPLOYMENT : Server Provisioning , Dependencies , Conf Changes 
             Network , ARTIFACT DEPLOY 

2. TOOLS : 1. Ansible , Puppet , Chef [ System Automation ]
        2. Terraform , Cformation [ Cloud infrastructure automa]
        3. Jenkins , Octopus Deploy[ CI/CD Automation ]
        4. Helm Charts 
        5. Code Deploy etc

3. Test Automation[FUNCTIONAL, LOAD , PERFORMANCE , DB , SECURITY]

4. QA TEAMS(will write automation code for software testing ) & OPS TEAm(will write automation code for deployment) 
DEV team(will help in integrating CI )

------------------------------------------------------

# Section 2: Prerequisites Info & Setup : 

https://github.com/imnowdevops/ddc-material
https://github.com/devopshydclub/vprofile-project/tree/kube-cicd


Install required softwares : 
https://github.com/imnowdevops/ddc-material/blob/master/02.Prerequisites/Prereqs_doc.pdf

Need to buy an domain in godaddy


1. AWS > Root User Account > IAM User Account

2. Cloud WAtch metrics [ Billing , Logs , Usage] -> Check you bills every night when you go to sleep. 


3. AWS Certificate Manager(ACM) [ Certificates > Request Certificate > Request Public Certificate ] -> Fully Qualified domain name -> VAlidation method ( DNS or Email Validation) -> Key Algorithm(RSA-2048 , ) -> Tags


4. Godaddy > Youdomain > ManageDomain > DNS > Create CNAME record > CName[copy the cname from aws certifcate generated by removing the last domain name] > cname Value in value 
