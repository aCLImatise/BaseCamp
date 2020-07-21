class: CommandLineTool
id: ../../../o_fasta_length_distribution.cwl
inputs:
- id: output
  doc: Output file name to store distribution figure
  type: string
  inputBinding:
    prefix: --output
- id: title
  doc: Title for the figure
  type: string
  inputBinding:
    prefix: --title
- id: fast_a
  doc: FASTA formatted sequences file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- o-fasta-length-distribution
