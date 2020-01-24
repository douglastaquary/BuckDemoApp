# Config Buck on Mac

## Install Apache Ant

#### Download
https://ant.apache.org/bindownload.cgi

#### Unzip
```cd Downloads
tar -xvf apache-ant-1.9.6-bin.tar
```

#### Move Ant
```
sudo cp -rf apache-ant-1.9.14  /usr/local/ant
```

#### Edit Bash
```
nano ~/.bash_profile or nano ~/.zshrc
```

#### Apache Ant
```
export ANT_HOME=/usr/local/ant
```
#### Export to PATH
```
export PATH=$PATH:$ANT_HOME/bin
```

#### Verify Ant
```
ant -v
```

## Install Buck
```
git clone https://github.com/facebook/buck.git
cd buck
ant
```
#### Verify Ant
```
./bin/buck build --show-output buck
buck-out/gen/programs/buck.pex --help
```

### Move Buck
```
sudo cp -rf buck /usr/local/buck
```

#### Edit Bash
```
nano ~/.bash_profile or nano ~/.zshrc
```

#### Buck path
```
export BUCK_HOME=/usr/local/buck
```

#### Export to PATH
```
export PATH=$PATH:$BUCK_HOME/bin
```
#### Build App
```
buck build //BuckDemoApp:BuckDemoApp
```
# Install App

```
buck install --run //BuckDemoApp:BuckDemoApp
```