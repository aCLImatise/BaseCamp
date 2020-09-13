class: CommandLineTool
id: ../../../loganalyser.cwl
inputs:
- id: in_burnin
  doc: ''
  type: string
  inputBinding:
    prefix: -burnin
- id: in_percentage_log_file
  doc: percentage of log file to disregard, default 10
  type: File
  inputBinding:
    prefix: -b
- id: in_one_line
  doc: "only one line of output per file.\nHeader is generated from the first file\
    \ only.\n(Implies quiet mode.)"
  type: File
  inputBinding:
    prefix: -oneline
- id: in_quiet
  doc: mode.  Avoid printing status updates to stderr.
  type: string
  inputBinding:
    prefix: -quiet
- id: in_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help
- id: in_this_message
  doc: this message
  type: string
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_one_line
  doc: "only one line of output per file.\nHeader is generated from the first file\
    \ only.\n(Implies quiet mode.)"
  type: File
  outputBinding:
    glob: $(inputs.in_one_line)
cwlVersion: v1.1
baseCommand:
- loganalyser
