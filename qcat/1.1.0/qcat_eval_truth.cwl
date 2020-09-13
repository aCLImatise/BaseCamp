class: CommandLineTool
id: ../../../qcat_eval_truth.cwl
inputs:
- id: in_tsv
  doc: ''
  type: string
  inputBinding:
    prefix: --tsv
- id: in_name
  doc: ''
  type: string
  inputBinding:
    prefix: --name
- id: in_genomes
  doc: ''
  type: string
  inputBinding:
    prefix: --genomes
- id: in_max
  doc: ''
  type: long
  inputBinding:
    prefix: --max
- id: in_fast_q
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qcat-eval-truth
