class: CommandLineTool
id: filter_seer.cwl
inputs:
- id: k
  doc: '[ --kmers ] arg     file of output from seer'
  type: boolean
  inputBinding:
    prefix: -k
- id: chisq
  doc: minimum unadjusted p-value to output
  type: string
  inputBinding:
    prefix: --chisq
- id: pval
  doc: minimum adjusted p-value to output
  type: string
  inputBinding:
    prefix: --pval
- id: maf
  doc: minimum maf/max 1-maf to output
  type: string
  inputBinding:
    prefix: --maf
- id: beta
  doc: minimum |beta| to output
  type: string
  inputBinding:
    prefix: --beta
- id: substr
  doc: remove smaller kmers completely represented elsewhere
  type: boolean
  inputBinding:
    prefix: --substr
- id: pos_beta
  doc: output positive effect sizes only
  type: boolean
  inputBinding:
    prefix: --pos_beta
- id: s
  doc: '[ --sort ] arg      field to sort on: chisq, pval, maf or beta'
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_seer
