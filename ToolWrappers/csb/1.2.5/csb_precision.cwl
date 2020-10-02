class: CommandLineTool
id: csb_precision.cwl
inputs:
- id: in_pdb
  doc: "the PDB database (a directory containing all PDB\nfiles)"
  type: Directory
  inputBinding:
    prefix: --pdb
- id: in_native
  doc: native structure of the target (PDB file)
  type: File
  inputBinding:
    prefix: --native
- id: in_chain
  doc: chain identifier (if not specified, the first chain)
  type: string
  inputBinding:
    prefix: --chain
- id: in_top
  doc: read top N fragments per position (default=25)
  type: long
  inputBinding:
    prefix: --top
- id: in_cpu
  doc: maximum degree of parallelism (default=8)
  type: long
  inputBinding:
    prefix: --cpu
- id: in_rmsd
  doc: RMSD cutoff for precision and coverage (default=1.5)
  type: double
  inputBinding:
    prefix: --rmsd
- id: in_output
  doc: output directory (default=.)
  type: Directory
  inputBinding:
    prefix: --output
- id: in_save_structures
  doc: "create a PDB file for each fragment, superimposed over\nthe native (default=False)\n"
  type: boolean
  inputBinding:
    prefix: --save-structures
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output directory (default=.)
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- csb-precision
