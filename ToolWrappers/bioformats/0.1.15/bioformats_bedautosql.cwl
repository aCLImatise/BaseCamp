class: CommandLineTool
id: bioformats_bedautosql.cwl
inputs:
- id: in_name
  doc: 'a table name (default: Table)'
  type: string?
  inputBinding:
    prefix: --name
- id: in_description
  doc: 'a table description (default: Description)'
  type: string?
  inputBinding:
    prefix: --description
- id: in_lines
  doc: "the number of lines to analyzefrom the input file\n(default: 100)\n"
  type: long?
  inputBinding:
    prefix: --lines
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_bed_file
  doc: a BED file
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: an output file
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
- bioformats
- bedautosql
