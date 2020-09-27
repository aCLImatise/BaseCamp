class: CommandLineTool
id: correct_olaps.cwl
inputs:
- id: in_specifies_binary_file
  doc: "specifies binary file to dump corrected erates to\nfor later updating of olap\
    \ store by  update-erates"
  type: File
  inputBinding:
    prefix: -e
- id: in_specify_file_use
  doc: "specify file of sorted overlaps to use (in the format\nproduced by  get-olaps"
  type: boolean
  inputBinding:
    prefix: -F
- id: in_specifies_name_go
  doc: specifies name of file to which OVL messages go
  type: File
  inputBinding:
    prefix: -o
- id: in_overlaps_less_error
  doc: "overlaps less than this error rate are\nautomatically output"
  type: string
  inputBinding:
    prefix: -q
- id: in_specify_binary_store
  doc: specify the binary overlap store containing overlaps to use
  type: boolean
  inputBinding:
    prefix: -S
- id: in_specify_level_higher
  doc: specify level of verbose outputs, higher is more
  type: long
  inputBinding:
    prefix: -v
- id: in_specifies_name_goes
  doc: specifies name of file where list of ovl's to delete goes
  type: File
  inputBinding:
    prefix: -X
- id: in_d
  doc: ''
  type: File
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- correct-olaps
