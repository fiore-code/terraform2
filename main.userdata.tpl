sudo apt update
sudo apt install openjdk-8-jre
sudo update-alternatives --config java
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get -y install jenkins
sudo systemctl start jenkins
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt install curl
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt update
sudo apt install terraform