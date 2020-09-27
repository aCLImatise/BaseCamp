class: CommandLineTool
id: eagle_meta.cwl
inputs:
- id: in_write_value_meta
  doc: write this value as meta information
  type: string
  inputBinding:
    prefix: -s
- id: in_delete
  doc: delete the meta information
  type: boolean
  inputBinding:
    prefix: --delete
- id: in_store_list
  doc: "[STORELIST]\na list containing key value pairs to store\n"
  type: boolean
  inputBinding:
    prefix: --storelist
- id: in_input
  doc: the eagle-data-file
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: the name of the meta information
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- eagle
- meta
