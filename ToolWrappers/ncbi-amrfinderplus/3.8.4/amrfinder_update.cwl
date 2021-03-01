class: CommandLineTool
id: amrfinder_update.cwl
inputs:
- id: in_database
  doc: "Directory for all versions of AMRFinder databases\nDefault: /usr/local/bin/data"
  type: Directory?
  inputBinding:
    prefix: --database
- id: in_quiet
  doc: Suppress messages to STDERR
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_threads
  doc: "Max. number of threads\nDefault: 1"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_debug
  doc: Integrity checks
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_log
  doc: "Error log file, appended, opened on application start\n"
  type: File?
  inputBinding:
    prefix: --log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- amrfinder_update
