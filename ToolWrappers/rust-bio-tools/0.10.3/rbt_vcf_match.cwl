class: CommandLineTool
id: rbt_vcf_match.cwl
inputs:
- id: in_max_dist
  doc: 'Maximum distance between centres of two indels considered to match. [default:
    20]'
  type: long?
  inputBinding:
    prefix: --max-dist
- id: in_max_len_diff
  doc: 'Maximum difference between lengths of two indels. [default: 10]'
  type: long?
  inputBinding:
    prefix: --max-len-diff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-match
