class: CommandLineTool
id: EvoFoldV2.cwl
inputs:
- id: ev_of_old
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: al_gama
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tree_neiw_ck
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: c
  doc: '[ --configFilePath ] arg (=./) Path to EvoFold configuration files.'
  type: boolean
  inputBinding:
    prefix: -c
- id: f
  doc: '[ --completeFile ] arg         Output complete structure predictions for  each
    input element in addition to the  sub-structures.'
  type: boolean
  inputBinding:
    prefix: -f
- id: n
  doc: "[ --annoName ] arg             Name of annotation to use (see annoMap file\
    \ for definition of annotation symbols. Note  that '*' can be used as wildcard.\
    \  Specifying annotation is useful for adding  constraints on the predicted structure."
  type: boolean
  inputBinding:
    prefix: -n
- id: decimals
  doc: (=5)               Output precision of score.
  type: string
  inputBinding:
    prefix: --decimals
- id: o
  doc: '[ --outputFile ] arg (=-)      Output file (default is stdout).'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- EvoFoldV2
