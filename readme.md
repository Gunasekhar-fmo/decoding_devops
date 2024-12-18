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


#### Vagrant sync directories : 
        
    Used to sync directories betweeen our windows or host system to the virtual machine 

    vm.sync_folders = "F:folder/scripts" "/opt/dir"


### Provisioning :      

        Provisioning is setting up or executing few things at the end of the vagrantfile. This will help us in setting up things before head 

        only the first time when a vm is created the command are going to run but if a vm is already provisioned then it is going to display it is already being provisioned 

        But even after though you want to provision it forcefully 

        vagrant provision (or)  vagrant --provision 

    
#### Multi-vm : 
        Define the web apps or the databses you want to run in the vagrantfile and then you just neeed to vagrant up <nameoftheservice> you wan to up . It will automatically provision those vms 


#### Systemctl & Tomcat : 




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

        Class A : 10.0.0.0 - 10.255. 255.255 
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

        #!/bin/bash   => tells the path of the interpretive

#### Variables 
#### Command Line Arguments
#### System Variables 
#### Quotes 
#### Command Substitution 
#### Exporting Variables [For permamanet use]

        Season="Monsoon" 
        echo $Season 

        echo "This $Season is very cold"   //inside a script //will not print 

        export Season // we are exporting the variable so that it becomes permanent 

        but when we logout of the user and log in back the variable will be gone . for keeping things permanent 

        export season in .bashrc file and type source bashrc . then it will become permanent 

        If you want to make permanent for every user then edit 
        /etc/profile file
#### User input 
#### Decision making [ if] & [if elif else]


#### Script For monitoring:
        Cronjobs 

                crontab -e  // will open file in vim editor
                Give 

#### Loops : 

#### Remote command execution : 



#### Commands : 
        vi /etc/hostname 
        hostname scriptbox // change the script name 
        uptime 
        free -m 
        df -h 
        chmod +x firstscript.sh  //for making the file executable


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

***Ip allocation are for network interfaces not for instance , you can create multiple network interfaces***

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

                3. Gateway LB :
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

        Create load balancer for our ec2 instance :
                a . While creating the ec2 isntance in the advanced user data section . paste the script from the resource secton in elb hands on section . 

                b. instance > Actions > Image and templates > Create image > Give name for ami 

                c. Copy AMI > AMI copy Name  > Select Region [ optional ]

                d. create 3 instaces and need to be accessed from a single endpoint and that endpoint should route the request to either of the instances 


***From a snapshot , you can create a volume , but from an AMI , you can create an instance.*** 

***We can make this AMI public , then it will be available in the community AMI Section***

***Ec2 Image Builder - Automates image creation and management***

***EC2 launch templates : template-name > template verison description > Application & OS images[recents, my AMIs] > Instance type > Key pair > Security groups > storage[optional]>
resource tag **
*

***Target group can check the health of the instance and if the instance is unhealthy , it will not route the request to the instance*** 

***Target group is basically a group of instances. Target group name > port number 80 > protocol HTTP > health check path [/ default ] > Port - Traffic port > Healthy threshold > unhealthy threshold > Timeout > Interval > Success codes > Register targets[select the ec2 instances]***
        
        Load Balancer creation : 
                1. click on load balancer and we will go with application load balancer for http , https traffic . 

                2. Load_balancer_name = health-elb , 

                   scheme as internet-facing 

                   Network maps - select atleast 2 zones[To 
                   ensure high availability at the load balancer level] 

                   Security groups > create a new security group [health-elb-sg]

                   Inbound rule [80 -anywhere , 80-ipv6 anywhere] Ipv6 because nowdays many internet service providers are giving ipv6 especially 

                   Listeners and routing - Http port 80 - This is listener if someone accesses on port 80 , it should route the request on this target group [health-tg] => backend 

                   Create load > it will be provisioned state > Active state 

                   Copy the DNS name and paste > 500 errors in http [Server error] . Here in the security group of the instance we need to add 80 port with the security group of load balancer. > We can even verify in the target groups if the instance is healthy or unhealthy

