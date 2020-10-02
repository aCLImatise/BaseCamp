class: CommandLineTool
id: admixture.cwl
inputs:
- id: in_jx
  doc: ': do computation on X threads'
  type: boolean
  inputBinding:
    prefix: -jX
- id: in_seed
  doc: ': use random seed X for initialization'
  type: string
  inputBinding:
    prefix: --seed
- id: in_method
  doc: '=[em|block]     : set method.  block is default'
  type: boolean
  inputBinding:
    prefix: --method
- id: in_acceleration
  doc: "|\nsqs<X> |\nqn<X>      : set acceleration"
  type: string
  inputBinding:
    prefix: --acceleration
- id: in_set_major_criterion
  doc: ': set major convergence criterion (for point estimation)'
  type: string
  inputBinding:
    prefix: -C
- id: in_set_minor_criterion
  doc: ': set minor convergence criterion (for bootstrap and CV reestimates)'
  type: string
  inputBinding:
    prefix: -c
- id: in_b
  doc: '[X]      : do bootstrapping [with X replicates]'
  type: boolean
  inputBinding:
    prefix: -B
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- admixture
