class: CommandLineTool
id: pdb4amber.cwl
inputs:
- id: in_in
  doc: 'PDB input file (default: stdin)'
  type: File
  inputBinding:
    prefix: --in
- id: in_out
  doc: 'PDB output file (default: stdout)'
  type: File
  inputBinding:
    prefix: --out
- id: in_no_hyd
  doc: 'remove all hydrogen atoms (default: no)'
  type: boolean
  inputBinding:
    prefix: --nohyd
- id: in_dry
  doc: 'remove all water molecules (default: no)'
  type: boolean
  inputBinding:
    prefix: --dry
- id: in_strip
  doc: 'Strip given atom mask, (default: no)'
  type: string
  inputBinding:
    prefix: --strip
- id: in_mutate
  doc: Mutate residue
  type: string
  inputBinding:
    prefix: --mutate
- id: in_prot
  doc: 'keep only protein residues (default: no)'
  type: boolean
  inputBinding:
    prefix: --prot
- id: in_amber_compatible_residues
  doc: 'keep only Amber-compatible residues (default: no)'
  type: boolean
  inputBinding:
    prefix: --amber-compatible-residues
- id: in_constant_ph
  doc: rename GLU,ASP,HIS for constant pH simulation
  type: boolean
  inputBinding:
    prefix: --constantph
- id: in_most_populous
  doc: keep most populous alt. conf. (default is to keep 'A')
  type: boolean
  inputBinding:
    prefix: --most-populous
- id: in_keep_alt_locs
  doc: Keep alternative conformations
  type: boolean
  inputBinding:
    prefix: --keep-altlocs
- id: in_reduce
  doc: 'Run Reduce first to add hydrogens. (default: no)'
  type: boolean
  inputBinding:
    prefix: --reduce
- id: in_no_reduce_db
  doc: "If reduce is on, skip using it for hetatoms. (default:\nusual reduce behavior\
    \ for hetatoms)"
  type: boolean
  inputBinding:
    prefix: --no-reduce-db
- id: in_pdbid
  doc: fetch structure with given pdbid, should combined with
  type: boolean
  inputBinding:
    prefix: --pdbid
- id: in_add_missing_atoms
  doc: Use tleap to add missing atoms. (EXPERIMENTAL OPTION)
  type: boolean
  inputBinding:
    prefix: --add-missing-atoms
- id: in_model
  doc: "Model to use from a multi-model pdb file (integer).\n(default: use 1st model).\
    \ Use a negative number to\nkeep all models"
  type: long
  inputBinding:
    prefix: --model
- id: in_log_file
  doc: log filename
  type: File
  inputBinding:
    prefix: --logfile
- id: in_leap_template
  doc: write a leap template for easy adaption (EXPERIMENTAL)
  type: boolean
  inputBinding:
    prefix: --leap-template
- id: in_no_conect
  doc: Not write S-S conect record
  type: boolean
  inputBinding:
    prefix: --no-conect
- id: in_noter
  doc: Not writing TER
  type: boolean
  inputBinding:
    prefix: --noter
- id: in_input
  doc: 'PDB input file (default: stdin)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'PDB output file (default: stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- pdb4amber
