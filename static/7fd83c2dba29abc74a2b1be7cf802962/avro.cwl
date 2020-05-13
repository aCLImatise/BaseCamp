class: CommandLineTool
id: avro.cwl
inputs:
- id: count
  doc: number of records to print
  type: string
  inputBinding:
    prefix: --count
- id: skip
  doc: number of records to skip
  type: string
  inputBinding:
    prefix: --skip
- id: format
  doc: record format
  type: string
  inputBinding:
    prefix: --format
- id: header
  doc: print CSV header
  type: boolean
  inputBinding:
    prefix: --header
- id: filter
  doc: filter records (e.g. r['age']>1)
  type: string
  inputBinding:
    prefix: --filter
- id: print_schema
  doc: print schema
  type: boolean
  inputBinding:
    prefix: --print-schema
- id: fields
  doc: fields to show, comma separated (show all by default)
  type: string
  inputBinding:
    prefix: --fields
- id: schema
  doc: schema file (required)
  type: string
  inputBinding:
    prefix: --schema
- id: input_type
  doc: input file(s) type (json or csv)
  type: string
  inputBinding:
    prefix: --input-type
- id: output
  doc: output file
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- avro
