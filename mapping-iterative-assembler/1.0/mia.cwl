class: CommandLineTool
id: mia.cwl
inputs:
- id: s
  doc: (if not supplied an default matrix is used)
  type: string
  inputBinding:
    prefix: -s
- id: m
  doc: <root file name for maln output file(s)> (assembly.maln.iter)
  type: boolean
  inputBinding:
    prefix: -m
- id: i
  doc: <filename of list of sequence IDs to use, ignoring all others>
  type: boolean
  inputBinding:
    prefix: -I
- id: h
  doc: <do not do dynamic score cutoff, instead use this Hard score cutoff>
  type: boolean
  inputBinding:
    prefix: -H
- id: s
  doc: <slope of length/score cutoff line>
  type: boolean
  inputBinding:
    prefix: -S
- id: n
  doc: <intercept of length/score cutoff line>
  type: boolean
  inputBinding:
    prefix: -N
outputs: []
cwlVersion: v1.1
baseCommand:
- mia
