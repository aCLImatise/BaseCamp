class: CommandLineTool
id: seedme.py.cwl
inputs:
- id: in_api_key
  doc: Specify your apikey at SeedMe.org
  type: string?
  inputBinding:
    prefix: -apikey
- id: in_auth_path
  doc: "Specify path to authorization file\n(default file at ~/seedme.txt or ~/.seedme\n\
    is searched when this option not specified)\nThis file must contain the following\n\
    {\"username\" : \"YourUserName\", \"apikey\" : \"YourApiKey\"}\nDownload this\
    \ file from https://www.seedme.org/user"
  type: File?
  inputBinding:
    prefix: -auth_path
- id: in_cacert
  doc: Set path to SSL certificate
  type: File?
  inputBinding:
    prefix: -cacert
- id: in_show_curl_commands
  doc: Show curl command line options
  type: boolean?
  inputBinding:
    prefix: -show_curl_commands
- id: in_show_auth_in_curl_commands
  doc: Show auth in curl command line options
  type: boolean?
  inputBinding:
    prefix: -show_auth_in_curl_commands
- id: in_connect_timeout
  doc: "Connection timeout duration in seconds\n(default: 60"
  type: long?
  inputBinding:
    prefix: -connect_timeout
- id: in_cp
  doc: "/usr/bin/curl, -curl_path /usr/bin/curl\nSpecify absolute path to curl executible\n\
    (default: environment path)"
  type: boolean?
  inputBinding:
    prefix: -cp
- id: in_del
  doc: "['COLLECTION_ID', 'filenames|node_ids'] [['COLLECTION_ID', 'filenames|node_ids']\
    \ ...], -delete ['COLLECTION_ID', 'filenames|node_ids'] [['COLLECTION_ID', 'filenames|node_ids']\
    \ ...]\nDelete a collection or its content\nArguments: Collection_ID filenames|node_ids\n\
    filenames: comma seperated string * wildcard allowed\nnode_ids: comma seperated\
    \ node_ids"
  type: boolean?
  inputBinding:
    prefix: -del
- id: in_description
  doc: Specify description for the collection
  type: string?
  inputBinding:
    prefix: -description
- id: in_dl
  doc: "['ID', 'all|video|wildcard', 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] [['ID',\
    \ 'all|video|wildcard', 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] ...], -download\
    \ ['ID', 'all|video|wildcard', 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] [['ID', 'all|video|wildcard',\
    \ 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] ...]\nDownload content from a collection\n\
    Arguments: ID  all|video|wildcard DOWNLOAD_PATH RETRY INTERVAL(Requires first\
    \ two arguments)\n(default DOWNLOAD_PATH: ~/Downloads )\n(default RETRY: 3 )\n\
    (default INTERVAL: 60)"
  type: boolean?
  inputBinding:
    prefix: -dl
- id: in_dry_run
  doc: "Enable dry run execution mode to check all\ninput except authorization"
  type: boolean?
  inputBinding:
    prefix: -dry_run
- id: in_email
  doc: "Add emails to share a collection\n(can be used multiple times)"
  type: string?
  inputBinding:
    prefix: -email
- id: in_file_description
  doc: Add file description
  type: File?
  inputBinding:
    prefix: -file_description
- id: in_file_dont_transcode
  doc: Do not trigger video transcoding
  type: boolean?
  inputBinding:
    prefix: -file_dont_transcode
- id: in_file_overwrite
  doc: "Overwrite file if it exists\n(default:False)"
  type: boolean?
  inputBinding:
    prefix: -file_overwrite
- id: in_fp
  doc: "{FILE, PATH/abc*, DIR}, -file_path {FILE, PATH/abc*, DIR}\nSpecify FILE |\
    \ PATH with * wildcard | DIR"
  type: boolean?
  inputBinding:
    prefix: -fp
- id: in_file_poster_path
  doc: Specify FILE PATH
  type: string?
  inputBinding:
    prefix: -file_poster_path
- id: in_file_title
  doc: Set file title
  type: File?
  inputBinding:
    prefix: -file_title
- id: in_file_transcode
  doc: "Trigger video transcoding to create videos\nfor different devices"
  type: boolean?
  inputBinding:
    prefix: -file_transcode
