class: CommandLineTool
id: augur_import_beast.cwl
inputs:
- id: in_output_node_data
  doc: OUTPUT_NODE_DATA
  type: string
  inputBinding:
    prefix: --output-node-data
- id: in_mcc
  doc: BEAST MCC tree
  type: string
  inputBinding:
    prefix: --mcc
- id: in_most_recent_tip_date
  doc: "Numeric date of most recent tip in tree (--tip-date-\nregex, --tip-date-format\
    \ and --tip-date-delimeter are\nignored if this is set)"
  type: string
  inputBinding:
    prefix: --most-recent-tip-date
- id: in_tip_date_regex
  doc: regex to extract dates from tip names
  type: string
  inputBinding:
    prefix: --tip-date-regex
- id: in_tip_date_format
  doc: Format of date (if extracted by regex)
  type: string
  inputBinding:
    prefix: --tip-date-format
- id: in_tip_date_deli_meter
  doc: "delimeter used in tip-date-format. Used to match\npartial dates."
  type: string
  inputBinding:
    prefix: --tip-date-delimeter
- id: in_verbose
  doc: Display verbose output. Only useful for debugging.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_recursion_limit
  doc: Set a custom recursion limit (dangerous!)
  type: string
  inputBinding:
    prefix: --recursion-limit
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- augur
- import
- beast
