# Technical test Developer Back-end

## 1. Scope

This repository includes the technical test for the Globalwork company

## 2. Requirements:

1.  Ruby 3.1.2
2.  puma
3.  rspec-rails

## 3. How to install

Below you can find the instructions to install 

Install in a Unix based OS (Ubuntu 22.04)
1. First, you’ll need to install or update GPG ([GNU Privacy Guard](https://www.gnupg.org/)) to the most recent version in order to contact a public key server and request a key associated with the given ID:  
`sudo apt update`  
`sudo apt install gnupg2`  

2. Next, you’ll request the RVM project’s public key to verify the legitimacy of your download:  
`gpg2 --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB`  

3. Next, you’ll request the RVM project’s public key to verify the legitimacy of your download:  
`gpg2 --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB`  

4. You’ll use the  `curl`  command to download the RVM installation script from the project’s website:
`\curl -sSL https://get.rvm.io -o rvm.sh`  

5. The backslash that leads the command ensures that we are using the regular  `curl`  command and not any altered, aliased version. The  `-s`  flag indicates that the utility should operate in silent mode along with the  `-S`  flag to still allow  `curl`  to output errors if it fails. The  `-L`  flag tells the utility to follow redirects, and finally the  `-o`  flag indicates to write output to a file instead of standard output:
Once it is downloaded, if you would like to audit the contents of the script before applying it, run:
`nano rvm.sh`  

6. To close out of `nano`, hit CTRL-X.
Now, you can pipe it to bash to install the latest stable Rails version which will also pull in the associated latest stable release of Ruby.
`cat rvm.sh | bash -s stable --rails`  

7. When the installation is complete, source the RVM scripts from the directory they were installed:
`source ~/.rvm/scripts/rvm`  

8. Then, install the specific version of Ruby that you need through RVM, replacing the highlighted version number with your version of choice, such as `ruby-3.1.2` or just `3.1.2`:
`rvm install 3.1.2`  
9. `bundle install`  

## 4. Postman
Postman query example capture [here](https://github.com/ralzate/Postman_image/blob/master/Screenshot%20from%202022-10-03%2003-36-27.png) 


## 5. Test
Go to [this](https://technical-test-developer-back.herokuapp.com/api/v1/number_of_elements_that_the_array_will_have?number_of_elements=12) url and change the number at the end of the url to set the number of elements in the array and make tests

## 6. Response examples

 >`"unordered_array": "[30, 27, 12, 26, 28, 9, 7, 17, 29, 13]",`
 `"range_longest": "[26, 27, 28, 29, 30]",`
 `"result": "[26, 30]"`

 >`"unordered_array": "[15, 30, 1, 3, 24, 29, 27, 19, 16, 11, 21, 6, 14, 10]",`
  `"range_longest": "[14, 15, 16]",`
  `"result": "[14, 16]"`

 >`"unordered_array": "[22, 16, 6, 14, 9, 8, 2, 17, 28, 18, 0, 19, 25, 7, 21]",`
  `"range_longest": "[6, 7, 8, 9]",`
  `"result": "[6, 9]"`