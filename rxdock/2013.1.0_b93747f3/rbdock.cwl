#!/usr/bin/env cwl-runner

baseCommand:
- rbdock
class: CommandLineTool
cwlVersion: v1.0
id: rbdock
inputs:
- doc: input ligand SD file
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: output file name(s) prefix
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: receptor parameter file
  id: receptor_param
  inputBinding:
    prefix: --receptor-param
  type: string
- doc: docking protocol parameter file
  id: docking_param
  inputBinding:
    prefix: --docking-param
  type: string
- doc: 'number of runs per ligand (0 = unlimited) (default: 0)'
  id: number
  inputBinding:
    prefix: --number
  type: string
- doc: protonate all neutral amines, guanidines, imidazoles
  id: proton_ate
  inputBinding:
    prefix: --protonate
  type: boolean
- doc: deprotonate all carboxylic, sulphur and phosphorous acid groups
  id: de_proton_ate
  inputBinding:
    prefix: --deprotonate
  type: boolean
- doc: read all hydrogens present instead of only polar hydrogens
  id: all_hydrogens
  inputBinding:
    prefix: --all-hydrogens
  type: boolean
- doc: score threshold
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
- doc: continue if score threshold is met instead of terminating ligand
  id: continue
  inputBinding:
    prefix: --continue
  type: boolean
- doc: filter file name
  id: filter
  inputBinding:
    prefix: --filter
  type: string
- doc: 'controls output level for debugging (0 = minimal, >0 = more verbose) (default:
    0)'
  id: trace
  inputBinding:
    prefix: --trace
  type: string
- doc: random number seed to use instead of std::random_device
  id: seed
  inputBinding:
    prefix: --seed
  type: string
