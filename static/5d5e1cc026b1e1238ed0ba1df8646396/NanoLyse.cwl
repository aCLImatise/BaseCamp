class: CommandLineTool
id: NanoLyse.cwl
inputs:
- id: in_reference
  doc: Specify a reference fasta file against which to filter.
  type: File
  inputBinding:
    prefix: --reference
- id: in_log_file
  doc: Specify the path and filename for the log file.
  type: File
  inputBinding:
    prefix: --logfile
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- NanoLyse
