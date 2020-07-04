class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/msaboot.cwl
inputs:
- id: input
  doc: The file name of the FASTA file to be used as input.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The file name of the bootstrapped alignment data output, stored in relaxed
    PHYLIP format.
  type: string
  inputBinding:
    prefix: --output
- id: number
  doc: The number of bootstrap replicates.
  type: string
  inputBinding:
    prefix: --number
outputs: []
cwlVersion: v1.1
baseCommand:
- msaboot
