class: CommandLineTool
id: lorikeet_merge_spoligotypes.cwl
inputs:
- id: in_input
  doc: Input directory that contains all spoligotype files. You can specify multiple
    -i arguments
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output prefix
  type: string?
  inputBinding:
    prefix: --output
- id: in_recursive
  doc: Search input directories recursively [Default=true]
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_pattern
  doc: "File name pattern for the input files. [Default=\".*.spoligotype]\"\n"
  type: File?
  inputBinding:
    prefix: --pattern
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_merge_sp_oligo_types
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lorikeet
- merge-spoligotypes
