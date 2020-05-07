class: CommandLineTool
id: obminimize.cwl
inputs:
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: c
  doc: set convergence criteria (default=1e-6)
  type: string
  inputBinding:
    prefix: -c
- id: cg
  doc: use conjugate gradients algorithm (default)
  type: boolean
  inputBinding:
    prefix: -cg
- id: sd
  doc: use steepest descent algorithm
  type: boolean
  inputBinding:
    prefix: -sd
- id: newton
  doc: use Newton2Num linesearch (default=Simple)
  type: boolean
  inputBinding:
    prefix: -newton
- id: ff
  doc: 'select a forcefield:'
  type: string
  inputBinding:
    prefix: -ff
- id: n
  doc: specify the maximum numer of steps (default=2500)
  type: string
  inputBinding:
    prefix: -n
- id: cut
  doc: use cut-off (default=don't use cut-off)
  type: boolean
  inputBinding:
    prefix: -cut
- id: rv_dw
  doc: specify the VDW cut-off distance (default=6.0)
  type: string
  inputBinding:
    prefix: -rvdw
- id: rele
  doc: specify the Electrostatic cut-off distance (default=10.0)
  type: string
  inputBinding:
    prefix: -rele
- id: pf
  doc: specify the frequency to update the non-bonded pairs (default=10)
  type: string
  inputBinding:
    prefix: -pf
outputs: []
cwlVersion: v1.1
baseCommand:
- obminimize
