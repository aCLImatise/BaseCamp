class: CommandLineTool
id: seedme.py.cwl
inputs:
- id: api_key
  doc: Specify your apikey at SeedMe.org
  type: string
  inputBinding:
    prefix: -apikey
- id: auth_path
  doc: 'Specify path to authorization file (default file at ~/seedme.txt or ~/.seedme
    is searched when this option not specified) This file must contain the following
    {"username" : "YourUserName", "apikey" : "YourApiKey"} Download this file from
    https://www.seedme.org/user'
  type: string
  inputBinding:
    prefix: -auth_path
- id: cacert
  doc: Set path to SSL certificate
  type: string
  inputBinding:
    prefix: -cacert
- id: show_curl_commands
  doc: Show curl command line options
  type: boolean
  inputBinding:
    prefix: -show_curl_commands
- id: show_auth_in_curl_commands
  doc: Show auth in curl command line options
  type: boolean
  inputBinding:
    prefix: -show_auth_in_curl_commands
- id: connect_timeout
  doc: 'Connection timeout duration in seconds (default: 60'
  type: string
  inputBinding:
    prefix: -connect_timeout
- id: cp
  doc: '/usr/bin/curl, -curl_path /usr/bin/curl Specify absolute path to curl executible
    (default: environment path)'
  type: boolean
  inputBinding:
    prefix: -cp
- id: del
  doc: "['COLLECTION_ID', 'filenames|node_ids'] [['COLLECTION_ID', 'filenames|node_ids']\
    \ ...], -delete ['COLLECTION_ID', 'filenames|node_ids'] [['COLLECTION_ID', 'filenames|node_ids']\
    \ ...] Delete a collection or its content Arguments: Collection_ID filenames|node_ids\
    \ filenames: comma seperated string * wildcard allowed node_ids: comma seperated\
    \ node_ids"
  type: boolean
  inputBinding:
    prefix: -del
- id: description
  doc: Specify description for the collection
  type: string
  inputBinding:
    prefix: -description
- id: dl
  doc: "['ID', 'all|video|wildcard', 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] [['ID',\
    \ 'all|video|wildcard', 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] ...], -download\
    \ ['ID', 'all|video|wildcard', 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] [['ID', 'all|video|wildcard',\
    \ 'DOWNLOAD_PATH', 'RETRY', 'INTERVAL'] ...] Download content from a collection\
    \ Arguments: ID  all|video|wildcard DOWNLOAD_PATH RETRY INTERVAL(Requires first\
    \ two arguments) (default DOWNLOAD_PATH: ~/Downloads ) (default RETRY: 3 ) (default\
    \ INTERVAL: 60)"
  type: boolean
  inputBinding:
    prefix: -dl
- id: dry_run
  doc: Enable dry run execution mode to check all  input except authorization
  type: boolean
  inputBinding:
    prefix: -dry_run
- id: email
  doc: Add emails to share a collection (can be used multiple times)
  type: string
  inputBinding:
    prefix: -email
- id: file_description
  doc: Add file description
  type: string
  inputBinding:
    prefix: -file_description
- id: file_dont_transcode
  doc: Do not trigger video transcoding
  type: boolean
  inputBinding:
    prefix: -file_dont_transcode
- id: file_overwrite
  doc: Overwrite file if it exists (default:False)
  type: boolean
  inputBinding:
    prefix: -file_overwrite
- id: fp
  doc: '{FILE, PATH/abc*, DIR}, -file_path {FILE, PATH/abc*, DIR} Specify FILE | PATH
    with * wildcard | DIR'
  type: boolean
  inputBinding:
    prefix: -fp
- id: file_poster_path
  doc: Specify FILE PATH
  type: string
  inputBinding:
    prefix: -file_poster_path
- id: file_title
  doc: Set file title
  type: string
  inputBinding:
    prefix: -file_title
- id: file_transcode
  doc: Trigger video transcoding to create videos for different devices
  type: boolean
  inputBinding:
    prefix: -file_transcode
- id: kv
  doc: '"KEY:VALUE", -keyvalue "KEY:VALUE" Add key:value pairs to the collection (can
    be used multiple times)'
  type: boolean
  inputBinding:
    prefix: -kv
- id: log_file
  doc: Appends output to specified log file
  type: File
  inputBinding:
    prefix: -logfile
- id: insecure
  doc: Disable SSL communication
  type: boolean
  inputBinding:
    prefix: -insecure
- id: notify
  doc: 'Send email to users about a shared collection (default: False)'
  type: boolean
  inputBinding:
    prefix: -notify
- id: overwrite
  doc: Overwrite existing files, if any
  type: boolean
  inputBinding:
    prefix: -overwrite
- id: post
  doc: 'Overide post method (default: requests)'
  type: string
  inputBinding:
    prefix: -post
