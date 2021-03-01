class: CommandLineTool
id: obminimize.cwl
inputs:
- id: in_set_criteria_defaulte
  doc: set convergence criteria (default=1e-6)
  type: double?
  inputBinding:
    prefix: -c
- id: in_cg
  doc: use conjugate gradients algorithm (default)
  type: boolean?
  inputBinding:
    prefix: -cg
- id: in_sd
  doc: use steepest descent algorithm
  type: boolean?
  inputBinding:
    prefix: -sd
- id: in_newton
  doc: use Newton2Num linesearch (default=Simple)
  type: boolean?
  inputBinding:
    prefix: -newton
- id: in_ff
  doc: 'select a forcefield:'
  type: string?
  inputBinding:
    prefix: -ff
- id: in_specify_maximum_numer
  doc: specify the maximum numer of steps (default=2500)
  type: long?
  inputBinding:
    prefix: -n
- id: in_cut
  doc: use cut-off (default=don't use cut-off)
  type: boolean?
  inputBinding:
    prefix: -cut
- id: in_rv_dw
  doc: specify the VDW cut-off distance (default=6.0)
  type: double?
  inputBinding:
    prefix: -rvdw
- id: in_rele
  doc: specify the Electrostatic cut-off distance (default=10.0)
  type: double?
  inputBinding:
    prefix: -rele
- id: in_pf
  doc: specify the frequency to update the non-bonded pairs (default=10)
  type: long?
  inputBinding:
    prefix: -pf
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openbabel:3.1.1
cwlVersion: v1.1
baseCommand:
- obminimize
