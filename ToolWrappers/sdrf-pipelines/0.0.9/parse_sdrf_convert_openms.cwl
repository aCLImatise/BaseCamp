class: CommandLineTool
id: parse_sdrf_convert_openms.cwl
inputs:
- id: in_sd_rf
  doc: SDRF file
  type: File
  inputBinding:
    prefix: --sdrf
- id: in_raw
  doc: "Keep filenames in experimental design output\nas raw."
  type: string
  inputBinding:
    prefix: --raw
- id: in_legacy
  doc: "/ -m, --modern     legacy=Create artifical sample column not\nneeded in OpenMS\
    \ 2.6."
  type: boolean
  inputBinding:
    prefix: --legacy
- id: in_one_table
  doc: "/ -t2, --twotables\nCreate one-table or two-tables format."
  type: boolean
  inputBinding:
    prefix: --onetable
- id: in_verbose
  doc: / -q, --quiet     Output debug information.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- parse_sdrf
- convert-openms
