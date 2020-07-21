class: CommandLineTool
id: ../../../ExpansionHunterDenovo_merge.cwl
inputs:
- id: reference
  doc: FASTA file with reference assembly
  type: string
  inputBinding:
    prefix: --reference
- id: manifest
  doc: TSV with sample names and absolute paths
  type: string
  inputBinding:
    prefix: --manifest
- id: output_prefix
  doc: Prefix for the output files
  type: string
  inputBinding:
    prefix: --output-prefix
- id: min_unit_len
  doc: (=2)  Shortest repeat unit to consider
  type: string
  inputBinding:
    prefix: --min-unit-len
- id: max_unit_len
  doc: (=20) Longest repeat unit to consider
  type: string
  inputBinding:
    prefix: --max-unit-len
outputs: []
cwlVersion: v1.1
baseCommand:
- ExpansionHunterDenovo
- merge