#### Cloud watch : 

        - Monitor performance of AWS environment - standard infrstructure metrics. 

        Metrics : AWS cloud watch allows , you to record metrics for services such as EBS , EC2 , ELB , Route 53 Health checks , RDS , Amazon S3 , Cloudfront etc 

        Events : AWs Events delivers a near real-time stream of system events that describe changes in Aws resources . [Launching , creation , snapshot etc]

***We can set triggers from the events generated like lambda functions***

***Cloud watch will add the moniring logs every 5 minutes*** 

        Logs : You can use aws cloudwatch logs to monitor , storea and access your log files from ec2 , aws cloudtrail , Route53 and other sources. 

        Metrics : 
                Alarm monitors cloudwatch metrics for instances

                Simple Notification SErvice(Amazon SNS) is a web service that coordinates and manages the delivery or sending of messages or subscribing endpoints or clients. 



#### LABs : 

        Go to the ec2 > monitoring > will see disk utilization , cpu utilization , network in , network out , etc 

        Go to the volumes > monitoring > Read bandwidth , Write Bandwidth , Read Throughtpot , writetroughput etc 

        AWS SErvices : Ec2 , aws cloudwatch , SNS 

***By default monitoring will be for every 5 minutes , if we need to every minute  then we need to activate detailed monitoring***

***stress package is a tool used to stress the cpu and other metrics in you computer***

        Optional [Not free]: This exercise is manily for checking if the monitoring section of the instance will increase or not

                1. Enable Detailed Monitoring : 
                        a . create 
                        b. ssh into the machine 
                        c. install stress 
                                sudo amazon-linux-extras install epel -y 
                                sudo yum install stress y 
                        d. nohub stress -c 4 -t 300 & [run in background with 4 cpu cores for 300 seconds]

                        e. top  

        Creating an alaram : 
                1. Go to cloudwatch 
                2. Go to alarm & create a alarm 
                3. specify metric and conditions > per-instance metrics > select instance > select the cpu utlization time like 50 or 60 then create an alarm 
                4. if greater than > create a topic , if already there no need . topic name , email . create topic 
                5. There is also ec2 options where if the cpu utlization is way more then you can ask it to reboot or stop or terminate the instance 
                6. Name & DEscription 

***YOu can create 10 alarms in free-tire after that it costs money***

#### EFS [Elastic file system] :

***Similar to mounting a ebs volume . but ebs is only for one instance at a time. Efs you can mount for multiple instances***

        
#### Labs : 
        
        Storing the images inside an instance inot efs : 
                1. create a security group 
                2. Inbound rules : 
                        NFS > will allow traffic from web server > description

                3. Go to efs >  name > in network change the traffic to the efs security groups in all the availability zones. 

                4. Click on access points > create access point > select file system > create access system 

***There are two ways of accessing the efs through IAM and access point*** 

                5. Mounting efs file system > install amazon-efs-utils >    

                        file-syste-id efs-mount-point efs _netdev, tls , accesspoint=access-point-id 0 0 

                6. vi /etc/fstab   > paste the above things by changing the file-system id and access point 

                        fs-47a7ccb2 /var/www/html/img efs _netdev , tls , accesspoint=fsap-03f6334520365d2d7 0 0 

                7. mount -fav 

                        error : 
                                Check the security group of your efs , whether it's allowing access from your web server 

                                check whether you are doing it in the correct directory 

                                check the typographical error for your filesystem with your access point . 

                8. df -h // check if mounted. And any data you put in this directory is going to my EFS filesystem . 


                9. create an AMI of this for future uses . 

#### Autoscaling : 
        
        Auto scaling is a service that automatically monitors and adjusts compute resources to maintain performance for application hosted in the aws 

        It increases o nthe basis of alarm monitors cloudwatch metrics for instance . 

        A launch configuration/Template is an instance configuration template that an Auto scaling group uses to launch Ec2 instances . 

        Scaling policy is used to increase and decrease the number of running instances in the group dynamically to meet changing conditions. 


        Autoscaling group > minimun size > Desired capacity > scale out as needed > maximun size 

        Autoscalinggroup[instance , application-tier] > Alarm > Scaling policy > instance 