- id: in_kv
  doc: "\"KEY:VALUE\", -keyvalue \"KEY:VALUE\"\nAdd key:value pairs to the collection\n\
    (can be used multiple times)"
  type: boolean?
  inputBinding:
    prefix: -kv
- id: in_log_file
  doc: Appends output to specified log file
  type: File?
  inputBinding:
    prefix: -logfile
- id: in_insecure
  doc: Disable SSL communication
  type: boolean?
  inputBinding:
    prefix: -insecure
- id: in_notify
  doc: "Send email to users about a shared collection\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: -notify
- id: in_overwrite
  doc: Overwrite existing files, if any
  type: boolean?
  inputBinding:
    prefix: -overwrite
- id: in_post
  doc: "Overide post method\n(default: requests)"
  type: string?
  inputBinding:
    prefix: -post
- id: in_privacy
  doc: "Specify privacy to access the collection\n(default: private)"
  type: string?
  inputBinding:
    prefix: -privacy
- id: in_query_your_collections
  doc: "[COLLECTION_ID (required with list args)], -query [COLLECTION_ID (required\
    \ with list args)]\nQuery your collections with optional ID\n(default: Returns\
    \ a list of ID and Title)"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_list
  doc: 'list content for a collection(default: ticker)Must be used with -query ID
    option'
  type: string?
  inputBinding:
    prefix: -list
- id: in_read_timeout
  doc: "Read timeout duration in seconds\n(default: None"
  type: string?
  inputBinding:
    prefix: -read_timeout
- id: in_sequence_description
  doc: Add sequence description
  type: string?
  inputBinding:
    prefix: -sequence_description
- id: in_sequence_encode
  doc: "Trigger video encoding to create a video\nfrom image sequence"
  type: boolean?
  inputBinding:
    prefix: -sequence_encode
- id: in_sequence_frame_rate
  doc: Specify sequence frame rate for video encoding
  type: long?
  inputBinding:
    prefix: -sequence_frame_rate
- id: in_sequence_overwrite
  doc: "Overwrite sequence if it exists\n(default:False)"
  type: boolean?
  inputBinding:
    prefix: -sequence_overwrite
- id: in_sp
  doc: "{DIR, PATH/vel*}, -sequence_path {DIR, PATH/vel*}\nSpecify DIR | PATH with\
    \ * wildcard"
  type: boolean?
  inputBinding:
    prefix: -sp
- id: in_sequence_poster_path
  doc: Specify FILE PATH
  type: string?
  inputBinding:
    prefix: -sequence_poster_path
- id: in_sequence_title
  doc: "Set sequence title\n(Required)"
  type: string?
  inputBinding:
    prefix: -sequence_title
- id: in_silent
  doc: "Silence all console output including errors\n(Not recommended during collection\
    \ creation)"
  type: boolean?
  inputBinding:
    prefix: -silent
- id: in_tag
  doc: "Add tag to the collection\n(can be used many times)"
  type: string?
  inputBinding:
    prefix: -tag
- id: in_ta
  doc: "N ITEMS, -tail LAST N ITEMS\nOnly list last n items to show. Must be used\
    \ in conjunction with -list option"
  type: string?
  inputBinding:
    prefix: -ta
- id: in_ticker
  doc: Add ticker text upto 128 char to the collection
  type: long?
  inputBinding:
    prefix: -ticker
- id: in_title
  doc: Specify title for the collection (Required)
  type: string?
  inputBinding:
    prefix: -title
- id: in_transfer
  doc: Specify email to whom the collection ownership will be transferred
  type: string?
  inputBinding:
    prefix: -transfer
- id: in_update
  doc: Specify collection id for update or query
  type: string?
  inputBinding:
    prefix: -update
- id: in_url
  doc: Overide default and set new webservices url
  type: string?
  inputBinding:
    prefix: -url
- id: in_username
  doc: Specify your username at SeedMe.org
  type: string?
  inputBinding:
    prefix: -username
- id: in_verbose
  doc: 'verbosity level(default: ERROR)'
  type: string?
  inputBinding:
    prefix: -verbose
- id: in_version
  doc: Show Web API Version and Web Services URL
  type: boolean?
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: Appends output to specified log file
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints: []
cwlVersion: v1.1
baseCommand:
- seedme.py
