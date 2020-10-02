class: CommandLineTool
id: ante_MMPBSA.py.cwl
inputs:
- id: in_prm_top
  doc: "Input \"dry\" complex topology or solvated complex\ntopology"
  type: string
  inputBinding:
    prefix: --prmtop
- id: in_complex_prm_top
  doc: "Complex topology file created by stripping PRMTOP of\nsolvent"
  type: File
  inputBinding:
    prefix: --complex-prmtop
- id: in_receptor_prm_top
  doc: "Receptor topology file created by stripping COMPLEX of\nligand"
  type: File
  inputBinding:
    prefix: --receptor-prmtop
- id: in_ligand_prm_top
  doc: "Ligand topology file created by stripping COMPLEX of\nreceptor"
  type: File
  inputBinding:
    prefix: --ligand-prmtop
- id: in_strip_mask
  doc: "Amber mask of atoms needed to be stripped from PRMTOP\nto make the COMPLEX\
    \ topology file"
  type: File
  inputBinding:
    prefix: --strip-mask
- id: in_receptor_mask
  doc: "Amber mask of atoms needed to be stripped from COMPLEX\nto create RECEPTOR.\
    \ Cannot specify with -n/--ligand-\nmask"
  type: string
  inputBinding:
    prefix: --receptor-mask
- id: in_ligand_mask
  doc: "Amber mask of atoms needed to be stripped from COMPLEX\nto create LIGAND.\
    \ Cannot specify with -m/--receptor-\nmask"
  type: string
  inputBinding:
    prefix: --ligand-mask
- id: in_radii
  doc: "PB/GB Radius set to set in the generated topology\nfiles. This is equivalent\
    \ to \"set PBRadii <radius>\" in\nLEaP. Options are bondi, mbondi2, mbondi3, amber6,\
    \ and\nmbondi and the default is to use the existing radii.\n"
  type: long
  inputBinding:
    prefix: --radii
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ante-MMPBSA.py
