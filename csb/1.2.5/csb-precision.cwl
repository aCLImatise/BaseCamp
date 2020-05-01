#!/usr/bin/env cwl-runner

baseCommand:
- csb-precision
class: CommandLineTool
cwlVersion: v1.0
id: csb-precision
inputs:
- doc: Fragment library file in Rosetta NNmake format
  id: library
  inputBinding:
    position: 0
  type: string
- doc: the PDB database (a directory containing all PDB files)
  id: pdb
  inputBinding:
    prefix: --pdb
  type: string
- doc: native structure of the target (PDB file)
  id: native
  inputBinding:
    prefix: --native
  type: string
- doc: chain identifier (if not specified, the first chain)
  id: chain
  inputBinding:
    prefix: --chain
  type: string
- doc: read top N fragments per position (default=25)
  id: top
  inputBinding:
    prefix: --top
  type: string
- doc: maximum degree of parallelism (default=8)
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
- doc: RMSD cutoff for precision and coverage (default=1.5)
  id: rmsd
  inputBinding:
    prefix: --rmsd
  type: string
- doc: output directory (default=.)
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: create a PDB file for each fragment, superimposed over the native (default=False)
  id: save_structures
  inputBinding:
    prefix: --save-structures
  type: boolean
