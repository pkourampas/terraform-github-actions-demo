Table of Contents

- [Introduction](#introduction)
- [Overview](#Overview)
- [Prerequisites](#prerequisites)
- [Execution](#execution)

<br>

# Introduction

This repo is a Github actions demo which provisions a S3 bucket with a tree of a folder & files on AWS.

<br>

# Overview

<br>

# Prerequisites

<br>

Before run this repository you should have an account on the following:

- [AWS (Amazon Web Services)](https://aws.amazon.com/resources/create-account/)
- [Github](https://github.com/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home)

<br>

Download & install [GIT](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) on your system. Afterwards, follow this documentation to [Set up Git](https://docs.github.com/en/get-started/getting-started-with-git/set-up-git).

<br>

Create a user on AWS & generate Access Keys. To do so, follow the below step by step guidelines.

- Search for the [**IAM**](./attachments/iam-service.png) service on the search bar & click on it.
- Under [**Access management/Users**](./attachments/access-management.png) click on the tab Create user.
- Provide a [user-name](./attachments/username.png) then click on **next** button.
- On the [set-permissions](./attachments/set-permissions.png) page, click **create group**.
- Specify a [User group name](./attachments/create-group.png) choose the **Administrator Access** from the Permissions policies then click on the **Create user group** button.
- Add the [user to group](./attachments/add-user-to-group.png) by click on the specific Group name & then click next.
- On the last page [review the user](./attachments/review-and-create-user.png) details and click on **Create user**

<br>

Now you just created a user without AWS console login access. Next step is to generate Access Keys. 

- Go to the **IAM -> Users** click on the [newly created user](./attachments/Security-credentials.png).
- Navigate to the Access Keys & click on **Create access key**.
- On the next page choose [**Command Line interface (CLI)**](./attachments/access-key-best-practices.png) & click on the confirmation & then click on **Next**.
- Set a [**description tag**](./attachments/create-access-key.png) for the Access key & then click on **Create access key**.
- Your [Access Key](./attachments/retriece-access-key.png) is generated.

<br>

**Please keep the credentials safe and do not share them**.

<br>

# Execution

- Fork my repository & update the hithub environmental variables with your Access Key & Secret Key.
- GitHub USERNAME/REPOSITORY/Settings/Security/Secret and variables/Actions/[New repository secret](./attachments/Actions-secrrets%20and%20variables.png)


Navigate on the **.github/workflows/terraform.yml** & **change the bucket name & region** push the changes to the remote. Then review the CI/CD progress by navigate on Actions on Github.
