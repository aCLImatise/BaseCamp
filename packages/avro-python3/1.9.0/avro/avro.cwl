class: CommandLineTool
id: avro.cwl
inputs:
- id: in_count
  doc: number of records to print
  type: long
  inputBinding:
    prefix: --count
- id: in_skip
  doc: number of records to skip
  type: long
  inputBinding:
    prefix: --skip
- id: in_format
  doc: record format
  type: string
  inputBinding:
    prefix: --format
- id: in_header
  doc: print CSV header
  type: boolean
  inputBinding:
    prefix: --header
- id: in_filter
  doc: filter records (e.g. r["age"]>1)
  type: long
  inputBinding:
    prefix: --filter
- id: in_print_schema
  doc: print schema
  type: boolean
  inputBinding:
    prefix: --print-schema
- id: in_fields
  doc: fields to show, comma separated (show all by default)
  type: string
  inputBinding:
    prefix: --fields
- id: in_schema
  doc: schema file (required)
  type: File
  inputBinding:
    prefix: --schema
- id: in_input_type
  doc: input file(s) type (json or csv)
  type: string
  inputBinding:
    prefix: --input-type
- id: in_output
  doc: "output file\n"
  type: File
  inputBinding:
    prefix: --output
- id: in_cat_vertical_line_write
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output file\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- avro