#### Labs : 
        
        1. Target group [empty]
        2. application load balancer for the target group created above , security group of load balancer. 
        3. create auto-scaling group 

        4. select all the zones 
        5. attach the existing load balancer , select the target group , Health check 

#### S3 [Simple Storage Service] :

        s3 is storage for internet . you can use amazon s3 to store and retriever any amount of dat at any time, from anywhere on the web 

        It is object-based storage 

        data is replicated across multiple facilities 

        unlimited storage 

        s3 stores data as objects withint buckets 

        Bucket name has to be unique 

         A bucket is a logical unit of storage in aws 

         Object storage is a computer data storage architecture that manages data as objects. 


***Amazon s3 > Bucket > Folder > Object > Pubilc Access***

***we can access s3 programmatically through multiple instances which is different from efs which we mount in os level . we can achieve the same through s3 Fs *** 

        s3 Storage Classes : 

                1. s3 standard : General purpose storage of frequently accessed data . Fast access & object replication in multi AZ 

                2. s3 IA - infrequent Access : Long-lived , but less frequently accessed data. Slow access , object replication in multi AZ 

                3. s3 one Zone-IA : is for dat that is accessed less frequently , but requires rapid access when needed. Slow access  no object replication. 

                4. s3 intelligent tiering : Automatiically moves data to most cost effective tier. 

                5. S3 Glacier : Low cost sotrage class for data archiving 

                6. S3 Glacier Deep Archive : Lowest cost storage , retrieval time of 12 Hrs. 

        Life cycle policies : 

                Amazon s3 standsard > 30 days > amazon s3 infrequent Access > 30 days > Any one of the availability zones 


        S3 charges : 

                Storage 
                Request
                Tiers 
                Data Transfer
                Region Replication 

#### Labs : 
        1. select s3 , General purpose , bucket_name 
        2. ACL disabled 
        3. Bucker versionin [ backup if deleted to older version ]
        4. Encryption [sss-s3]
        5. uploaded files 

***By default what every objecct you have in bucker is private*** 

        To make is public > ACLs enable > unblock public access(bucket settings) 

        S3 WEb Hosting : 

                2 buckets one for files , kone for server logs 

                versioning explained 

                s3 web hosting enabled . 

                enabling ACLs and unblocking public access 


#### Subnets : 

        







----------------------------------------------------------------------------------------

## Section 12 : AWS Cloud for Project Set up | Lift & Shift :

        TAble of content : 
                Multi tier web aplication stack[Vprofile]
                Host & Run on AWS Cloud for Production 
                Lift & Shift Strategy 

        Scenario :      
                Application SErvices runnin on physical/Virtual machines

                Work load in you datacenter

                Virtulization team , Dc Ops team , monitoring team and sys admin etc involved 

                Complex management 

                scale up/down complexity 

                upfron capex & Regular Opex 

                Manual process 

                Difficult to automate 
                
                Time consuming 

        Solution : 

                Cloud Setup : 

                        Pay as you go 
                        IAAS 
                        Flexibility 
                        ease in infram management 
                        Automation 

        AWS Services 

                EC2 Instances : Vm for Tomacat , rabbitmq , memecache , mysql 

                ELB   : ngnix lb replacement 

                Autoscaling : Automation for vm scaling 

                S3/EFS Storage : Shared storage 

                Route 53  : Private DNS service 


        Architecture : 

                1. Users will access our website by using a URL and that url we be pointing are told , will be pointing to an end point 

                2. This entry will be mentioned by go daddy domain [DNS zones] ==> URL = ELB endpoint

                3. User Browsers or the app will use this end point then to connect to the load balancer , by using https 

                4. Certificate for https encryption will be mentioned in ACM

                5. Our load balancer will be in a security group and will only allow https traffic and then our application load balancer , will route the request to tomcat instances 

                6. Apache tomcat service , will be running on some set of instance which will be managed by our auto scaling group 

                7. So as for high or low load , these instance capacity will be scaled our or scaled in 

                8. These ec2 instances where Tomcat is runnin , will be in a separate security group and will only traffic on port 8080 only from a load balancer. 

                9. Vprofile projects sits on the tomcat server

                10. Information of backend services or the backend server IP address will be mentioned in Route 53 private DNA Zone 

                11 . So Tomcat instances will access back server with a name which will be mentioned in Route 53. Private dns where the private IP address of our background servers will be mentioned . 

                12 . These backend ec2 instacnes , which will be runnin mysql , RabbitMQ memcache will be in seperate ssecurity group 

                13 . There amazon s3 bucker to store our software artifact 


        Flow of Execution : 

                1. Login to aws account 
                2. Create Key pairs 
                3. Create SEcutiy groups 
                4. Lacuh instances with user data[bash scripts]
                5. Updte IP to name mapping in route 53 
                6. Build application from source code 
                7. Upload to s3 bucket 
                8. Download artifact to Tomcat Ec2 Instance 
                9. Setup ELB with HTTPS[Cert from ACM]
                10. Map ELB Endpoint to webstie name in Godaddy DNS 
                11 .Verify 
                12. Build Autoscaling Group for Tomcat 

