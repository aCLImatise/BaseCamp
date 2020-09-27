class: CommandLineTool
id: batchParallel.pl.cwl
inputs:
- id: in_cpu
  doc: '<#> (max number of parallel processes, default: 20)'
  type: boolean
  inputBinding:
    prefix: -cpu
- id: in_file_suffix_ie
  doc: "<file suffix> (instead of stdout, \"flag file.suffix will be used\")\ni.e.\
    \ -o -o txt"
  type: File
  inputBinding:
    prefix: -o
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_suffix_vertical_line_none
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_will
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_run
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_each
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 9
- id: in_provided
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_after
  doc: ''
  type: string
  inputBinding:
    position: 11
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- batchParallel.pl
