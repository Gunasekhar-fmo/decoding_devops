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

        Course_material: 
                https://github.com/imnowdevops/ddc-material

        Project_Repository: 
                https://github.com/devopshydclub/vprofile-project/tree/kube-cicd

#### Labs : 

        1. Need to buy an domain in godaddy

        2. AWS > Root User Account > IAM User Account

        3. Cloud WAtch metrics [ Billing , Logs , Usage] -> Check you bills every night when you go to sleep. 

        4. AWS Certificate Manager(ACM) [ Certificates > Request Certificate > Request Public Certificate ] -> Fully Qualified domain name -> VAlidation method ( DNS or Email Validation) -> Key Algorithm(RSA-2048 , ) -> Tags

        5. Godaddy > Youdomain > ManageDomain > DNS > Create CNAME record > CName[copy the cname from aws certifcate generated by removing the last domain name] > cname Value in value 

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


***FOLDER > VAGRANTFILE > VAGRANT UP > VAGRANT SSH > VAGRANT HALT/DESTROY***

#### Steps: 
    Vagrant cloud 
    Search image 
    vagrant init  
    vagrant box list (lists all the os present) 
    vagrant status 
    Vagrant ssh(default provider) 
    vagrant halt(stops virtual machine) 
    vagrant up (Just starts virtual machine) 
    vagrant reload >
    vagrant destroy(destroys base box if nothing is present)    
    vagrant global-status | vagrant global-status --prune  // to check the status and list all the vms


***Errors : Schannel: next InitializeSecurityContext , Vbox hardening (Mostly due to VPN or antivirus software)***


***CPU Architecture( M1 , M2 , M3 => ARM | Intel or AMD => x86)***

#### Lab: 
    
    Install necessary utilities 
    Signup in broad.com 
    Install vmware fusion from broad.com 
    Install vagrant 
    Making directory 
    Create vagrantfile with the given text 
    vagrant up 
    vagrant shh . 

-------------------------------------------------------------------------

## Section 4 : Linux 

#### Contents : 

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

#### LINUX PRINCIPLES : 

        -- Everything is a file(including hardware) 
        -- Small Single purpose programs 
        -- Ability to chain programs together for complex operations 
        -- Avoid Captive User Interface 
        -- Configuration data stored in text file. 

#### WHY LINUX : 

        -- Opensource
        -- Community support 
        -- Support wide variety of Hardware 
        -- Customization 
        -- Most servers runs on linux 
        --  Automation 
        -- SEcurity

#### Popular Server Linux os :
        
        Red Hat Enterprise Linux
        Ubuntu Server
        Centos
        SUSE Enterprise Linux

#### Most used Linux ditros currently in IT industry : 
    
        RPM based : RHEL , Centos , Oracle Linux
        Debian based : Ubuntu Server , Kali Linux



***Architecture of LInux : Hardware > Kernel > shell > Users***

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

        vagrantuser > sudo -i > Root_user > cd / > Root_User_Directories > ls 

#### Commands : 
    
    ***COMMAND OPTIONS ARGUMENTS***

    whoami
    ls 
    pwd 
    mkdir 
    touch [touch{1..10}.txt]
    cat 
    cp
    cp -r dev backupdir/ [recursive copy for dierctories] 
    mv   // Also used to rename files 
    sudo -i    // switch to root user // # represents that 
    mv *.txt textdir 
    rm <filename>
    rm -r <directory_name> 
    rm -r *    // removes everything in the current directory 
    rm -rf *   // By force 

    uptime 
    free -m 

***ABSOLUTE => Absolute path alwasy begins with root directory[cd /bin]*** 

RELATIVE PATH

#### Vim Editor : 
    
     Three Modes: 
        1. Command Mode
        2. Insert Mode(Edit Mode)
        3. Extend command Mode

#### Types of files in Linux : 

    Regular file - 
    Directory    d
    Link         l
    Special file c
    Socket       s
    Pipe         p
    block file   b

#### Commands : 
    
    mkdir -p <directory_name? //creates a directory even if it is empty 

    ln -s /opt/dev/ops/devops/test/commands/txt cmds   //creates a link 

    unlink cmds   //unlink 

    ls -lt  // sort as per time stamp 
    ls -ltr // reverse 

