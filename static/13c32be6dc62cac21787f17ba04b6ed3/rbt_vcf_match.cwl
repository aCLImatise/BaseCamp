class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rbt_vcf_match.cwl
inputs:
- id: max_dist
  doc: 'Maximum distance between centres of two indels considered to match. [default:
    20]'
  type: long
  inputBinding:
    prefix: --max-dist
- id: max_len_diff
  doc: 'Maximum difference between lengths of two indels. [default: 10]'
  type: long
  inputBinding:
    prefix: --max-len-diff
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-match
