class: CommandLineTool
id: parse_sdrf_convert_openms.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sd_rf
  doc: SDRF file
  type: string
  inputBinding:
    prefix: --sdrf
- id: raw
  doc: Keep filenames in experimental design output as raw.
  type: string
  inputBinding:
    prefix: --raw
- id: legacy
  doc: / -m, --modern     legacy=Create artifical sample column not needed in OpenMS
    2.6.
  type: boolean
  inputBinding:
    prefix: --legacy
- id: one_table
  doc: / -t2, --twotables Create one-table or two-tables format.
  type: boolean
  inputBinding:
    prefix: --onetable
- id: verbose
  doc: / -q, --quiet     Output debug information.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- parse_sdrf
- convert-openms
