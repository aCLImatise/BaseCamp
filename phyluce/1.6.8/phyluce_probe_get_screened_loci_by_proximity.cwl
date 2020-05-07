class: CommandLineTool
id: phyluce_probe_get_screened_loci_by_proximity.cwl
inputs:
- id: input
  doc: The FASTA file of input sequences
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output FASTA file of filtered sequences
  type: string
  inputBinding:
    prefix: --output
- id: distance
  doc: The minimum distance on which to filter
  type: string
  inputBinding:
    prefix: --distance
- id: length
  doc: The minimum length of sequences to filter
  type: long
  inputBinding:
    prefix: --length
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_screened_loci_by_proximity
