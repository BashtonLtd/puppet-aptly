# puppeet-aptly

####Table of Contents
1. [Requirements](#requirements)
2. [Usage](#usage)

## Requirements
* puppetlabs/apt

## Usage
### aptly
It only install upstream aptly repo into apt/sources.lists.d/ and install aptly
it self.
`include aptly`

### aptly::conf
Configures aptly by creating /etc/aptly.conf file.
```
  class {'aptly::conf':
    rootdir       => '/mnt/aptly',
    architectures => ['i386','amd64']
  }
```
Parameters:

  rootdir - where all aptly created repo data is going to be storred

  architectures - what architectures aptly should support, default is amd64
    but there can be more, all which are supported by distro kernel
