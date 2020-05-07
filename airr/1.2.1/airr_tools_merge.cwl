class: CommandLineTool
id: airr_tools_merge.cwl
inputs:
- id: o
  doc: Output file name.
  type: string
  inputBinding:
    prefix: -o
- id: drop
  doc: If specified, drop fields that do not exist in all input files. Otherwise,
    include all columns in all files and fill missing data with empty strings.
  type: boolean
  inputBinding:
    prefix: --drop
- id: a
  doc: A list of AIRR rearrangement files.
  type: string[]
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- airr-tools
- merge