#### Security Groups & Keypais 

        Requirements : Total 3 security groups 
                1. One for load balancer applicaiton load balancer which will listen from the internet traffic 
                        Rules : Http & Https [443 allow from anywhere]
                2. Second will be for the application or tomcat instances . tomcat service listens on port 8080. 
                        Rules : port 8080 allowed from the load balancer security group 
                                port 22 from our IP so we can SSH to these instances. 


                3. V-profile applicaiton living in the tomcat instance will connect to the back-end services 
                        a. one is mysql port number 3306
                        b. memcache port number 11211 
                        c. RabbitMQ on port 5672



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

## Section 16 : Continuous Integration with Jenkins :

#### What is Continuous Integration : 

        code > build > test > push => Merged but not integrated . 

        Build code from vcs after every commit => CI 

        Process : Developers > vcs > Fetch > Build > TEst > notify > developers 

        JENKINS FEATURES : 

                        Open Source 
                        Extensibile : 
                                Plugins[VCS Plugin , Build Plugin , Cloud Plugin , TEsting plugin etc]

#### Lab1 - Installation of jenkins on an ec2 ubuntu os : 

        1. Creating a ubuntu ec2 t2.small instance instead of t2.micro as it consumes so much ram for bunning mavne builds . [22 , My IP , 8080(custom TCp) ]

        2. Ram - not the os requirement but the Jenkins requirement. why consider only Ubuntu - Ubuntu os stays on up to date with latest updates and Jenkins has lots of plugins that can be installed. so Ubuntu is more compatible

        t2.micro is not sufficient as when running Jenkins jobs and Jenkins build it will crash so t2.small is recommended

        In the security groups we need to have 22 and 8080 ports for ssh login and Jenkins runs of 8080


        3. ssh into the vm using keypair values , install jdk

        4. switch to root user. install jdk first before installation Jenkins as Jenkins installs the random version that is there in binaries which we do not need . So install jdk 21

        5. systemctl status jenkins

        6. Jenkins home directory - ls /var/lib/jenkins

        7. config.xml => jenkins configuration file 

        8. when we run jenkins build you will see workspace that will hold data like the artifacts. => If you want to take a backup of jenkins , or you want to move jenkins from one place to another place , you can shut down the jenkins server and archieve the jenkins folder and start the jenkins server and first you need to install jenkins on the other side . 

        9. 





------------------------------------------------------------

## Sectin 17 : Python : 



------------------------------------------------------------

## Section 18 : Ansible 

------------------------------------------------------------

## Section 19 : AWS Part-2 

#### VPC Introduction : 
        1. VPC is a logical data center within an AWS Region 
        2. Virtual private cloud is an on-demaind configurable pool of shared computing 
           resources allocated within a public cloud environment
        3. Control over network environment , selected IP address range , subnets and configure route tables and Gateways

