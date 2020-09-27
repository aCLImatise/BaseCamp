class: CommandLineTool
id: ambpdb.cwl
inputs:
- id: in_topology_file_default
  doc: "'Top'       Topology file (default: prmtop)."
  type: boolean
  inputBinding:
    prefix: -p
- id: in__coordinate_file
  doc: "'Coords'    Coordinate file."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_pqr
  doc: PQR (MEAD) format with charges and radii.
  type: boolean
  inputBinding:
    prefix: -pqr
- id: in_mol_two
  doc: TRIPOS MOL2 format.
  type: boolean
  inputBinding:
    prefix: -mol2
- id: in_print_version_information
  doc: Print version information.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_tit
  doc: "Write a REMARK record containing TITLE.\n(default: use prmtop title)"
  type: string
  inputBinding:
    prefix: -tit
- id: in_a_atm
  doc: Left-justified Amber atom names.
  type: boolean
  inputBinding:
    prefix: -aatm
- id: in_sy_by_l
  doc: (MOL2 format only) Convert Amber atom types to SYBYL.
  type: boolean
  inputBinding:
    prefix: -sybyl
- id: in_ac
  doc: (Implies '-sybyl') Atom type corresponding file (optional).
  type: File
  inputBinding:
    prefix: -ac
- id: in_bc
  doc: (Implies '-sybyl') Bond type corresponding file (optional).
  type: File
  inputBinding:
    prefix: -bc
- id: in_conect
  doc: Write CONECT records for all bonds.
  type: boolean
  inputBinding:
    prefix: -conect
- id: in_ep
  doc: Include extra points if present.
  type: boolean
  inputBinding:
    prefix: -ep
- id: in_bres
  doc: Brookhaven Residue names (HIE->HIS, etc.).
  type: boolean
  inputBinding:
    prefix: -bres
- id: in_ctr
  doc: Center molecule on (0,0,0).
  type: boolean
  inputBinding:
    prefix: -ctr
- id: in_noter
  doc: Do not write TER records.
  type: boolean
  inputBinding:
    prefix: -noter
- id: in_ext
  doc: Use PRMTOP extended PDB info, if present.
  type: boolean
  inputBinding:
    prefix: -ext
- id: in_no_box
  doc: Do not write CRYST1 record if box coordinates present.
  type: boolean
  inputBinding:
    prefix: -nobox
- id: in_offset
  doc: Add offset to residue numbers.
  type: long
  inputBinding:
    prefix: -offset
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ambpdb