#### Filter & IO redirection Command : 

    1. grep : 
        grep firewall anaconda-ks.cfg  // case-sensitive 
        grep -i firewall anaconda-ks.cfg 

        grep -i firewall < anaconda-ka.cfg //default 
        grep -i firewwall * //everything in the directory 
        grep -iR firewall * //even to search in sub-direcories

        grep -vi firewwall anaconda-ks.cfg //not show anything

    2. less and more 

        less anaconda-ks.cfg
        more anaconda-ks.cfg


    3. head & Tail 

        head anaconda-ks.cfg  // see no of lines in files 
        head -10 anaconds-ks.cfg  //see first 10 lines in file 

        tail anaconda-ks.cfg     // show last lines of a file
        tail -2 anaconda-ks.cfg  // show last 2 lines of a file
        ***tail -f anaconda-ks.cfg  // dynamic content***

    4. cut //only useful if we have delimiters 

        cut -d: -f1 /etc/passwd   // d is for delimiter //f1 as field one and then file path  

    5. awk //If there is no delimiter 

        aws -F':' '{print $1}' 

    6. Search & Replace : 

        sed 's/coronavirus/covid/g' *  // shows the output but does not change 

        sed -i 's/coronavirus/covid/g' *   //changes 

    7. 
        uptime > /tmp/sysinfo.txt  //if file not present them 
        uptime >> /tmp/sysinfo.txt //appends at the end of file
        df -h   //harddisk partition utilisation 
        echo "good Morning " //prints
        date > /tmp/sysinfo.txt 

        yum install vim -y > /dev/null  => no content will be displayed 

        cat /dev/null > /tmp/sysinfo.txt  => no content in sysinfor.txt 

        free -m 1>> /tmp//error.log  // standard output 
        free -m 2>> /tmp//error.log   // standard error 
        freesdsd -m &>> /tmp//error.log //both at a time 

    8. pipe : 

        wc -l /etc/passwd   //no of lines 
        ls | wc -l     // output of ls will to go next step
        ls | grep host 
        tail -20 /var/log/messages | grep -i vagrant 

    9. finding : 

        find /etc -name host* 
        updatedb // 
        locate host   // is not a default package need to install but is also stored in updatedb 

#### Users & Groups : 

    --Users & groups are used to control access to files and resources 
    -- Every user of the system is assigned a unique user ID number (the UID)
    -- User name and UID are stored in /etc/passwd 
    -- User's password is stored in /etc/shadow in encrypted form 

    1. Types of Users : 

        Root : 
            Example : root 
            User ID(ID) : 0 
            Grpup ID(GID) : 0 
            Home Dir : /root 
            Shell : /bin/bash 

        Regular : 
            Example : imran , vagrant 
            User ID : 1000 to 60000 
            Grpup ID : 1000 to 60000 
            Home Dir : /home/username 
            Shell : /bin/bash 

        Service : 
            Example : ftp , ssh , apache 
            User ID : 1 to 999 
            Group ID : 1 to 999 
            Home Dir : /var/ftp etc 
            Shell : /sbin/nologin  or /sbin/false 


#### Commands : 

    grep root /etc/passwd 


    root:x:0:0:root:/root:/bin/bash 
    root: username 
    x   : password is shadow 
    0   : UserID 
    0   : GID 
    root: comment 
    /root: working directory 
    /bin/bash : shell 

    useradd ansible    //create a user 
    id ansible 
    groupid devops     //creates a group 

    usermod -aG devops ansible            // add the user to the group , G means supplementary group , g means primary group 

    passwd ansible   // set passwd for a user 
    su -ansible     // access user as a root user but you need a passwd when to switch from user to user 

    last   // history of logged in users 
    who    // current logged in user 
    lsof -u ansible //lists all the files opened by this user 

    userdel aws   // 
    userdel -r aws // Also remotes the home directory oftheuser
    groupdel devops 

#### File Permissions 

    ls -l /bin/login 

    -rwxr-xr-x. 1 root root 69144 Aug 22 01:48 /bin/login

    root user owns this file and root owner owns this file 

    -    > file type 

    rwx > read , write , exeructe for the root user 
    r-x   > read and execute permission for the root group 
    r-x   > read and execute permission for others 

    r : Permission to read a file or list a directory's conent

    w: permission to write to a file or create and remove files from a directory 

    x: permission to execute a program or change into a directory and do a long listing of the diretory 

    -: no permission (in place of the r , w or x )

#### Change Ownership 

    chown -R ansible:devops /opt/devopsdir





---------------------------------------------------------------------------------------

## Section 5 : Vagrant & Linux Servers : 

#### Table of Content : 
    Vagrant networking 
    Provisioning 
    RAM , CPU etc
    Multivm 
    Documentation 