#### IPv4 address , IPv4 range 
#### Public[internet] and private IP[Forlocalnetworkdesign] Division , Private Ip Ranges
#### Subnet Masks : 
        An ip address is the address of that network interface. 
        Subnetmask will decide on the network that an Ip address range starts at what IP , ends at what IP ,
        How many IP's you get for that range, what will be the network address , what will be the broadcase address? 
        1. 255.0.0.0 
        2. 255.255.0.0
        3. 255.255.255.0

        192.168.0.174 , 255.255.255.0 . the first IP is my computers ip given by router -> DHCP 

        192.168.0.0 , 255.255.255.0 DHCP is given this range . it's going to altert IP address from the range


        192.168.0 - [Street address]This is the network address , 0  [House address]is the host range , So you can allocate IP's from this range

        192.168.0.0 => Network IP 
        192.168.0.255 => Broadcast 
        192.168.0.1 => First usable IP
        192.168.0.254 => last usable IP

        Total IP => 256
        Total usable IP => 254

        Class B Ip : 

        172.16.12.36
        255.255.0.0 

        172.16
        12.36

        172.16.0.0    => Network reserved 
        172.16.0.1 
        .
        .
        172.16.0.255
        172.16.1.0 
        172.16.1.0 
        172.16.2.0
        .
        .
        .
        172.16.2.255
        172.16.3.0
        .
        .
        172.16.255.154
        172.16.255.255 => Borad cast 


        Total IP => 256*256

        Class c : 

        10.23.12.56
        255.0.0.0 

        10.
        23.12.56

        10.0.0.0
        10.0.0.1
        .
        .
        .
        10.255.255.254
        10.255.255.255

        Total IP=> 256*256*256 

#### CIDR [Class less interdomain routing]

        255.0.0.0   => subnet mask 
        11111111.00000000.00000000.00000000
        /8  => cidr notation 

        255.255.0.0 
        11111111.11111111.00000000.00000000
        /16

        255.255.255.0 
        11111111.11111111.11111111.00000000
        /24 


        Network Range 
        172.20.0.0/16

        subnets 172.20.0.0/24
        172.20.1.0/21
        172.20.2.0/24
        172.20.3.0/24
        172.20.4.0/24


#### VPC Design & Components : 

        Types of subnets : 
                1. public subnet => it can go to the internet
                        ex: ssh into the ec2 instance 
                2. privae subnet => Not accessbile by the public . only runs the private services like databases , app servers. If you want to update packages inside this . it needs to connect VPC NAT gateway in teh public subnet. 

        Internet Gateway allows you a connection with your public subnet 

        A laptop has a private ip but the router of ours assigns a public ip for external communication. 


        NETWORK ADDRESS TRANSALTION(NAT) : Gateway to enable instances in a private subnet to connect to the internet or other AWS services. 

        Internet Gateway : It is a horizontally scaled , redundant and highly available VPC component that allows communication between instances in your VPC and internet

        HOW DOES AN EC2 INSTANCE WHICH IS IN A SUBNET KNOWS THAT IT HAS TO GO TO THE INTERNET GATEWAY OR IT HAS TO GO TO THE NAR GATEWAY . 

        Route TAble : 
                A route table will be attached to the subnet . that will tell 

        Gateway are routes , But the internet gateway is direct to and fro internet connection . NAT gateway is for only traffic that goes to traffic . 

        If you want to connect to the private subnet directly from your home or office or organization , then you can have a NAT gateway , When you dial the VPN , then you can connect to your instances with their private IPs from your own network . 

        You can also connect to your private subnet using bastion host or jump server. Instances in pubic subnet can connect to instances in private subnet . 


        HIGH AVAILABILITY VPC : 
                1. when you create a subnet , you assign it to a ZONE , we have minimum two zones in a region 


        AWS ONLY CHANRGES FOR NAT GATEWAY AND NOTHING ELSE. 

#### VPC SETUP DETAILS : 
        
        Region : us-west-1
        VPC Range 172.0.0.0/16  = more than 65k ip address 
        4 subnets : 2 pub sub nets , 2 private subnets 
        2 Zones , us-west-1a , us-west-1b 
        172.20.1.0/24  => pub subnet 1  [us-west-1a]
        172.20.2.0/24  => pub subnet  2 [us-west-1b]
        172.20.3.0/24  => private subnet 3 [us-west-1a]
        172.20.4.0/24  => private subnet 4 [us-west-1b]

        1 Internet GW
        1 NAT Gateway 
        1  Elastic Ip
        2 Route TAbles : 1 pub sub RT , 2 Pub sub RT 
        1 Bastion host in Pub subnet

        NACL => security group is for instance , nacl is for subnets . 
        1 More VPC => VPC peering 

        IN nacl you have allow and deny rule , but in security grou pyou just have allow rule 

