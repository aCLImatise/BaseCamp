class: CommandLineTool
id: scanwise_server.cwl
inputs:
- id: in_compress
  doc: use compressed index, for large indexes
  type: boolean?
  inputBinding:
    prefix: -compress
- id: in_hash
  doc: use glib hash not array (far slower, but easier on the memory for small DBs)
  type: boolean?
  inputBinding:
    prefix: -hash
- id: in_two_hit
  doc: use two hit seed HSP strategy (can be faster for big databases)
  type: boolean?
  inputBinding:
    prefix: -twohit
- id: in_streamed
  doc: use streamed index (more compact, higher run-time)
  type: boolean?
  inputBinding:
    prefix: -streamed
- id: in_oc_file
  doc: occupancy file for array/streamed indexes (large), for debugging
  type: boolean?
  inputBinding:
    prefix: -ocfile
- id: in_use_vanilla
  doc: use a vanilla implementation only
  type: boolean?
  inputBinding:
    prefix: -usevanilla
- id: in_usethreads
  doc: use a threaded query scan implementation only
  type: boolean?
  inputBinding:
    prefix: -usethreads
- id: in_threaded_db
  doc: use a threaded database scan implementation
  type: boolean?
  inputBinding:
    prefix: -threadeddb
- id: in_ordered
  doc: use ordered access implementation
  type: boolean?
  inputBinding:
    prefix: -ordered
- id: in_thread_no
  doc: '[2] number of threads for threaded scan implementation'
  type: boolean?
  inputBinding:
    prefix: -threadno
- id: in_drop_off
  doc: '[40] hsp drop off parameter'
  type: boolean?
  inputBinding:
    prefix: -drop_off
- id: in_array_numb
  doc: '[1000000] hard array numb level in index building'
  type: boolean?
  inputBinding:
    prefix: -array_numb
- id: in_seq_load_tile
  doc: tiling skip of load (default 1)
  type: boolean?
  inputBinding:
    prefix: -seqloadtile
- id: in_seq_load_report
  doc: report (using info) at what stagger rating (default none)
  type: long?
  inputBinding:
    prefix: -seqloadreport
- id: in_seq_load_trunc
  doc: <number>  truncate load after this number of sequeneces (useful for debugging)
  type: boolean?
  inputBinding:
    prefix: -seqloadtrunc
- id: in_seq_load_start
  doc: <number>  start position in database for seq load
  type: boolean?
  inputBinding:
    prefix: -seqloadstart
- id: in_seq_load_end
  doc: <number>  end position in database for seq load
  type: boolean?
  inputBinding:
    prefix: -seqloadend
- id: in_version
  doc: show version and compile info
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_silent
  doc: No messages    on stderr
  type: boolean?
  inputBinding:
    prefix: -silent
- id: in_quiet
  doc: No report/info on stderr
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_error_off_std
  doc: warning messages to stderr
  type: string?
  inputBinding:
    prefix: -erroroffstd
- id: in_error_log
  doc: '[file] Log warning messages to file'
  type: boolean?
  inputBinding:
    prefix: -errorlog
- id: in_error_style
  doc: '[server/program] style of error reporting (default program)'
  type: boolean?
  inputBinding:
    prefix: -errorstyle
- id: in_options
  doc: -port         port to bind to (default 4050)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scanwise_server
