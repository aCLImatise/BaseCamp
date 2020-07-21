class: CommandLineTool
id: ../../../fragment_4dnpairs.pl.cwl
inputs:
- id: allow_replacement
  doc: ': allows replacing existing frag1/frag2 columns. Default: abort if the columns
    already exist.'
  type: boolean
  inputBinding:
    prefix: --allow-replacement
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: site
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- fragment_4dnpairs.pl
