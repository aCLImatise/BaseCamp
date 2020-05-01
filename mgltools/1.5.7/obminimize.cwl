#!/usr/bin/env cwl-runner

baseCommand:
- obminimize
class: CommandLineTool
cwlVersion: v1.0
id: obminimize
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
- doc: set convergence criteria (default=1e-6)
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: use conjugate gradients algorithm (default)
  id: cg
  inputBinding:
    prefix: -cg
  type: boolean
- doc: use steepest descent algorithm
  id: sd
  inputBinding:
    prefix: -sd
  type: boolean
- doc: use Newton2Num linesearch (default=Simple)
  id: newton
  inputBinding:
    prefix: -newton
  type: boolean
- doc: 'select a forcefield:'
  id: ff
  inputBinding:
    prefix: -ff
  type: string
- doc: specify the maximum numer of steps (default=2500)
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: use cut-off (default=don't use cut-off)
  id: cut
  inputBinding:
    prefix: -cut
  type: boolean
- doc: specify the VDW cut-off distance (default=6.0)
  id: rv_dw
  inputBinding:
    prefix: -rvdw
  type: string
- doc: specify the Electrostatic cut-off distance (default=10.0)
  id: rele
  inputBinding:
    prefix: -rele
  type: string
- doc: specify the frequency to update the non-bonded pairs (default=10)
  id: pf
  inputBinding:
    prefix: -pf
  type: string
