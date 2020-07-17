class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mashclust.py.cwl
inputs:
- id: input
  doc: REQUIRED.Input FASTA file
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Output directory to extract clusteres FASTA
  type: string
  inputBinding:
    prefix: --output
- id: distance
  doc: Threshold distance to cluster sequences[0-1] 0(identical) 1(unrelated) (default
    0.5)
  type: string
  inputBinding:
    prefix: --distance
- id: output_grouped
  doc: Output clustered (non representative sequences
  type: boolean
  inputBinding:
    prefix: --output_grouped
- id: common_mash_reference_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mashclust.py
