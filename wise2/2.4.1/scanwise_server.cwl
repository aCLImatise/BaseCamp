class: CommandLineTool
id: scanwise_server.cwl
inputs:
- id: options
  doc: -port         port to bind to (default 4050) -compress     use compressed index,
    for large indexes -hash         use glib hash not array (far slower, but easier
    on the memory for small DBs) -twohit       use two hit seed HSP strategy (can
    be faster for big databases) -streamed     use streamed index (more compact, higher
    run-time) -ocfile       occupancy file for array/streamed indexes (large), for
    debugging
  type: string
  inputBinding:
    position: 0
- id: use_vanilla
  doc: use a vanilla implementation only
  type: boolean
  inputBinding:
    prefix: -usevanilla
- id: usethreads
  doc: use a threaded query scan implementation only
  type: boolean
  inputBinding:
    prefix: -usethreads
- id: threaded_db
  doc: use a threaded database scan implementation
  type: boolean
  inputBinding:
    prefix: -threadeddb
- id: ordered
  doc: use ordered access implementation
  type: boolean
  inputBinding:
    prefix: -ordered
- id: thread_no
  doc: '[2] number of threads for threaded scan implementation'
  type: boolean
  inputBinding:
    prefix: -threadno
- id: drop_off
  doc: '[40] hsp drop off parameter'
  type: boolean
  inputBinding:
    prefix: -drop_off
- id: array_numb
  doc: '[1000000] hard array numb level in index building'
  type: boolean
  inputBinding:
    prefix: -array_numb
- id: version
  doc: show version and compile info
  type: boolean
  inputBinding:
    prefix: -version
- id: silent
  doc: No messages    on stderr
  type: boolean
  inputBinding:
    prefix: -silent
- id: quiet
  doc: No report/info on stderr
  type: boolean
  inputBinding:
    prefix: -quiet
- id: error_off_std
  doc: warning messages to stderr
  type: string
  inputBinding:
    prefix: -erroroffstd
- id: error_log
  doc: '[file] Log warning messages to file'
  type: boolean
  inputBinding:
    prefix: -errorlog
- id: error_style
  doc: '[server/program] style of error reporting (default program)'
  type: boolean
  inputBinding:
    prefix: -errorstyle
outputs: []
cwlVersion: v1.1
baseCommand:
- scanwise_server
