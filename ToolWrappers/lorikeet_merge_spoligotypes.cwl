class: CommandLineTool
id: lorikeet_merge_spoligotypes.cwl
inputs:
- id: in__input_valueinput
  doc: "| --input <value>\nInput directory that contains all spoligotype files. You\
    \ can specify multiple -i arguments"
  type: Directory
  inputBinding:
    prefix: -i
- id: in__output_valueoutput
  doc: "| --output <value>\nOutput prefix"
  type: string
  inputBinding:
    prefix: -o
- id: in__recursivesearch_input
  doc: "| --recursive\nSearch input directories recursively [Default=true]"
  type: boolean
  inputBinding:
    prefix: -r
- id: in__pattern_valuefile
  doc: "| --pattern <value>\nFile name pattern for the input files. [Default=\".*.spoligotype]\"\
    \n"
  type: File
  inputBinding:
    prefix: -p
- id: in_jar
  doc: ''
  type: string
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
cwlVersion: v1.1
baseCommand:
- lorikeet
- merge-spoligotypes
