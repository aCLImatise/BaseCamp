class: CommandLineTool
id: jstack.cwl
inputs:
- id: in_long_listing_information
  doc: long listing. Prints additional information about locks
  type: boolean
  inputBinding:
    prefix: -l
- id: in_extended_listing_information
  doc: extended listing. Prints additional information about threads
  type: boolean
  inputBinding:
    prefix: -e
- id: in_pid
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
- jstack
