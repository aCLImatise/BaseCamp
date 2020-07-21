class: CommandLineTool
id: ../../../admixture.cwl
inputs:
- id: jx
  doc: ': do computation on X threads                                '
  type: boolean
  inputBinding:
    prefix: -jX
- id: seed
  doc: ': use random seed X for initialization                       '
  type: string
  inputBinding:
    prefix: --seed
- id: set_major_criterion
  doc: ': set major convergence criterion (for point estimation)             '
  type: string
  inputBinding:
    prefix: -C
- id: set_minor_criterion
  doc: ': set minor convergence criterion (for bootstrap and CV reestimates) '
  type: string
  inputBinding:
    prefix: -c
- id: b
  doc: '[X]      : do bootstrapping [with X replicates]                         '
  type: boolean
  inputBinding:
    prefix: -B
outputs: []
cwlVersion: v1.1
baseCommand:
- admixture