#### Commands : 

    vagrant destroy --force 
    ls ~/.vagrant.d/        // all the information about this vm is present here 


#### Labs : 

    




----------------------------------------------------------------------------------------

## Section 6: Variables , Json & YAML [Data Formats]

#### Table of Content :

        Variables 
        python DS(strings , Integers , List , Tuple & Dictionary ) 
        JSON 
        YAML 

----------------------------------------------------------------------------------------

## Section 7 : Vprofile Project setup : 

#### About the Project : 
        Multi tier Web Application Stack 
        Setup on Laptop/Desktop
        Baseline for Upcoming Projects


#### Labs : 
        Vm setup : clone the github.com/hkhcode/vprofile-project and switch to local branch 


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

            Applicaiton[data] => Network process to applicati
            presentation[data]=> Data Representation & Encyptio
            session[data]     => Interhost Communication 
            Transport[segments]=> End-to-End Connecti & Reliabl
            Network[packets]   => Path Determination & IP
            Datalink[frames]   => Physical Addressing(MAC &LLC)
            Physical[bits]     => Media , Signal & Binary Transmission 

#### Summary of Layers : 

    -- Application : To allow access to network resources
    -- Presentation : To translate , encrypt & Compress data 
    -- Session      : To establish , manage & terminate session 
    -- Transport    : To provide reliable process-to-process message delivery and error recovery 
    -- Network      : To move packets from source to destination ; to provide internetworking 
    -- Data link    : To organize bits info frames ; to provider hopt-to-hop deliveyry 
    -- Physical     : to transmit bits over medium to provide mechanical and electrical specification 


#### Archi 
    
    OSI Modle : Layer 1 
    DOD Moel  : network access 
    Protocols : ethernet , token ring 
    Devices/apps : hub 

    OSI Modle : Layer 2 
    DOD Moel  : network access 
    Protocols : arp(mac) , rarp 
    Devices/apps : bridge layer 2 switch 

    OSI Modle : Layer 3 
    DOD Moel  : internet 
    Protocols : ip , icmp , igmp 
    Devices/apps : router , firewall layer 3 switch 

    OSI Modle : Layer 4 
    DOD Moel  : host-to-host
    Protocols : tcp , udp 
    Devices/apps : gateway

    OSI Modle : Layer 5 , 6, 7 
    DOD Moel  : application 
    Protocols : dns , dhcp , ntp , snmp , http , https , ftp , ssh , telnet , http , pop3 etc 
    Devices/apps : web server , mail server , browser , mail clinet etc 

#### Classification of network by Geography : 

    LAN : Local Area Network 
    WAN : Wide Area Network  ex : internet 
    MAN : Metropolitan area network ex : metros 
    CAN : Campus Area network ex : campus or offices //intranet
    PAN : Personal Area network ex : bluetooth , hotspot 

    Switches : Sharing of resources by connection together all the devices , including computers , printers and servers in small business network 

***As switch connects multiple computers together , Router connects multiple network together*** 

    Routers : A router receives and sends data on computer networks. Routers are sometimes confused with network hubs , modems or network switches. However , routers can combine multiple networks together. 

***Internet >> Modem >> Router[LAN] >> Access point[switch] >> Devices*** 

***Subnet => Part of the network . Subnet for each web server***

    Ipv4 Address : 

    192.168.100.1 
        192 : 1st octet
        168 : 2nd octet
        100 : 3r octet 
        1   : 4th octet 

        total 8 + 8 + 8 + 8 = 32 bits 

    Ip range : 

        0.0.0.0 - 255.255.255.255.255 

    Public and Private IP Division 
        Public Ip => Internet 
            e.g : 54.86.23.90 
        Private IP => For local network design 
            e.g : 192.168.1.10 


    Private IP Ranges : 

        Class A : 10.0.0.0 - 10.255.255.255 
        Class B : 172.16.0.0 - 172.31.255.255 
        Class c : 192.168.0.0 - 192.168.255.255

        Class d & e are for multitasking & research 

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

Definition : 
    
    It is a container runtime environment for developing , shipping and running appplications. 


Commands : 

    docker run hello-world:latest 
    docker images 
    docker ps        => Running containers 
    docker ps -a     => All the containers 


    docker run --name web01 -d -p 9080:80ngnix // 80 is the conatiner port and 9080 is the hostport 

    docker inspect <container_name> 

    docker build -t testing .

    docker stop <container_names>

    doker rmi <coainter_id>