- id: privacy
  doc: 'Specify privacy to access the collection (default: private)'
  type: string
  inputBinding:
    prefix: -privacy
- id: q
  doc: '[COLLECTION_ID (required with list args)], -query [COLLECTION_ID (required
    with list args)] Query your collections with optional ID (default: Returns a list
    of ID and Title)'
  type: boolean
  inputBinding:
    prefix: -q
- id: list
  doc: 'list content for a collection(default: ticker)Must be used with -query ID
    option'
  type: string
  inputBinding:
    prefix: -list
- id: read_timeout
  doc: 'Read timeout duration in seconds (default: None'
  type: string
  inputBinding:
    prefix: -read_timeout
- id: sequence_description
  doc: Add sequence description
  type: string
  inputBinding:
    prefix: -sequence_description
- id: sequence_encode
  doc: Trigger video encoding to create a video from image sequence
  type: boolean
  inputBinding:
    prefix: -sequence_encode
- id: sr
  doc: 30.00, -sequence_frame_rate 30.00 Specify sequence frame rate for video encoding
  type: boolean
  inputBinding:
    prefix: -sr
- id: sequence_overwrite
  doc: Overwrite sequence if it exists (default:False)
  type: boolean
  inputBinding:
    prefix: -sequence_overwrite
- id: sp
  doc: '{DIR, PATH/vel*}, -sequence_path {DIR, PATH/vel*} Specify DIR | PATH with
    * wildcard'
  type: boolean
  inputBinding:
    prefix: -sp
- id: sequence_poster_path
  doc: Specify FILE PATH
  type: string
  inputBinding:
    prefix: -sequence_poster_path
- id: sequence_title
  doc: Set sequence title (Required)
  type: string
  inputBinding:
    prefix: -sequence_title
- id: silent
  doc: Silence all console output including errors (Not recommended during collection
    creation)
  type: boolean
  inputBinding:
    prefix: -silent
- id: tag
  doc: Add tag to the collection (can be used many times)
  type: string
  inputBinding:
    prefix: -tag
- id: ta
  doc: N ITEMS, -tail LAST N ITEMS Only list last n items to show. Must be used in
    conjunction with -list option
  type: string
  inputBinding:
    prefix: -ta
- id: ticker
  doc: Add ticker text upto 128 char to the collection
  type: string
  inputBinding:
    prefix: -ticker
- id: title
  doc: Specify title for the collection (Required)
  type: string
  inputBinding:
    prefix: -title
- id: transfer
  doc: Specify email to whom the collection ownership will be transferred
  type: string
  inputBinding:
    prefix: -transfer
- id: update
  doc: Specify collection id for update or query
  type: string
  inputBinding:
    prefix: -update
- id: url
  doc: Overide default and set new webservices url
  type: string
  inputBinding:
    prefix: -url
- id: username
  doc: Specify your username at SeedMe.org
  type: string
  inputBinding:
    prefix: -username
- id: verbose
  doc: 'verbosity level(default: ERROR)'
  type: string
  inputBinding:
    prefix: -verbose
- id: version
  doc: Show Web API Version and Web Services URL
  type: boolean
  inputBinding:
    prefix: -version
- id: e
  doc: "'one@example.com' -e 'two@example.com' \\"
  type: boolean
  inputBinding:
    prefix: -e
- id: t
  doc: "'CLI Test' \\"
  type: boolean
  inputBinding:
    prefix: -t
- id: d
  doc: "'Using CLI to interact with SeedMe.org' \\"
  type: boolean
  inputBinding:
    prefix: -d
- id: kv
  doc: "'pressure:10pa' -kv 'temperature:300K' \\"
  type: boolean
  inputBinding:
    prefix: -kv
- id: tag
  doc: "'YT' -tag 'visualizations' \\"
  type: boolean
  inputBinding:
    prefix: -tag
- id: tic
  doc: "'t1 is 5%' -tic 't2 is 10%' \\"
  type: boolean
  inputBinding:
    prefix: -tic
- id: sp
  doc: "'sample/sequences/plume_boundary/*' \\"
  type: boolean
  inputBinding:
    prefix: -sp
- id: st
  doc: "'seq title' -sd 'desc of seq' -sr 5 -se \\"
  type: boolean
  inputBinding:
    prefix: -st
- id: fp
  doc: "'sample/videos/air.mp4' \\"
  type: boolean
  inputBinding:
    prefix: -fp
- id: ft
  doc: "'video title' -fd 'desc of video' -fr 1"
  type: boolean
  inputBinding:
    prefix: -ft
- id: st
  doc: "'my sequence title'"
  type: boolean
  inputBinding:
    prefix: -st
- id: sp
  doc: "'sample/seqence/steam/steam_rotation0360.png'"
  type: boolean
  inputBinding:
    prefix: -sp
outputs: []
cwlVersion: v1.1
baseCommand:
- seedme.py
