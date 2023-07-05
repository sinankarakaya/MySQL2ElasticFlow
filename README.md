# A Powerful Alliance in Data Integration: Elasticsearch, Logstash, MySQL, and Spring

This repository contains all the necessary files for setting up a data integration system using Elasticsearch, Logstash, MySQL, and Spring.

## Overview

In most of my projects, I tend to use MySQL. It's quite useful for standard CRUD operations, but sometimes, we might need to conduct extra processes. This is particularly evident when we need to search for something, consume resources, or merge multiple tables. At times, even if these actions aren't explicitly required, complex SQL queries might still be necessary. So, I propose a different approach where we switch our tech stack. For this particular stack, we will start by describing Logstash.

## Logstash

Logstash is primarily used in scenarios where data must be obtained from a certain source, processed, and then dispatched to another destination. As our initial step, we connect Logstash to MySQL to read the data. After processing it, we then send it to Elasticsearch.

The operation of Logstash is comprised of three steps:

1. Input
2. Filter
3. Output

Before adding this code, I had created a Logstash configuration file named "search.conf". This file is used in the search.conf file.

## Docker Compose

I have prepared an app.yml for docker-compose. This includes 3 services: MySQL, logstash, and Elasticsearch. All these three services are connected on the same network. This allows them to communicate with each other by their respective service names. I have also created a pipeline for Logstash and described it in a file.

All files have been added to this Github repository. For detailed usage, check the code within this repository.

## Testing the Setup

To test this structure, we build and run the app with docker-compose using the command:

```bash
docker-compose -f app.yml up -d
```

After the system is set up and ready, we check the logs. All three services must be ready. We then check the Logstash log, it should appear as follows.

## Searching Data

Once everything is set up, it's time to search. Open Postman and send a query like this:

```bash
GET localhost:9200/product/_search
```

This query will return a response like this. The details are in the code below.

## Contact Information

For more information, feel free to reach out to me. Your feedback is always welcome.
