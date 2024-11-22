
# Decoding Devops : 

## 8 steps 

#### Step 1 
        Basics of linux
        Server Management in linux 
        Vagrant 
        Basics of networking 
        Vprofile project intro & setup on VM's

#### Step 2 
        Cloud Computing intro | Aws 
        IAM 
        Ec2 Instance 
        EBS Volumes
        ELB 
        S3 Cloudwatch 
        RDS 
        Autoscaling 
        Route53 
        Vprofile Project Setup on AWS Cloud

#### Step 3 (CI/CD) 
        GIT 
        Maven 
        Jenkins 
        CI/CD 
        Nexus 
        Sonarqube 
        Jenkins Administrator 
        Pipeline as a code . 

#### Step 4 (Bash & Python Scripting)
        Variables 
        Conditions 
        Loops etc Automating day to day admin task 
        Python programming basics. Vars , datatypes , Conditions , loops , functions , modules etc , pythons for automating OS tasks . 

#### Step 5 (Configuration Mangement) 
        Ansible intro 
        Ad Hoc Commands 
        Modules 
        YAML intro 
        Playbooks 
        VArs 
        Condtions 
        loops 
        handlers 
        templates etc etc 
        Variables deep dive & Roles 
        Ansible for AWS . 

#### Step 6(AWS Part 2) :
         VPC in depth 
         Log management and custom metrics 
         Cloudmatch 
         AWS Cli & S3 cli 
         Beanstalk & RDS 
         Vprofile on Beanstalk
         Code commit 
         Code Build & Code 
         pipeline 

#### Step 7a (Containerization) : 
        Docker intro 
        Understanding & IMplementing 
        Containers 
        Volumes 
        Network , logs etc 
        Building images for Vprofile project 
        Docker compse to run vprofile multi container . 

#### Step 7b (Orchestration) : 
        Kubernetes Intro 
        Kubernetes setup for production Env 
        Kubernates objects 
        Pods 
        SErvices 
        Controllers 
        Deployment Replicaton
        Autoscaling
        REsource quotas 
        Secret
        Configmap 
        Namespace. 

### Step 8 (Cloud Automation ) : 
        Cloud Automation with Terraform 
        Cloud Formation  

----------------------------------------------------------------------------------------


# SECTION 1 : INTRODUCTION 

#### SDLC 
       1. Requirements Gathering ( Product features , Users , Usage , user requirement , Market state)
       2. Planning ( cost , REsource , Risk ) 
       3. Design Architects 
       4. Development Developers 
       5. Testing ( QA) 
       6. Deployment ( system Admins )
       7. Maintanance 

#### Models : 
        Waterfall(can move to next phase only after previous)
        Agile (Divide work into sprints usinally 2 to 4 weeks)
        Spiral
        Bigbang etc 


 ***Dev is agile but ops is still waterfall.***

#### Devops : 

        Communication 
        Collaboration 
        Integration (Basically goal is to reduce the SDLC )

#### Automation : 
        Code Build 
        Code Testing 
        software testing
        Infra changes 
        Deployments 

#### DevOps Lifecycle : 
                1. Code (Developers commits code )
                2. Code Build (Deployable Software: Artiface)
                3. Code Test (Unit & Integration test) 
                4. Code Analysis(Vulnerability,best practices) 
                5. Delivery(Deploy changes to staging)
                6. DB/Sec Changes(Every other ops changes)
                7. Software Testing(QA/Functional,load,performance tests) 
                8. Deploy to Prod
                9. Go Live(User traffic diverted to new changes) 
                10. User Approval(User Feedback)
                11 . Keep Monitoring

***Plan > Create > Verify > Package > Release > Configure > Monitor***

## WHAT IS CONTINUOUS INTEGRATION : 
        Repo --> 
        Build Server(Build , Tested , Evaluated)[Generated artifact ] -> Testing -> 
        Production 

***MERGED BUT NOT INTEGRATED***
***FOR EVERY COMMIT > BUILD & TEST***

***CODE > FETCH > BUILD > TEST > NOTIFY > FEEDBACK > CODE [CI]***

#### ARTIFACT[WAR/JAR in java | DLL/EXE/MSI for windows | ZIP/TAR]

