#!/bin/bash
docker run --name postgres --restart always -e POSTGRES_PASSWORD=ItsJustDA5A -d -p 5432:5432 postgres
