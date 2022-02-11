#!/bin/bash
(trap 'kill 0' SIGINT; bash ./kabir.sh & bash ./kabir.sh & bash ./kabir.sh & bash ./kabir.sh & bash ./kabir.sh & bash ./kabir.sh & bash ./output.sh)