#### Microservices Vs Monolithic : 

    Interact with api gateway in microservices 


#### Labs : 

        -- few docker commands to create , run & delete containers 
        -- Build a docker image by cloning the docker branch from the repository and run a container 
        -- Clone the emartapp 





----------------------------------------------------------------------------------------

## Section 10 : Bash Scripting 



----------------------------------------------------------------------------------------

## Section 11 : AWS Part 1 :

Prerequsite : Create a Root account and IAM user with admin privelages [ free-tire]

***Every region has 2 zones***

#### What is Cloud Computing :

         -- Public , Private , Hybrid 
         -- IaaS , Paas , SaaS
         -- AWS REgions & Zones [ AWS Global Infrastructure]

#### What is Ec2[Elastic cloud compute]

         -- EC2 provides web services API for provisioning , managing and deprovisioning , virtual servers inside amazon cloud. 
         -- Ease in scaling UP/Down
         -- Pay only for what you use
         -- can be integrated into serveral other services

#### Ec2 Pricing :
        1. On Demand : 
                pay per hour or seconds 
        2. Reserved : 
                Reserve Capacity(1 or 3 yrs) for discounts 
        3. Spot :
                Bid your price for unused ec2 capacity 
        4. Dedicated Hosts :
                Physical Server dedicated for you 

### Ec2 Components : 
        1. AMI : Amazon Machine Image provides the information required to launch an instance. Which is virtual server in the cloud 

        2. Instance Type : When you lauch an instance , the instance type that you specify determines the hardware of the host computer used for your instance 
                e.g: M4 instance , c4 instance , f1 instance , t2 instance 

        3. Amazon Elastic Block Storage(EBs): Amazon Ec2 provides you with flexible , cost effective and easy-to-use data storage options for your instance. 

        4. Tag is a simple label consisting of a customer-defined key and an optional value that can make it easier to manage , search for , and filter resources . 

        5. A security group acts as a virtual firewall that controls the traffic for one or more instance 

        6. Amazon ec2 uses public-key cryptography to encrypt and decrypt login information 

#### Creation of Ec2 Instance : 
        Choose an AMI 
        Instance Type 
        Configure the instance 
        Adding Storage 
        Adding tags 
        Configure Security group review


***ssh -i "web-dev-key.pem" ec2-user@ec2-3-87-210-157.compute.1.amazonaws.com   >> Public DNS name***

#### Commands : 

        ss -tunlp | grep 80 

#### Security Groups : 

        A security group acts as a virtual firewall that control the traffic for one or more instances 

        You can add rules to each security group that allow traffic to or from its associated instances 

        Security groups are "stateful"

        Inbound : Traffic coming from outside on the instnace

        Outbound : Traffic goinf from instance to outside 

***Public Ipv4 address of the instance keeps changing when every you stop and start the instance buty private Ipv4 address remains same *** 

***we can allocate elastic or static ip for an instance***

***Ip allocation are for network interfaces not for instance , you can create multiple network interfaces***)

#### volumes & Network Interfaces 


#### Labs : 

        Ec2 Instance creation :  
                1. Requiremnts Gathering :
                         
                        Size => Ram , cpu , network etc 
                        Storage size(10 gigs)
                        Project 
                        Service/Apps Running (SSH , HTTP,mysql)
                        Environment(DEv , QA , Stagin , Prod)
                        Login User/Owner

                2. Key Pairs :

                3. Security Pais 
                4. Instance Launch 


#### AWS Cli : 

        1. INstalling aws 
        2. Configuring (aws configure ,access key & secret key)


#### Aws cli commands 

        aws configure 
        aws sts get-caller-identify   //Userid , Account , ARn
        aws ec2 describe-instances
        aws ~/.aws                //config & credentials in mac


#### EBS(Elastic Block Storage) :

        Block Based Storage 

        Runs ec2 OS , store data from db , file data etc 

        Placed in specific AZ . Automatically replicated within the AZ to protect from failure 

        Snapshot is backup of a volume 

#### EBs Types : 

        1. General Purpose (SSD)
                Most Work loads 
        2. Provisioned IOPS 
                Large Databases 
        3. Throughtput Optimized HD 
                Big data & Data Warehouse
        4. Cold HDD 
                File Servers 
        5. Magnetic 
                Backups & Archives 

