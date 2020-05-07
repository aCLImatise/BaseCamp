class: CommandLineTool
id: buildPosMap.cwl
inputs:
- id: o
  doc: write the output here
  type: string
  inputBinding:
    prefix: -o
- id: i
  doc: read the assembly from here; default is to read stdin
  type: string
  inputBinding:
    prefix: -i
- id: g
  doc: if supplied, also report deleted reads and read/mate library information
  type: string
  inputBinding:
    prefix: -g
- id: u
  doc: write unplaced surrogate reads 'sfgctg' and 'sfgscf' (LARGE!)
  type: boolean
  inputBinding:
    prefix: -U
outputs: []
cwlVersion: v1.1
baseCommand:
- buildPosMap
