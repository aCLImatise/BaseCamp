class: CommandLineTool
id: ../../../lexmapr.cwl
inputs:
- id: in_output_file
  doc: "[OUTPUT], --output [OUTPUT]\nOutput file"
  type: File
  inputBinding:
    prefix: -o
- id: in_full
  doc: Full output format
  type: boolean
  inputBinding:
    prefix: --full
- id: in_config
  doc: Path to JSON file containing the IRI of ontologies to fetch terms from
  type: File
  inputBinding:
    prefix: --config
- id: in_bucket
  doc: Classify samples into pre-defined buckets
  type: boolean
  inputBinding:
    prefix: --bucket
- id: in_no_cache
  doc: Ignore or replace online cached resources, if there are any.
  type: boolean
  inputBinding:
    prefix: --no-cache
- id: in_profile
  doc: "Pre-defined sets of command-line arguments for specialized purposes:\n* ifsac:\n\
    * maps samples to food and environmental resources\n* classifies samples into\
    \ ifsac labels\n* outputs content to ``ifsac_output.tsv``\n"
  type: string
  inputBinding:
    prefix: --profile
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "[OUTPUT], --output [OUTPUT]\nOutput file"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- lexmapr
