class: CommandLineTool
id: ExpansionHunterDenovo_merge.cwl
inputs:
- id: in_reference
  doc: FASTA file with reference assembly
  type: File
  inputBinding:
    prefix: --reference
- id: in_manifest
  doc: TSV with sample names and absolute paths
  type: string
  inputBinding:
    prefix: --manifest
- id: in_output_prefix
  doc: Prefix for the output files
  type: string
  inputBinding:
    prefix: --output-prefix
- id: in_min_unit_len
  doc: (=2)  Shortest repeat unit to consider
  type: long
  inputBinding:
    prefix: --min-unit-len
- id: in_max_unit_len
  doc: (=20) Longest repeat unit to consider
  type: long
  inputBinding:
    prefix: --max-unit-len
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ExpansionHunterDenovo
- merge
