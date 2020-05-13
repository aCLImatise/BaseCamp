class: CommandLineTool
id: csb_precision.cwl
inputs:
- id: library
  doc: Fragment library file in Rosetta NNmake format
  type: string
  inputBinding:
    position: 0
- id: pdb
  doc: the PDB database (a directory containing all PDB files)
  type: string
  inputBinding:
    prefix: --pdb
- id: native
  doc: native structure of the target (PDB file)
  type: string
  inputBinding:
    prefix: --native
- id: chain
  doc: chain identifier (if not specified, the first chain)
  type: string
  inputBinding:
    prefix: --chain
- id: top
  doc: read top N fragments per position (default=25)
  type: string
  inputBinding:
    prefix: --top
- id: cpu
  doc: maximum degree of parallelism (default=8)
  type: string
  inputBinding:
    prefix: --cpu
- id: rmsd
  doc: RMSD cutoff for precision and coverage (default=1.5)
  type: string
  inputBinding:
    prefix: --rmsd
- id: output
  doc: output directory (default=.)
  type: string
  inputBinding:
    prefix: --output
- id: save_structures
  doc: create a PDB file for each fragment, superimposed over the native (default=False)
  type: boolean
  inputBinding:
    prefix: --save-structures
outputs: []
cwlVersion: v1.1
baseCommand:
- csb-precision
