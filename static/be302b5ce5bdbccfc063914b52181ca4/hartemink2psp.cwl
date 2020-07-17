class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hartemink2psp.cwl
inputs:
- id: mod
  doc: '|zoops|tcm   create MEME prior for given model default: zoops'
  type: string
  inputBinding:
    prefix: -mod
- id: epsilon
  doc: 'use epsilon value to rescale scores from [0..1] to [epsilon..1-epsilon] before
    converting to MEME priors default: 1e-200'
  type: string
  inputBinding:
    prefix: -epsilon
- id: rev_comp
  doc: 'double-stranded Hartemink prior default: single-stranded'
  type: boolean
  inputBinding:
    prefix: -revcomp
- id: width
  doc: motif width used to construct prior
  type: string
  inputBinding:
    prefix: -width
outputs: []
cwlVersion: v1.1
baseCommand:
- hartemink2psp