#### TOOLS : 

        1. IDE(Eclipse , Vistual Studio , Atom , Pycharm etc)
        2. VCS(Git , Svn , Tfs , Perforce)
        3. Build Tools(Maven , Ant , Gradle | MSbuild , Visual Build | IBM urban Code | Make | Grunt)
        4. Software Repository(Sonatype nexus , Jfrog artifactory , Archiva , Cloudsmith package , Grunt)
        5. CI Tools(Jenkins , CircleCI , TeamCity , Bamboo CI , Cruise Control)

## WHAT IS CONTINUOUS DELIVERY : 

***Deploying the artifacts on the servers*** 

#### DEPLOYMENT : 

        Server Provisioning 
        Dependencies 
        Conf Changes 
        Network 
        ARTIFACT DEPLOY 

#### TOOLS : 

        1. Ansible , Puppet , Chef [ System Automation ]
        2. Terraform , Cformation [ Cloud infrastructure automa]
        3. Jenkins , Octopus Deploy[ CI/CD Automation ]
        4. Helm Charts 
        5. Code Deploy etc

#### Test Automation

        FUNCTIONAL
        LOAD 
        PERFORMANCE 
        DB 
        SECURITY

#### Operations : 
        QA TEAMS(will write automation code for software testing ) 
        OPS TEAm(will write automation code for deployment) 
        DEV team(will help in integrating CI )

----------------------------------------------------------------------------------------

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

----------------------------------------------------------------------------------------

# Section 3 : Virtualization 


### Life Before Virtualization : 

        1.  To Run App/Services we need servers 
        2. Physical Computers(Servers in Datacenter)
        3. Oone Service - One Server(Isolation)
        4. Servers are always overprovisioned 
        5. Server Resources mostly underutilized 
        6. Huge Capital Ex & Operational Ex 


### What is Virtualization :

        1. Enter VMware
        2. Allows one computer to run multiple OS
        3. Partition physical resource in virtual resource
        4. Virtual Machines runs in isolated Env
        5. Each virtual machine needs its own OS
        6. Server Virtualiztion is the most commmon virtualization( network , storage virtualization)

***Applications > os(windows , linux etc) > VM's > Hypervisor > Hardware***

1. Terminologies : Host OS , Guest OS , VM , Snapshot(backup) , Hypervisor

### Types of Hypervisor : 

        Type 1: Bare Metal 
                Runs as a Base OS 
                Production 
                E.g Vmware esxi , Xen Hypervisor


        Type 2 : Runs a software 
                Learn & Tests 
                Eg : Oracle VM VirtualBox , Vmware 


***Thumb Rule : If you want to Automate Someting , make sure to know how to do it manually.***

Manually Method : 

        Enabiling virtualization based on OS 
        creating virtual disk with specs 
        Download the ISO image of the os required >
        Bridged Adapter 
        SSH into the vm created through git bash 


### VAGRANT MANAGES / AUTOMATES VM LIFECYCLE 

#### VM Management Problem :

        Os installaion 
        Time consuimg 
        Manual => Human Error 
        Tough to replicate multi vms 
        Need to document entire setup

#### Vagrant for VMs :

        No OS Installation: VM Images/Box 
                            Free box available on vagrant cloud 

#### Vagrantfile : 
        Manage all vm settings in a file
        VM changes through vagrantfile 
        Provisioning(After os is booted if we want to setup servers or execute some commands)

#### Simple Commands : 
        vagrant init boxname 
        vagrant up 
        vagrant ssh 
        vagrant halt 
        vagrant destroy 

#### STEPS : FOLDER > VAGRANTFILE > VAGRANT UP > VAGRANT SSH > VAGRANT HALT/DESTROY

Vagrant cloud > search image > vagrant init ... > vagrant box list (lists all the os present) > vagrant status > Vagrant ssh(default provider) > vagrant halt(stops virtual machine) > vagrant up (Just starts virtual machine) > vagrant reload > vagrant destroy(destroys base box if nothing is present) > 

vagrant global-status | vagrant global-status --prune 


Errors : Schannel: next InitializeSecurityContext , Vbox hardening (Mostly due to VPN or antivirus software)


CPU Architecture( M1 , M2 , M3 => ARM | Intel or AMD => x86)

Install necessary utilities > Signup in broad.com > install vmware fusion from broac.com > install vagrant > making directory and create vagrantfile with the given text > vagrant up > vagrant shh . 


## Section 4 : Linux 

Contents : 

        -- Intro to linux 
        -- Basic CLI Commands
        -- Understanding files in Linux 
        -- Filters & Redirection
        -- Users & Group 
        -- Sudo 
        -- Software management (RPM , Debian , Yun , APT etc) 
        -- Services & Processes
        -- Good to Know commands , 10. Server Management. 

