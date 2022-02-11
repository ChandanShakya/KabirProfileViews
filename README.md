# Kabir Profile View Increaser

This is a shell script that increases view count using curl implemented for [Kabir](https://github.com/kabirdeula)

> Displays the current count and increases by 1
> ```bash
> curl -s $kabir | grep -Po '[0-9]<*(?=<)' | tr -d '\n'
> echo
> # 45 per 10 seconds
> 
> curl -sX GET $kabir -H "Accept: */*" | grep -Po '[0-9]<*(?=<)' | tr -d '\n'
> echo
> # 46 per 10 seconds
> ```

> Increase current count by 1 without displaying the count
> ```bash
> curl -sX GET $kabir -H "Accept: */*"
> # 47 per 10 seconds
> 
> curl -sX HEAD $kabir -H "Accept: */*"
> # 54 per 10 seconds
> 
> curl -sX HEAD $kabir -H "Accept: */*" > /dev/null
> # 85 per 10 seconds
> # current implementation with 6 simultaneous bash instances
> ```

## Test - cases

> ```
> one   bash instance = 46 per 10 second
> two   bash instance = 70 per 10 second
> three bash instance = 75 per 10 second
> four  bash instance = 75 per 10 second
> five  bash instance = 71 per 10 second
> six   bash instance = 85 per 10 second
> seven bash instance = 80 per 10 second
> eight bash instance = 83 per 10 second
> nine  bash instance = 80 per 10 second
> ```