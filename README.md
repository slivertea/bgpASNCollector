# bgpASNCollector
1. Uses open access to api.hackertarget.com/aslookup for looking glass info lookup.   
2. Unrouted prefixes will present blank fields in the CSV
3. runs in linux with bash
4. requires curl 
5. api query is limited to 50 queries per day, unless licensed up.  The curl will then need to pass a Base Auth token, if so desired.
7. output name generated by date time to minutes at initial run time.