#### DEFault VPC

        us-west ==> region is that it has two availability zones . 

        There is already a default vpc , change the name to default vpc and the subnet to default pubsub 1 and pubsub2

        Aws will reserver five IP addressses per subnet 

        How to identify a subnet is private or public : 




        Traffic going to internet gateway => public subnet 
        trffic going to NAT gateway => private subnet 

#### Creating VPC : 

        1. create vpc > Name > Ipv4 CIDR block[172.20.0.0/16] > 



------------------------------------------------------------

## Section 20 : AWS CI/CD Project 

------------------------------------------------------------
## Section 21 : Docker 

        We Isolate our services : 
                1. To host our apps we need infrastructure
                2. We Use Vm's/Cloud computing to setup infra 
                3. We Isolate our service in OS of Vm
                4. Because of isolation we end up setting up multiple VM's/INstances
                5. Vm's instances will be overprovisioned
                6. Result in High Capex and Opex

        Vm's are expensive : 
                1. Every Vm has OS
                2. OS needs nurturing 
                3. OS Needs Licensing
                4. OS takes time to boot
                5. Vm's are portable but Bulky
                6. Vm needs REsources for its os 
                7. all this to isolate services

        Point to be noted. 
                1. Isolation services are IMP(Need OS)
                2. High availability achived by multiple instances/vm's
                3. Portability matters or eases the deployment
                4. All this raises capex and opex

        Isolation without OS[Imagine multiple services running in same os but isolated]

        containers[Process running in a Directory]
                1. A process[Isolated]
                2. A directory[Namespace, cgroup]
                3. Necessary bin/lib in the Directory
                4. A directory with IP address to connect

        Conatiner : 
                1. Containers share the machine's OS system kernel and therefor do not require an OS per application 
                2. A container is a standard unit of software that packages up codes , dependencies


        Vm vs Container :
                Containerized application : 
                        Infrastructure>HOst os > Docker> AppA, AppB,Appc
                Virtuliased application : 
                        Infrastructure>Hypervisor>guestos , guestos ,guestos > APPA , APPB, APPC> Vm , vm , vm 

        VM vs Container :
                1. Containers offer isolation not virtulization
                2. Containers are OS Virtualization
                3. Vm's are Hardware virtualization
                4. Vm needs OS
                5. Containers don't need OS
                6. Containers used HOst OS for compute resources.

DOCKER : One of the container run-time environment 

***You can run a container without docker but then you have to create the whole directory, dhte dependencies c group , namespace etc***

        DOCKER history : 

                1. Formerly knows as DotCloud
                2. Into PAAS Business
                3. Used LXC(Linux Containers)
                4. save capex by using containers instead of vm's 
                5. Developed Tools to manage containers
                6. Business failed
                7. Made their tools opensource projects knows as docker
                8. Got Funding 
                9. change the name to Docker incorporation

        So What's Docker?
                1. Docker INc
                2. Docker Engine
                3. Docker project(Open Source)

        Docker Enginer
                1. It is a daemon , a service running in the operating system
                2. server[dockerdaemon] > REST API > Cline docker CLI - Manages network , data volumes , container , image

#### Docker setup : 

        Only root use can communicate with docker daemon . If you want the normal user to communicate with docker then add the user to the docker group 

        sudo vim/etc/group
        docker:x:999:ubuntu or sudo usermod -aG docker ubuntu
        id uubntu

        docker un hello-wrold
        docker images 
        docker ps    => Running containers 
        docker ps -a 

