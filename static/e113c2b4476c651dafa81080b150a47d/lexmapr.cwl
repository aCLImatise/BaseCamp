class: CommandLineTool
id: lexmapr.cwl
inputs:
- id: input_file
  doc: Input csv or tsv file
  type: string
  inputBinding:
    position: 0
- id: o
  doc: '[OUTPUT], --output [OUTPUT] Output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: full
  doc: Full output format
  type: boolean
  inputBinding:
    prefix: --full
- id: config
  doc: Path to JSON file containing the IRI of ontologies to fetch terms from
  type: string
  inputBinding:
    prefix: --config
- id: bucket
  doc: Classify samples into pre-defined buckets
  type: boolean
  inputBinding:
    prefix: --bucket
- id: no_cache
  doc: Ignore or replace online cached resources, if there are any.
  type: boolean
  inputBinding:
    prefix: --no-cache
- id: profile
  doc: 'Pre-defined sets of command-line arguments for specialized purposes: * ifsac:  *
    maps samples to food and environmental resources * classifies samples into ifsac
    labels * outputs content to ``ifsac_output.tsv``'
  type: string
  inputBinding:
    prefix: --profile
outputs: []
cwlVersion: v1.1
baseCommand:
- lexmapr
