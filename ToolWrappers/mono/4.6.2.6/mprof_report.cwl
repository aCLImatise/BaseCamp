class: CommandLineTool
id: mprof_report.cwl
inputs:
- id: in_out
  doc: write to FILE instead of stdout
  type: File
  inputBinding:
    prefix: --out
- id: in_traces
  doc: collect and show backtraces
  type: boolean
  inputBinding:
    prefix: --traces
- id: in_max_frames
  doc: limit backtraces to NUM entries
  type: long
  inputBinding:
    prefix: --maxframes
- id: in_reports
  doc: "print the specified reports. Defaults are:\nheader,jit,gc,sample,alloc,call,metadata,exception,monitor,thread,heapshot,counters,coverage"
  type:
  - long
  inputBinding:
    prefix: --reports
- id: in_method_sort
  doc: 'sort methods according to MODE: total, self, calls'
  type: string
  inputBinding:
    prefix: --method-sort
- id: in_alloc_sort
  doc: 'sort allocations according to MODE: bytes, count'
  type: string
  inputBinding:
    prefix: --alloc-sort
- id: in_counters_sort
  doc: "sort counters according to MODE: time, category\nonly accessible in verbose\
    \ mode"
  type: string
  inputBinding:
    prefix: --counters-sort
- id: in_track
  doc: track what happens to objects OBJ1, O2 etc.
  type:
  - long
  inputBinding:
    prefix: --track
- id: in_find
  doc: "find and track objects matching FINFSPEC, where FINDSPEC is:\nS:minimum_size\
    \ or T:partial_name"
  type: string
  inputBinding:
    prefix: --find
- id: in_thread
  doc: consider just the data for thread THREADID
  type: string
  inputBinding:
    prefix: --thread
- id: in_time
  doc: consider data FROM seconds from startup up to TO seconds
  type: string
  inputBinding:
    prefix: --time
- id: in_verbose
  doc: increase verbosity level
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: display decoding debug info for mprof-report devs
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_coverage_out
  doc: write the coverage info to FILE as XML
  type: File
  inputBinding:
    prefix: --coverage-out
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mprof-report
