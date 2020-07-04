class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/motiph.cwl
inputs:
- id: pseudo_count
  doc: (default=0.1)
  type: double
  inputBinding:
    prefix: --pseudocount
- id: output_p_thresh
  doc: (default 1e-4)
  type: double
  inputBinding:
    prefix: --output-pthresh
- id: output_q_thresh
  doc: (default 1.0)
  type: double
  inputBinding:
    prefix: --output-qthresh
- id: seed
  doc: (default from time())
  type: string
  inputBinding:
    prefix: --seed
- id: text
  doc: (default false)
  type: boolean
  inputBinding:
    prefix: --text
- id: verbosity
  doc: '[1|2|3|4] (default 2)'
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tree
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: motif
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- motiph
