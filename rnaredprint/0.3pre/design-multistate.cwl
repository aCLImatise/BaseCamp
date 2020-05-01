#!/usr/bin/env cwl-runner

baseCommand:
- design-multistate.py
class: CommandLineTool
cwlVersion: v1.0
id: design-multistate.py
inputs:
- doc: "Read structures from input file. Default: read from stdin. Format must be\
    \ dot-bracket structures, each per one line with a trailing line containing only\
    \ a semi- colon. (default: <_io.TextIOWrapper name='<stdin>' mode='r' encoding='UTF-8'>)"
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: 'Temperature of the energy calculations. (default: 37.0)'
  id: temperature
  inputBinding:
    prefix: --temperature
  type: string
- doc: 'Number of designs to generate (default: 1000)'
  id: number
  inputBinding:
    prefix: --number
  type: string
- doc: 'Model for getting a new sequence: uniform, nussinov, basepairs, stacking (default:
    basepairs)'
  id: model
  inputBinding:
    prefix: --model
  type: string
- doc: 'Target energy (default: None)'
  id: energy
  inputBinding:
    prefix: --energy
  type: string
- doc: 'Target GC content. (default: 0.5)'
  id: gc
  inputBinding:
    prefix: --gc
  type: string
- doc: 'Tolerated relative deviation of simple energies. (default: 0.3)'
  id: simple_tolerance
  inputBinding:
    prefix: --simple_tolerance
  type: string
- doc: 'Turner energy tolerance of energies (default: 1 kcal/mol, turn off by values
    <0) (default: 1)'
  id: tolerance
  inputBinding:
    prefix: --tolerance
  type: string
- doc: 'Tolerated relative deviation to target GC content. (default: 0.1)'
  id: gc_tolerance
  inputBinding:
    prefix: --gctolerance
  type: string
- doc: 'Output csv format (with additional information) (default: False)'
  id: csv_output
  inputBinding:
    prefix: --csv_output
  type: boolean
- doc: 'Show debug information of library (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
