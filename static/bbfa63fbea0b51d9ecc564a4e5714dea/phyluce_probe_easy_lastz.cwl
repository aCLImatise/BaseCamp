class: CommandLineTool
id: phyluce_probe_easy_lastz.cwl
inputs:
- id: target
  doc: The path to the target file (2bit/fasta)
  type: string
  inputBinding:
    prefix: --target
- id: query
  doc: The path to the query file (2bit/fasta)
  type: string
  inputBinding:
    prefix: --query
- id: output
  doc: The path to the output file
  type: string
  inputBinding:
    prefix: --output
- id: identity
  doc: The minimum percent identity to require for a match
  type: string
  inputBinding:
    prefix: --identity
- id: coverage
  doc: The minimum coverage (%) required for a match
  type: string
  inputBinding:
    prefix: --coverage
- id: min_match
  doc: The minimum number of base pairs required for a match
  type: long
  inputBinding:
    prefix: --min_match
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_easy_lastz
