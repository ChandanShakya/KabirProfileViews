# Kabir Profile View Increaser

This is a shell script that increases view count using curl implemented for [Kabir](https://github.com/kabirdeula)

> Displays the current count and increases by 1

```bash
curl -s $kabir | grep -Po '[0-9]<*(?=<)' | tr -d '\n'
echo
# 45 per 10 seconds

curl -sX GET $kabir -H "Accept: */*" | grep -Po '[0-9]<*(?=<)' | tr -d '\n'
echo
# 46 per 10 seconds
# optimal for me
```
> Increase current count by 1 without displaying the count


```bash
curl -sX GET $kabir -H "Accept: */*"
# 47 per 10 seconds

curl -sX HEAD $kabir -H "Accept: */*"
# 54 per 10 seconds
```