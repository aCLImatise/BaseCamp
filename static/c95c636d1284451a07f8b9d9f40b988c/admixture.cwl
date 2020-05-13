class: CommandLineTool
id: admixture.cwl
inputs:
- id: a
  doc: '.bed file                                                     '
  type: string
  inputBinding:
    prefix: '- a'
- id: a
  doc: '"12" coded .ped file                                        '
  type: string
  inputBinding:
    prefix: '- a'
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
- id: c
  doc: ': set major convergence criterion (for point estimation)             '
  type: string
  inputBinding:
    prefix: -C
- id: c
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
