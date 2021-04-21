echo "Running ./time_namelookup.sh $1 times on host: $2"
ntimes $1 -- curl -so /dev/null -w '%{time_namelookup}\n' $2 | percentile