#### Docker commands & concepts : 

        Docker Image : 
                1. A stopped container like vm image 
                2. Consist of multiple layers[all are read-only expect the last one]
                3. An app will be bundled in an image
                4. Containers runs from images
                5. Images are called as Repositories in Registries. 

        Docker Registries : 
                1. Storage for Docker Images
                2. Dockerhub is default registry 
                3. Cloud based Registries : 
                        a. Dockerhub
                        b. GCR 
                        c. Amazon ECR 
                4. Inhouse or Local Registries : 
                        a. Nexus 3 
                        b. Jfrong Artifactory 
                        c. DTR(Docker trusted REgistry)

***Containers Runs from Images*** 

        Container is just a thin read write layer 
        To create a container just run docker run

#### Commands : 

        docker images       => List images locally 
        docker run          => Command creates a new container
        docker ps           => List running container
        docker ps -a        => List all the containers
        docker exec         => executes cmds on containers 
        docker start/stop/restart/rm 
        docker rmi          => Remove docker images
        docker inspace      => Detail of container & Image 
        docker pull 

        docker run --name myweb -d ngnix
        docker run --name myweb -p 7090:80 -d ngnix

        This is called as port forwarding or port mapping 


------------------------------------------------------------

## Section 22 : Containerization 

------------------------------------------------------------

## Section 23 : Kubernates 

------------------------------------------------------------

## Section 24 : App Deployment on Kubernetes Cluster 

------------------------------------------------------------

## Section 25 : Terraform Tutorial 

#### Introduction : 

        It is a Infrastructure as code tool >
        Terraform maintains the state of the infrastructure

#### Basics of Terraform : 
        Installation of terraform bases on os 
        finding AMI id is important 
        terraform extension in vscode for formatting 
        .tf is the extension for terraform file



------------------------------------------------------------

## Section 26 : GitOps Project 

------------------------------------------------------------
## Section 27 : CICD for Docker kubernates Using Jenkins 

------------------------------------------------------------
## Section 28 : CloudFormation Tutorial 

------------------------------------------------------------

## Section 29 : Conclusion :
        
#### What Next : 
                Practice Projects in the course once again or 20 Devops Project s
                While practicing write stories of your tasks 

#### What More : 
        
                Specilation : 

                        Cloud Computining & Automation : 
                                Aws , Google , Azure etc 
                                e.g : Associate Architect 
                                      System ops
                                      Devops 

                        Pure Automation : 
                                Ansible , CI/CD , python etc 
                                e.g : Ansible certification 

                        Conainerization :       
                                Docker , Kubernetes , Swarm , Openshift etc 

#### My Recommendation : 
                Python Programming 
                K8s Certification 
                Helm 
                Cloud Certification 
                Terraform 
                Security for DevSecOps
                




------------------------------------------------------------


first section : Devops theoritical prerequsites 

second section : Prerequsite setup with , Aws root and IAM section and buying and configuring a domain with ACM from aws for dns . 

Third Section : Virtulization with vm setup and virtulizaion automation with vagrant and virtualbox 

Fourth Section : Practised linux inside centos virtual machine

Fifth Section : Vagrant & Linux Server  | Bringing up centos , ubuntu vm up using vagrantfile & multi-vm building for further projects using vagrantfile || building a finance & wordpress website using vagrantfile and shell scripting to setup services. 

Sixth Section : Variable , JSON & YAML 

seventh section : v-profile setup manually with mysql , memcache , rabbitmq and ngnix & autoamting it with .sh and vagrantfile  

eighth section : networking , right from osi layes , network & IP with protocols , ports and few network trouble shooting commands . 

ninth section : docker basics with vpforile setup and build it's image and containerize it . 

        Here microservice topic was introduced in the vm. using docker-compose.yml file for building all the service we want in the ports that we want 
        repository: https://github.com/hkhcoder/vprofile-project  with docker as teh brach. 

fourteen section : Git with practical labs. 

fifteeen section : Maven part ; 


Things in the labs pending are we are just cloning the repository blindly with performing the commands that he is giving. problem is that he is adding the frontend & backend code , ansible [configuration management] , vagrant file on m1m2 chips , for building the artifact he is using jenkins with maven by writing pom.xml file. 

>> Ansible 
>> Dockerfile 
>> Jenkins 
>> docker-compose.yml writing 
>> mvn building with pom.xml 




