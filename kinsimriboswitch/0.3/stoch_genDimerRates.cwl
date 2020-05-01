#!/usr/bin/env cwl-runner

baseCommand:
- stoch_genDimerRates
class: CommandLineTool
cwlVersion: v1.0
id: stoch_gendimerrates
inputs:
- doc: ''
  id: params
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: monomers_b_map
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: dimers_b_map
  inputBinding:
    position: 2
  type: string
- doc: ':  MFE of the sequence. Used to prevent numerical problems when computing
    the partition functions [0]'
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: ':  Folding temperature in deg Celsius [37]'
  id: t
  inputBinding:
    prefix: -T
  type: string
- doc: ':  Bonus energy for binding the ligand (>=0, in kcal/mol) [9.59]'
  id: b
  inputBinding:
    prefix: -B
  type: string
- doc: ':  Exploration threshold in unconstrained landscape. Used to skip hashing
    of constrained structures below threshold [infinity]'
  id: e
  inputBinding:
    prefix: -E
  type: string
- doc: ':     Be verbose'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
