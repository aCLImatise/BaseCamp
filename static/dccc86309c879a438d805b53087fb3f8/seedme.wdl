version 1.0

task Seedme {
  input {
    String? api_key
    File? auth_path
    File? cacert
    Boolean? show_curl_commands
    Boolean? show_auth_in_curl_commands
    Int? connect_timeout
    Boolean? cp
    Boolean? del
    String? description
    Boolean? dl
    Boolean? dry_run
    String? email
    File? file_description
    Boolean? file_dont_transcode
    Boolean? file_overwrite
    Boolean? fp
    String? file_poster_path
    File? file_title
    Boolean? file_transcode
    Boolean? kv
    File? log_file
    Boolean? insecure
    Boolean? notify
    Boolean? overwrite
    String? post
    String? privacy
    Boolean? query_collections_optional
    String? list
    String? read_timeout
    String? sequence_description
    Boolean? sequence_encode
    Int? sequence_frame_rate
    Boolean? sequence_overwrite
    Boolean? sp
    String? sequence_poster_path
    String? sequence_title
    Boolean? silent
    String? tag
    String? ta
    Int? ticker
    String? title
    String? transfer
    String? update
    String? url
    String? username
    String? verbose
    Boolean? version
  }
  command <<<
    seedme \
      ~{if defined(api_key) then ("-apikey " +  '"' + api_key + '"') else ""} \
      ~{if defined(auth_path) then ("-auth_path " +  '"' + auth_path + '"') else ""} \
      ~{if defined(cacert) then ("-cacert " +  '"' + cacert + '"') else ""} \
      ~{if (show_curl_commands) then "-show_curl_commands" else ""} \
      ~{if (show_auth_in_curl_commands) then "-show_auth_in_curl_commands" else ""} \
      ~{if defined(connect_timeout) then ("-connect_timeout " +  '"' + connect_timeout + '"') else ""} \
      ~{if (cp) then "-cp" else ""} \
      ~{if (del) then "-del" else ""} \
      ~{if defined(description) then ("-description " +  '"' + description + '"') else ""} \
      ~{if (dl) then "-dl" else ""} \
      ~{if (dry_run) then "-dry_run" else ""} \
      ~{if defined(email) then ("-email " +  '"' + email + '"') else ""} \
      ~{if defined(file_description) then ("-file_description " +  '"' + file_description + '"') else ""} \
      ~{if (file_dont_transcode) then "-file_dont_transcode" else ""} \
      ~{if (file_overwrite) then "-file_overwrite" else ""} \
      ~{if (fp) then "-fp" else ""} \
      ~{if defined(file_poster_path) then ("-file_poster_path " +  '"' + file_poster_path + '"') else ""} \
      ~{if defined(file_title) then ("-file_title " +  '"' + file_title + '"') else ""} \
      ~{if (file_transcode) then "-file_transcode" else ""} \
      ~{if (kv) then "-kv" else ""} \
      ~{if defined(log_file) then ("-logfile " +  '"' + log_file + '"') else ""} \
      ~{if (insecure) then "-insecure" else ""} \
      ~{if (notify) then "-notify" else ""} \
      ~{if (overwrite) then "-overwrite" else ""} \
      ~{if defined(post) then ("-post " +  '"' + post + '"') else ""} \
      ~{if defined(privacy) then ("-privacy " +  '"' + privacy + '"') else ""} \
      ~{if (query_collections_optional) then "-q" else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if defined(read_timeout) then ("-read_timeout " +  '"' + read_timeout + '"') else ""} \
      ~{if defined(sequence_description) then ("-sequence_description " +  '"' + sequence_description + '"') else ""} \
      ~{if (sequence_encode) then "-sequence_encode" else ""} \
      ~{if defined(sequence_frame_rate) then ("-sequence_frame_rate " +  '"' + sequence_frame_rate + '"') else ""} \
      ~{if (sequence_overwrite) then "-sequence_overwrite" else ""} \
      ~{if (sp) then "-sp" else ""} \
      ~{if defined(sequence_poster_path) then ("-sequence_poster_path " +  '"' + sequence_poster_path + '"') else ""} \
      ~{if defined(sequence_title) then ("-sequence_title " +  '"' + sequence_title + '"') else ""} \
      ~{if (silent) then "-silent" else ""} \
      ~{if defined(tag) then ("-tag " +  '"' + tag + '"') else ""} \
      ~{if defined(ta) then ("-ta " +  '"' + ta + '"') else ""} \
      ~{if defined(ticker) then ("-ticker " +  '"' + ticker + '"') else ""} \
      ~{if defined(title) then ("-title " +  '"' + title + '"') else ""} \
      ~{if defined(transfer) then ("-transfer " +  '"' + transfer + '"') else ""} \
      ~{if defined(update) then ("-update " +  '"' + update + '"') else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""} \
      ~{if defined(username) then ("-username " +  '"' + username + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    api_key: "Specify your apikey at SeedMe.org"
    auth_path: "Specify path to authorization file\\n(default file at ~/seedme.txt or ~/.seedme\\nis searched when this option not specified)\\nThis file must contain the following\\n{\\\"username\\\" : \\\"YourUserName\\\", \\\"apikey\\\" : \\\"YourApiKey\\\"}\\nDownload this file from https://www.seedme.org/user"
    cacert: "Set path to SSL certificate"
    show_curl_commands: "Show curl command line options"
    show_auth_in_curl_commands: "Show auth in curl command line options"
    connect_timeout: "Connection timeout duration in seconds\\n(default: 60"
    cp: "/usr/bin/curl, -curl_path /usr/bin/curl\\nSpecify absolute path to curl executible\\n(default: environment path)"
    del: "['COLLECTION_ID', 'filenames|node_ids'] [['COLLECTION_ID', 'filenames|node_ids'] ...], -delete ['COLLECTION_ID', 'filenames|node_ids'] [['COLLECTION_ID', 'filenames|node_ids'] ...]\\nDelete a collection or its content\\nArguments: Collection_ID filenames|node_ids\\nfilenames: comma seperated string * wildcard allowed\\nnode_ids: comma seperated node_ids"
    description: "Specify description for the collection"
    dl: "['ID', 'all|video|wildcard', 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] [['ID', 'all|video|wildcard', 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] ...], -download ['ID', 'all|video|wildcard', 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] [['ID', 'all|video|wildcard', 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] ...]\\nDownload content from a collection\\nArguments: ID  all|video|wildcard DOWNLOAD_PATH RETRY INTERVAL(Requires first two arguments)\\n(default DOWNLOAD_PATH: ~/Downloads )\\n(default RETRY: 3 )\\n(default INTERVAL: 60)"
    dry_run: "Enable dry run execution mode to check all\\ninput except authorization"
    email: "Add emails to share a collection\\n(can be used multiple times)"
    file_description: "Add file description"
    file_dont_transcode: "Do not trigger video transcoding"
    file_overwrite: "Overwrite file if it exists\\n(default:False)"
    fp: "{FILE, PATH/abc*, DIR}, -file_path {FILE, PATH/abc*, DIR}\\nSpecify FILE | PATH with * wildcard | DIR"
    file_poster_path: "Specify FILE PATH"
    file_title: "Set file title"
    file_transcode: "Trigger video transcoding to create videos\\nfor different devices"
    kv: "\\\"KEY:VALUE\\\", -keyvalue \\\"KEY:VALUE\\\"\\nAdd key:value pairs to the collection\\n(can be used multiple times)"
    log_file: "Appends output to specified log file"
    insecure: "Disable SSL communication"
    notify: "Send email to users about a shared collection\\n(default: False)"
    overwrite: "Overwrite existing files, if any"
    post: "Overide post method\\n(default: requests)"
    privacy: "Specify privacy to access the collection\\n(default: private)"
    query_collections_optional: "[COLLECTION_ID (required with list args)], -query [COLLECTION_ID (required with list args)]\\nQuery your collections with optional ID\\n(default: Returns a list of ID and Title)"
    list: "list content for a collection(default: ticker)Must be used with -query ID option"
    read_timeout: "Read timeout duration in seconds\\n(default: None"
    sequence_description: "Add sequence description"
    sequence_encode: "Trigger video encoding to create a video\\nfrom image sequence"
    sequence_frame_rate: "Specify sequence frame rate for video encoding"
    sequence_overwrite: "Overwrite sequence if it exists\\n(default:False)"
    sp: "{DIR, PATH/vel*}, -sequence_path {DIR, PATH/vel*}\\nSpecify DIR | PATH with * wildcard"
    sequence_poster_path: "Specify FILE PATH"
    sequence_title: "Set sequence title\\n(Required)"
    silent: "Silence all console output including errors\\n(Not recommended during collection creation)"
    tag: "Add tag to the collection\\n(can be used many times)"
    ta: "N ITEMS, -tail LAST N ITEMS\\nOnly list last n items to show. Must be used in conjunction with -list option"
    ticker: "Add ticker text upto 128 char to the collection"
    title: "Specify title for the collection (Required)"
    transfer: "Specify email to whom the collection ownership will be transferred"
    update: "Specify collection id for update or query"
    url: "Overide default and set new webservices url"
    username: "Specify your username at SeedMe.org"
    verbose: "verbosity level(default: ERROR)"
    version: "Show Web API Version and Web Services URL"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}