#### Labs : 
        Creating a Volume 
                Select a volume type 
                Size 
                Availability Zone 
                key tag value 

        Attach the volume created to the instance . 

        Creating a partition so that images can be saved in seperate storage[ebs created right now]

                fdisk -l   // linux gives partitions numbers 
                df -h      // lists under which it is present

                fdisk /dev/xvdf  // followed by options for partition creation 

                mkfs 

                mkfs.ext4 /dev/xvdf1

                mount /dev/xvdf1 /var/www/html/images


        CREATE A EBS VOLUME , PARTITION , FORMAT IT , MOUNT IT

#### Ebs Snapshot : 
        Snapshot backup & restore are used for backups : 
                unmount partition 
                Detach volume 
                Create new volume from snapshot 
                Attach the volume created from snapshot 
                Mount it back 

#### ELB (Elastic Load Balancer)

        Table of Content : 
                Introduction 
                Why we need load balancers 
                How it works 
                Types of load balancers in aws 
                Demo 
                AMI & Launch Templates 

        Types of ELB : 
                1. Application LB :
                        a. Works on layer 7 
                        b. Intelligent routing based on content
                        c. Best suited for http & https traffic
                        e.g hkinfo.in/videos , hkinfo.in , hjinfo.in/registration 

                2. Network LB :
                        a. Works on layer 4 
                        b. Static IP 
                        c. Millions of request per second 

                3.Gateway LB :
                        a. works on layer 3
                        b. Gateway load balancer enable you to deploy , scale , and manage virtual applicances such as 
                        c. Firewalls 
                        d. Intrusion detection 
                        f. prevention systems 
                        g. deep packet inspect systems 

                4. Classic 
                        a. Takes request on from end port(443) and routes to the backend server port(80)
                        b. Ideal for simple solution 
                        c. Works on layer 4 


#### Labs : 



----------------------------------------------------------------------------------------


## Section 14 : Git 

#### Table of Content : 
    What is a VCS and why VCS ? 
    Centralize Vs Distributed VCS 
    What is Git?
    Git repositories 
    Versioning with Git 
    Github 
    Git concepts 
    Lots of Git Commands

#### What is Version Control System :
    About manages multiple versions of Documents , Programs , websites etc 
    Tracks History of Collection of files 
    Version Control Software keeps track of every modification to the code in a special kind of database

#### Localised VCS & Centralized VCS 
    
#### Distributed VCS 

    -- Git keeps track of files not directories
    -- cat .git/config

#### Git commands in the course : 
    git init
    git status => branch information , commits , changes 
    git add . 
    git commit -m "commit message"
    git config --global user.email "you@example.com"
    git config --global user.name "Your name"
    git log  [git log --oneline] 
    git show 
    git diff  => for unstaged changes
    git diff --cached => for staged 
    git diff commitid1..commitid2

    git clone URL 
    git remote add origin ssh://git@github.com/[username]/[reporitory-name].git
    git push 
    git pull(to fetch latest changes)

    git branch -M main 
    git push -u origin main 
    git push --all origin 

    git branch -c sprint1
    git branch -a 
    git checkout sprint1
    git switch main 
    git merge sprint1

#### Git rollback Commands : 
    git checkout <filename>           // For tracked changes
    git restore --staged <filename>   // For staged changes
    git revert HEAD   => After roolback new commit is created. 
    git reset --hard <commitid>  => history is not stored.

    Always use git diff command to check before rollbacking. 

#### Semantic Version : 
     3.1.4 
     3 => Patch[Bug Fixes]
     2 => Minor[New Features and Improvements]
     4 => Major[Major changes , Backward incompatible]

     Tag a Commit : 
        Git tag TagName commit
        git show tag

     Annotated Tags:
        git tag -a TagName -m"message" [commit]
        git tag -a v2.1.6 -m"Release for something"

     Push Tags : 
        git push origin tag TagName 
        git push --tags

        git tag 
        git show v2.0.0
        git tag -a v3.5.3 -m "Release 3.5.3"

        //After this Release is an option
#### Fast-Forward and Merge Commits : 

    Fast-Forward Merge: When the target branch's tip is behind the source branch, Git simply moves the target branch forward.
    Merge Commit: A new commit that combines the histories of merged branches, used when branches have diverged.

#### Git login commands :
    
        gh auth login 
        alias
        api
        attestation
        auth
        browse
        cache
        co
        codespace
        completion
        config
        extension
        gist
        gpg-key
        issue
        label
        org
        pr
        project
        release
        repo
        ruleset
        run
        search
        secret
        ssh-key
        status
        variable
        workflow

#### Git Things : 

