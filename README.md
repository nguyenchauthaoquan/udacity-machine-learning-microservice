[![nguyenchauthaoquan](https://circleci.com/gh/nguyenchauthaoquan/udacity-machine-learning-microservice.svg?style=svg)](https://circleci.com/gh/nguyenchauthaoquan/udacity-machine-learning-microservice)

## I. Project Overview

In this project, we are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### 1. Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## II. Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 

### 1. Window OS

```bash
py -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
py -m virtualenv .devops
source .devops/Scripts/activate
```

### 2. Ubuntu/Linux OS

```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv .devops
source .devops/Scripts/activate
```

* Run `make install` to install the necessary dependencies

### 3. Running application

#### 1. Standalone:  
Run `python app.py`

#### 2. Run in Docker:
1. Run `./run_docker.sh` to containerize the application to docker container.
2. Run `./make_prediction.sh` to test the predict API on local.

#### 3. Run in Kubernetes:  
1. Run `./upload_docker.sh` to push the docker image into docker hub.
2. Run `minikube start` to start the local kubernetes cluster
3. Run `kubectl config view` to view the kubernetes default configurations and verify that the cluster is with a certificate-authority and server.
4. Run `./run_kubernetes.sh` when the pod is in [Running] state
5. Run `./make_prediction.sh` while calling `./run_kubernetes.sh`

##### 4. Clean up kubernetes cluster
1. Run `minikube delete`
2. Run `minikube stop`