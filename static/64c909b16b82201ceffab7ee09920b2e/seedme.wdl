version 1.0

task Seedme.py {
  input {
    String? api_key
    String? auth_path
    String? cacert
    Boolean? show_curl_commands
    Boolean? show_auth_in_curl_commands
    String? connect_timeout
    Boolean? cp
    Boolean? del
    String? description
    Boolean? dl
    Boolean? dry_run
    String? email
    String? file_description
    Boolean? file_dont_transcode
    Boolean? file_overwrite
    Boolean? fp
    String? file_poster_path
    String? file_title
    Boolean? file_transcode
    Boolean? kv
    File? log_file
    Boolean? insecure
    Boolean? notify
    Boolean? overwrite
    String? post
    String? privacy
    Boolean? query_collections_returns
    String? list
    String? read_timeout
    String? sequence_description
    Boolean? sequence_encode
    String? sequence_frame_rate
    Boolean? sequence_overwrite
    Boolean? sp
    String? sequence_poster_path
    String? sequence_title
    Boolean? silent
    String? tag
    String? ta
    String? ticker
    String? title
    String? transfer
    String? update
    String? url
    String? username
    String? verbose
    Boolean? version
  }
  command <<<
    seedme.py \
      ~{if defined(api_key) then ("-apikey " +  '"' + api_key + '"') else ""} \
      ~{if defined(auth_path) then ("-auth_path " +  '"' + auth_path + '"') else ""} \
      ~{if defined(cacert) then ("-cacert " +  '"' + cacert + '"') else ""} \
      ~{true="-show_curl_commands" false="" show_curl_commands} \
      ~{true="-show_auth_in_curl_commands" false="" show_auth_in_curl_commands} \
      ~{if defined(connect_timeout) then ("-connect_timeout " +  '"' + connect_timeout + '"') else ""} \
      ~{true="-cp" false="" cp} \
      ~{true="-del" false="" del} \
      ~{if defined(description) then ("-description " +  '"' + description + '"') else ""} \
      ~{true="-dl" false="" dl} \
      ~{true="-dry_run" false="" dry_run} \
      ~{if defined(email) then ("-email " +  '"' + email + '"') else ""} \
      ~{if defined(file_description) then ("-file_description " +  '"' + file_description + '"') else ""} \
      ~{true="-file_dont_transcode" false="" file_dont_transcode} \
      ~{true="-file_overwrite" false="" file_overwrite} \
      ~{true="-fp" false="" fp} \
      ~{if defined(file_poster_path) then ("-file_poster_path " +  '"' + file_poster_path + '"') else ""} \
      ~{if defined(file_title) then ("-file_title " +  '"' + file_title + '"') else ""} \
      ~{true="-file_transcode" false="" file_transcode} \
      ~{true="-kv" false="" kv} \
      ~{if defined(log_file) then ("-logfile " +  '"' + log_file + '"') else ""} \
      ~{true="-insecure" false="" insecure} \
      ~{true="-notify" false="" notify} \
      ~{true="-overwrite" false="" overwrite} \
      ~{if defined(post) then ("-post " +  '"' + post + '"') else ""} \
      ~{if defined(privacy) then ("-privacy " +  '"' + privacy + '"') else ""} \
      ~{true="-q" false="" query_collections_returns} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if defined(read_timeout) then ("-read_timeout " +  '"' + read_timeout + '"') else ""} \
      ~{if defined(sequence_description) then ("-sequence_description " +  '"' + sequence_description + '"') else ""} \
      ~{true="-sequence_encode" false="" sequence_encode} \
      ~{if defined(sequence_frame_rate) then ("-sequence_frame_rate " +  '"' + sequence_frame_rate + '"') else ""} \
      ~{true="-sequence_overwrite" false="" sequence_overwrite} \
      ~{true="-sp" false="" sp} \
      ~{if defined(sequence_poster_path) then ("-sequence_poster_path " +  '"' + sequence_poster_path + '"') else ""} \
      ~{if defined(sequence_title) then ("-sequence_title " +  '"' + sequence_title + '"') else ""} \
      ~{true="-silent" false="" silent} \
      ~{if defined(tag) then ("-tag " +  '"' + tag + '"') else ""} \
      ~{if defined(ta) then ("-ta " +  '"' + ta + '"') else ""} \
      ~{if defined(ticker) then ("-ticker " +  '"' + ticker + '"') else ""} \
      ~{if defined(title) then ("-title " +  '"' + title + '"') else ""} \
      ~{if defined(transfer) then ("-transfer " +  '"' + transfer + '"') else ""} \
      ~{if defined(update) then ("-update " +  '"' + update + '"') else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""} \
      ~{if defined(username) then ("-username " +  '"' + username + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    api_key: "Specify your apikey at SeedMe.org"
    auth_path: "Specify path to authorization file (default file at ~/seedme.txt or ~/.seedme is searched when this option not specified) This file must contain the following {\"username\" : \"YourUserName\", \"apikey\" : \"YourApiKey\"} Download this file from https://www.seedme.org/user"
    cacert: "Set path to SSL certificate"
    show_curl_commands: "Show curl command line options"
    show_auth_in_curl_commands: "Show auth in curl command line options"
    connect_timeout: "Connection timeout duration in seconds (default: 60"
    cp: "/usr/bin/curl, -curl_path /usr/bin/curl Specify absolute path to curl executible (default: environment path)"
    del: "['COLLECTION_ID', 'filenames|node_ids'] [['COLLECTION_ID', 'filenames|node_ids'] ...], -delete ['COLLECTION_ID', 'filenames|node_ids'] [['COLLECTION_ID', 'filenames|node_ids'] ...] Delete a collection or its content Arguments: Collection_ID filenames|node_ids filenames: comma seperated string * wildcard allowed node_ids: comma seperated node_ids"
    description: "Specify description for the collection"
    dl: "['ID', 'all|video|wildcard', 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] [['ID', 'all|video|wildcard', 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] ...], -download ['ID', 'all|video|wildcard', 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] [['ID', 'all|video|wildcard', 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] ...] Download content from a collection Arguments: ID  all|video|wildcard DOWNLOAD_PATH RETRY INTERVAL(Requires first two arguments) (default DOWNLOAD_PATH: ~/Downloads ) (default RETRY: 3 ) (default INTERVAL: 60)"
    dry_run: "Enable dry run execution mode to check all  input except authorization"
    email: "Add emails to share a collection (can be used multiple times)"
    file_description: "Add file description"
    file_dont_transcode: "Do not trigger video transcoding"
    file_overwrite: "Overwrite file if it exists (default:False)"
    fp: "{FILE, PATH/abc*, DIR}, -file_path {FILE, PATH/abc*, DIR} Specify FILE | PATH with * wildcard | DIR"
    file_poster_path: "Specify FILE PATH"
    file_title: "Set file title"
    file_transcode: "Trigger video transcoding to create videos for different devices"
    kv: "\"KEY:VALUE\", -keyvalue \"KEY:VALUE\" Add key:value pairs to the collection (can be used multiple times)"
    log_file: "Appends output to specified log file"
    insecure: "Disable SSL communication"
    notify: "Send email to users about a shared collection (default: False)"
    overwrite: "Overwrite existing files, if any"
    post: "Overide post method (default: requests)"
    privacy: "Specify privacy to access the collection (default: private)"
    query_collections_returns: "[COLLECTION_ID (required with list args)], -query [COLLECTION_ID (required with list args)] Query your collections with optional ID (default: Returns a list of ID and Title)"
    list: "list content for a collection(default: ticker)Must be used with -query ID option"
    read_timeout: "Read timeout duration in seconds (default: None"
    sequence_description: "Add sequence description"
    sequence_encode: "Trigger video encoding to create a video from image sequence"
    sequence_frame_rate: "Specify sequence frame rate for video encoding"
    sequence_overwrite: "Overwrite sequence if it exists (default:False)"
    sp: "{DIR, PATH/vel*}, -sequence_path {DIR, PATH/vel*} Specify DIR | PATH with * wildcard"
    sequence_poster_path: "Specify FILE PATH"
    sequence_title: "Set sequence title (Required)"
    silent: "Silence all console output including errors (Not recommended during collection creation)"
    tag: "Add tag to the collection (can be used many times)"
    ta: "N ITEMS, -tail LAST N ITEMS Only list last n items to show. Must be used in conjunction with -list option"
    ticker: "Add ticker text upto 128 char to the collection"
    title: "Specify title for the collection (Required)"
    transfer: "Specify email to whom the collection ownership will be transferred"
    update: "Specify collection id for update or query"
    url: "Overide default and set new webservices url"
    username: "Specify your username at SeedMe.org"
    verbose: "verbosity level(default: ERROR)"
    version: "Show Web API Version and Web Services URL"
  }
}