Commands I know until now : 

    git init
    git add . 
    git commit -m "commit"
    git push --all
    git checkout <branch_name>
    git checkout -b <branch_name>
    git stash 
    git stash apply
    git pull 
    git fetch 

Create a new branch which is empty:

    git checkout --orphan <branch_name>
    git rm -rf . 
    git commit --allow-empty -m "Initial commit on empty branch"
    git push -u origin <branch_name>

Delete a branch locally : 

    git checkout main 
    git branch -d <branch_name>


Delete a remote branch : 
    
    git push origin --delete <branch_name>
    git push origin :<branch_name>

#### Git ssh login : 

    rm -rf .ssh/*    // Remove any ssh keys 
    ssh-keygen.exe   // generate public and private keys 
    ls .ssh          // id_rsa , id_rsa.pub
    cat .ssh/id_rsa.pub  // copy the public key 

    Go to SSH & GPG keys settings create new ssh key and paste the public key we copied. 
 
---------------------------------------------------------------------------------

## Section 15 :Maven 

#### Table of Contenet : 

    Build Process 
    Build Tools 
    What is Maven 
    Maven Phases 
    Maven Installation 
    pom.xml file 
    maven Commands 

#### LAB : 
    clone the vprofile project [main branch] which pom.xml file by installing , jdk 11 or jdk 8 with maven and build the java project. 

#### Build Process : 

        Soruce Code[Java , .net etc]
        Compile [javac , Roslyc etc]
        Test [Unit/Integration Test ]
        Package [jar , war , .exe , msi , .zip etc]
        Health checks [Code Analysis , FindBugs]

#### Build Tools => Automate Build Process 
        Maven 
            Java.
            Build file: XML Format 
        Ant 
            Java 
            Build file : XML Format 
        MsBuild 
            The Microsoft Build Engine is a platform for building applications
        Gradle 
            DSL based on Groovy 
        & NANT 
            Windows .net platform 
        Make 
            builds executable programs and libraries from source code 

#### Maven Phases : 

        Validate => Validate the project is correct and all necessary information is availabe 


        Compile  => Compile the source code of the project 


        Test     => Test the Compiled source code using a suitable unit testing framework . These tests should not require the code be packaged or deployed 


        Package  => Take the compiled code and package it in its distributable format , such as JAR . 


        n-test   


        Verify   => Run any checks on resutls of integration tests to ensure quality criteria are met 


        Install  => Install the package into the lcoal repository , for use as a dependency in other projects locally 


        deploy  => done in the build environment , copies the final package to the remote repository for sharing with other developers and projects .

#### Commands : 

        1. Need jdk 11 or jdk 8 in aws ubuntu ec2 instance 
        2. Install maven 
        3. Clone the repoisiroty 

        mvn --version 

        mvn validate 

        mvn     // cleans all the target folder 

        mvn install 

        mvn clean install   // builds the artifact 

        rm -rf /home/ubuntu/.m2/repository/* // removing the dependency 


        pom.xml is important . 


------------------------------------------------------------


first section : Devops theoritical prerequsites 

second section : Prerequsite setu with , Aws root and IAM section and buying and configuring a domain with ACM from aws for dns . 

Third Section : Virtulization with vm setup and virtulizaion automation with vagrant and virtualbox 

Fourth Section : Practised linux inside centos virtual machine

Fifth Section : Vagrant & Linux Server  | Bringing up centos , ubuntu vm up using vagrantfile & multi-vm building for further projects using vagrantfile || building a finance & wordpress website using vagrantfile and shell scripting to setup services. 

Sixth Section : Variable , JSON & YAML 

seventh section : v-profile setup manually with mysql , memcache , rabbitmq and ngnix & autoamting it with .sh and vagrantfile  

eighth section : networking , right from osi layes , network & IP with protocols , ports and few network trouble shooting commands . 

ninth section : docker basics with vpforile setup and build it's image and containerize it . 

        Here microservice topic was introduced in the vm. using docker-compose.yml file for building all the service we want in the ports that we want 
        repository: https://github.com/hkhcoder/vprofile-project  with docker as teh brach. 


Things in the labs pending are we are just cloning the repository blindly with performing the commands that he is giving. problem is that he is adding the frontend & backend code , ansible [configuration management] , vagrant file on m1m2 chips , for building the artifact he is using jenkins with maven by writing pom.xml file. 

>> Ansible 
>> Dockerfile 
>> Jenkins 
>> docker-compose.yml writing 
>> mvn building with pom.xml 














