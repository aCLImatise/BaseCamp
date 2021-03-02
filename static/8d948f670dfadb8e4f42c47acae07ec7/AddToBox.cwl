class: CommandLineTool
id: AddToBox.cwl
inputs:
- id: in_molecule_cell_pdb
  doc: ': the molecule cell (PDB format)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in__molecule_add
  doc: ': the molecule to add'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_na
  doc: ': the number of copies to add'
  type: boolean?
  inputBinding:
    prefix: -na
- id: in_upper_limit_protein
  doc: ': the upper limit of protein atoms'
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_output_file_pdb
  doc: ': output file (PDB format)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_rw
  doc: ': Clipping radius for solvent atoms'
  type: boolean?
  inputBinding:
    prefix: -RW
- id: in_rp
  doc: ': Clipping radius for protein atoms'
  type: boolean?
  inputBinding:
    prefix: -RP
- id: in_ig
  doc: ': Random number seed'
  type: boolean?
  inputBinding:
    prefix: -IG
- id: in_no
  doc: ": flag for no PDB output (stops after determining the\nprotein fraction of\
    \ the box)"
  type: boolean?
  inputBinding:
    prefix: -NO
- id: in_grid_spacing_search
  doc: ': Grid spacing for search (default 0.2)'
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_recursively_call_addtobox
  doc: ': Recursively call AddToBox until all residues have been'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_path
  doc: ": Path for AddToBox program on subsequent calls\n(default ${AMBERHOME}/bin/AddToBox)\n"
  type: boolean?
  inputBinding:
    prefix: -path
- id: in_added_dot
  doc: (Default 0 ; any other setting activates recursion)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_pdb
  doc: ': output file (PDB format)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_pdb)
hints: []
cwlVersion: v1.1
baseCommand:
- AddToBox
