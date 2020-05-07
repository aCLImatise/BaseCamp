class: CommandLineTool
id: magpurify_tetra_freq.cwl
inputs:
- id: cut_off
  doc: 'Cutoff (default: 0.06)'
  type: string
  inputBinding:
    prefix: --cutoff
- id: weighted_mean
  doc: 'Compute the mean weighted by the contig length (default: False)'
  type: boolean
  inputBinding:
    prefix: --weighted-mean
outputs: []
cwlVersion: v1.1
baseCommand:
- magpurify
- tetra-freq
