class: CommandLineTool
id: ../../../varcall.cwl
inputs:
- id: prefix_dot_var
  doc: Variant calls in tab delimited 'varcall' format
  type: string
  inputBinding:
    position: 0
- id: prefix_do_tea_v
  doc: Variant calls in tab delimited 'ea-var' format
  type: string
  inputBinding:
    position: 1
- id: prefix_dot_cse
  doc: Variant calls in tab delimited 'varprowl' format
  type: string
  inputBinding:
    position: 2
- id: prefix_dot_vcf
  doc: Variant calls, in vcf format
  type: string
  inputBinding:
    position: 3
- id: prefix_dot_var_sum
  doc: Summary of variant calls
  type: string
  inputBinding:
    position: 4
- id: prefix_dot_tgt_dot_var
  doc: On-target version of .var
  type: string
  inputBinding:
    position: 5
- id: prefix_dot_tgt_dot_cse
  doc: On-target version of .cse
  type: string
  inputBinding:
    position: 6
- id: prefix_dot_tgt_dot_var_sum
  doc: On-target version of .varsum
  type: string
  inputBinding:
    position: 7
- id: prefix_dot_stats
  doc: Stats output
  type: string
  inputBinding:
    position: 0
- id: prefix_dot_noise
  doc: Non-reference, non-homozygous allele summary
  type: string
  inputBinding:
    position: 1
- id: prefix_do_tx_noise
  doc: Like noise, but with context-specific rates
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- varcall
