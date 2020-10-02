class: CommandLineTool
id: filter_seer.cwl
inputs:
- id: in_arg_file_output
  doc: '[ --kmers ] arg     file of output from seer'
  type: File
  inputBinding:
    prefix: -k
- id: in_chisq
  doc: minimum unadjusted p-value to output
  type: string
  inputBinding:
    prefix: --chisq
- id: in_pval
  doc: minimum adjusted p-value to output
  type: string
  inputBinding:
    prefix: --pval
- id: in_maf
  doc: minimum maf/max 1-maf to output
  type: long
  inputBinding:
    prefix: --maf
- id: in_beta
  doc: minimum |beta| to output
  type: string
  inputBinding:
    prefix: --beta
- id: in_substr
  doc: remove smaller kmers completely represented elsewhere
  type: boolean
  inputBinding:
    prefix: --substr
- id: in_pos_beta
  doc: output positive effect sizes only
  type: boolean
  inputBinding:
    prefix: --pos_beta
- id: in_arg_field_sort
  doc: '[ --sort ] arg      field to sort on: chisq, pval, maf or beta'
  type: boolean
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_file_output
  doc: '[ --kmers ] arg     file of output from seer'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_file_output)
cwlVersion: v1.1
baseCommand:
- filter_seer
