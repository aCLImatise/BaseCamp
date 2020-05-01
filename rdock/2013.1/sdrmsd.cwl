#!/usr/bin/env cwl-runner

baseCommand:
- sdrmsd
class: CommandLineTool
cwlVersion: v1.0
id: sdrmsd
inputs:
- doc: ''
  id: references_df
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: inputs_df
  inputBinding:
    position: 1
  type: string
- doc: Superpose molecules before RMSD calculation
  id: fit
  inputBinding:
    prefix: --fit
  type: boolean
- doc: Discard poses with RMSD < THRESHOLD with respect previous poses which where
    not rejected based on same principle. A Population SDField will be added to output
    SD with the population number.
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
- doc: If declared, write an output SDF file with the input molecules with a new sdfield
    <RMSD>. If molecule was fitted, the fitted molecule coordinates will be saved.
  id: out
  inputBinding:
    prefix: --out
  type: File
