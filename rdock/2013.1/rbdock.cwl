class: CommandLineTool
id: ../../../rbdock.cwl
inputs:
- id: input
  doc: input file
  type: string
  inputBinding:
    prefix: -input
- id: output
  doc: output file
  type: string
  inputBinding:
    prefix: -output
- id: receptor
  doc: receptor file
  type: string
  inputBinding:
    prefix: -receptor
- id: protocol
  doc: protocol file
  type: string
  inputBinding:
    prefix: -protocol
- id: runs
  doc: number of runs
  type: long
  inputBinding:
    prefix: -runs
- id: trace
  doc: trace level for debugging
  type: long
  inputBinding:
    prefix: -trace
- id: seed
  doc: random seed
  type: long
  inputBinding:
    prefix: -seed
- id: ap
  doc: protonate groups
  type: boolean
  inputBinding:
    prefix: -ap
- id: an
  doc: DEprotonate groups
  type: boolean
  inputBinding:
    prefix: -an
- id: all_h
  doc: read all Hs
  type: boolean
  inputBinding:
    prefix: -allH
- id: target
  doc: target score
  type: string
  inputBinding:
    prefix: -target
- id: cont
  doc: continue even if target met
  type: boolean
  inputBinding:
    prefix: -cont
- id: receptor_dot_prm
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: protocol_dot_prm
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- rbdock
