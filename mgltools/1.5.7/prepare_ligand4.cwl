#!/usr/bin/env cwl-runner

baseCommand:
- prepare_ligand4.py
class: CommandLineTool
cwlVersion: v1.0
id: prepare_ligand4.py
inputs:
- doc: ligand_filename (.pdb or .mol2 or .pdbq format)
  id: l
  inputBinding:
    prefix: -l
  type: boolean
