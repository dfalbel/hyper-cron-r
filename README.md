hyper-cron-r
=====================

Schedule R scripts to run on a regulara basis using [hyper](https://hyper.sh) and cron.

### Build and push the container

```
docker build -t dfalbel/hyper-cron-r .
docker push dfalbel/hyper-cron-r
```

### Pull the image on hyper

```
hyper pull dfalbel/hyper-cron-r
```

### Create a hyper cron job

```
hyper cron create  --minute=*/5 --hour=* --name test-cron-job1 --env R_TELEGRAM_USER_me=1370739207 --env R_TELEGRAM_BOT_RBot=6793020822:AAGKFXUz7P_Qg2X_pEAHDGJ8432X9Z5QL4 dfalbel/hyper-cron-r 
```

Don't forget to switch to your env variables values.

### Clean up

```
hyper cron rm test-cron-job1
hyperm rmi dfalbel/hyper-cron-r
```