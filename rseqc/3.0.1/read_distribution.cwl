class: CommandLineTool
id: ../../../read_distribution.py.cwl
inputs:
- id: input_file
  doc: Alignment file in BAM or SAM format.
  type: string
  inputBinding:
    prefix: --input-file
- id: ref_gene
  doc: Reference gene model in bed format.
  type: string
  inputBinding:
    prefix: --refgene
outputs: []
cwlVersion: v1.1
baseCommand:
- read_distribution.py
