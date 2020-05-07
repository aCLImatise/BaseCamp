class: CommandLineTool
id: bs_seeker2_build.py.cwl
inputs:
- id: rrbs
  doc: 'Build index specially for Reduced Representation Bisulfite Sequencing experiments.
    Genome other than certain fragments will be masked. [Default: False]'
  type: boolean
  inputBinding:
    prefix: --rrbs
- id: low
  doc: 'lower bound of fragment length (excluding recognition sequence such as C-CGG)
    [Default: 20]'
  type: string
  inputBinding:
    prefix: --low
- id: up
  doc: 'upper bound of fragment length (excluding recognition sequence such as C-CGG
    ends) [Default: 500]'
  type: string
  inputBinding:
    prefix: --up
- id: cut_site
  doc: 'Cut sites of restriction enzyme. Ex: MspI(C-CGG), Mael:(C-TAG), double-enzyme
    MspI&Mael:(C-CGG,C-TAG). [Default: C-CGG]'
  type: string
  inputBinding:
    prefix: --cut-site
outputs: []
cwlVersion: v1.1
baseCommand:
- bs_seeker2-build.py
