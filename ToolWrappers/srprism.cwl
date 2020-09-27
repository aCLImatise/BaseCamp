class: CommandLineTool
id: srprism.cwl
inputs:
- id: in_trace_level
  doc: "[default: warning]\nMinimum message level to report to the log stream. Possible\n\
    values are \"debug\", \"info\", \"warning\", \"error\", \"quiet\"."
  type: long
  inputBinding:
    prefix: --trace-level
- id: in_log_file
  doc: "[optional]\nFile for storing diagnostic messages. Default is standard\nerror.\n"
  type: File
  inputBinding:
    prefix: --log-file
- id: in_cmd
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- srprism