***Good at : COMMANDS > FILES > SOFTWARES > SERVERS*** 

LINUX PRINCIPLES : 

        -- Everything is a file(including hardware) 
        -- Small Single purpose programs 
        -- Ability to chain programs together for complex operations 
        -- Avoid Captive User Interface 
        -- Configuration data stored in text file. 

WHY LINUX : 
        -- Opensource
        -- Community support 
        -- Support wide variety of Hardware 
        -- Customization 
        -- Most servers runs on linux 
        --  Automation 
        -- SEcurity

Architecture of LInux : Hardware > Kernel > shell > Users

ls /
ls -l /


SOME IMPORTANT DIRECTORIES : 

        -- Home Directories : /root , /home , /username 
        -- User Executable : /bin , /usr /bin , /usr/local/bin 
        -- System Executables: /sbin , /usr/sbin , /usr/local/sbin
        -- Other Mountpoints : /media , /mnt 
        -- Configuration : /etc 
        -- Temporaty Files: /tmp 
        -- Kernels and Bootloader: /boot 
        -- Server Data : /var , /srv
        -- System Information : /proc , /sys 
        -- Shared Libraries : /lib , /usr/bin , /usr/local/lib 



Highest Directory: / 
Normal User executable programs in /bin 
Root User executalbe[System Exectuable] programs in /usr/sbin

commands : ls , pwd , mkdir , touch , cp[recursive copy for dierctories] , 

ABSOLUTE & RELATIVE PATH



## Section 5 : Vagrant & Linux Servers : 



----------------------------------------------------------------------------------------

## Section 6: Variables , Json & YAML [Data Formats]

#### Table of Content :

        Variables 
        python DS(strings , Integers , List , Tuple & Dictionary ) 
        JSON 
        YAML 

----------------------------------------------------------------------------------------

## Section 7 : Vprofile Project setup : 


----------------------------------------------------------------------------------------
## Section 8 : Networking 

#### Content : 

        Components 
        OSI model 
        Classification 
        Devices
        Home networkg 
        IP Addresses 
        Protocols
        DNS & DHCP 
        Network Commands 
   
       -- Communication between two or more network interfaces 

#### Components : 

      --Two or more computers/Devices 
      --Cables as links between the computers 
      --A network interfacing Card(NIC) on each 
      --computer 
      --Switches 
      --Routers 
      --Software called os 

#### OSI Model[Open System Interconnection] : 

            --Applicaiton[data]
            --presentation[data]
            --session[data]
            --Transport[segments]
            --Network[packets]
            --Datalink[frames]
            --Physical[bits] 

#### Elements : 

        -- Services
        -- protocols
        -- Interfaces 

Protocols : Defines procedures that must be followed when transmitting or receiving data. 

Defines format , timing , sequence  and error checking 

TCP reliable [ FTP , HTTP , HTTPs] 
UDP unreliable [ DNS , DHCP , TFTP , ARP , RARP ] 


Networking Commands : 

        ifconfig - Different networking interfaces

        ip addr show : alternative for ifconfig

        ping www.google.com 

        tracert www.google.in -> Traceroute [Hopes] 

        netstat -antp [open port] 

        ps -ef | grep apache2 

        ss -tunlp [open ports in our system]

        nmap 

        dig www.google.com [DNS lookup] 

        nslookup same as dig but log 

        route -n [Gateways] 

        arp [add content to kernel] [kernel table]

        mtr www.google.com [ ive traceroute] we can see dynamically 

        telnet 192.168.40.12

----------------------------------------------------------------------------------------
## Section 9 : Introducing Containers 

----------------------------------------------------------------------------------------

## Section 10 : Bash Scripting 

----------------------------------------------------------------------------------------

## Section 11 : AWS Part 1 :

Prerequsite : Create a Root account and IAM user with admin privelages [ free-tire]

#### What is Cloud Computing :

         -- Public , Private , Hybrid 
         -- IaaS , Paas , SaaS
         -- AWS REgions & Zones [ AWS Global Infrastructure]

#### What is Ec2[Elastic cloud compute]

         -- EC2 provides web services API for provisioning , managing and deprovisioning , virtual servers inside amazon cloud. 
         -- Ease in scaling UP/Down
         -- Pay only for what you use
         -- can be integrated into serveral other services

----------------------------------------------------------------------------------------

