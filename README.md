# 🤔 How to use this project

**Prerequisite**
```
ruby: 3.0.1
postgres: 13.4 (can be the latest version)
rails: 7.0.1
```

**Clone this repo to your local machine**
```
git@github.com:analyn-cajocson/direct_shifts_online.git
```

or 

```
https://github.com/analyn-cajocson/direct_shifts_online.git
```

**After that, go inside the project directory:**

```
cd direct_shifts_online
```

**Setup the project**

```
bundle install
rails db:create
rails db:migrate
```

**Run the test**

```
rspec
```

**Run the project**

```
rails s
```

## Available API

```
url: http://localhost:3000/
```

### User Registration
```
HTTP Method: POST
URL: {{url}}/api/auth/
```

**Sample Request Body**

```
{
    "email": "user@example.com",
    "password": "12345678",
    "password_confirmation": "12345678"
}
```
**Parameters**

Name | Description | Required | 
--- | --- | --- | 
email | User email | Yes |
password | User password | Yes |
password_confirmation | Re-type password | Yes |

### Login
```
HTTP Method: POST
URL: {{url}}/api/auth/sign_in
```

**Sample Request Body**

```
{
    "email": "user@example.com",
    "password": "12345678"
}
```
**Parameters**

Name | Description | Required | 
--- | --- | --- | 
email | User email | Yes |
password | User password | Yes |


### Invite User
```
HTTP Method: POST
URL: {{url}}/api/user/invite
```

**Sample Request Body**

```
{
   "email": "ana@example.com"
}
```
**Parameters**

Name | Description | Required | 
--- | --- | --- | 
email | Email of the user | Yes |



**Request Headers**

_Get these values from the login response header_

Name | Required |
--- | --- |
access-token | Yes |
client | Yes |
expiry | Yes |
uid | Yes |


