class: CommandLineTool
id: pytleap.cwl
inputs:
- id: in_prot
  doc: protein PDB file                       (no default)
  type: File?
  inputBinding:
    prefix: --prot
- id: in_pep
  doc: peptide PDB file                       (no default)
  type: File?
  inputBinding:
    prefix: --pep
- id: in_lig
  doc: ligand MDL (SDF) file                  (no default)
  type: File?
  inputBinding:
    prefix: --lig
- id: in_cpl_x
  doc: name for complex files                 (no default)
  type: File?
  inputBinding:
    prefix: --cplx
- id: in_ppi
  doc: name for protein-peptide complex files (no default)
  type: File?
  inputBinding:
    prefix: --ppi
- id: in_chrg
  doc: 'formal charge on ligand                (default: 0)'
  type: long?
  inputBinding:
    prefix: --chrg
- id: in_rad
  doc: 'radius type for GB                     (default: mbondi)'
  type: string?
  inputBinding:
    prefix: --rad
- id: in_di_sul
  doc: file with S-S definitions in protein   (no default)
  type: File?
  inputBinding:
    prefix: --disul
- id: in_ss_pep
  doc: file with S-S definitions in peptide   (no default)
  type: File?
  inputBinding:
    prefix: --sspep
- id: in_p_frc
  doc: 'protein (peptide) force field          (default: ff14SB)'
  type: long?
  inputBinding:
    prefix: --pfrc
- id: in_l_frc
  doc: 'ligand force field                     (default: gaff2)'
  type: long?
  inputBinding:
    prefix: --lfrc
- id: in_ctrl
  doc: 'leap command file name                 (default: leap.cmd)'
  type: File?
  inputBinding:
    prefix: --ctrl
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pytleap
