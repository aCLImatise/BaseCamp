class: CommandLineTool
id: pymdpbsa.cwl
inputs:
- id: in_proj
  doc: global project name
  type: string?
  inputBinding:
    prefix: --proj
- id: in_t_raj
  doc: 'MD trajectory file               (default: traj.binpos)'
  type: File?
  inputBinding:
    prefix: --traj
- id: in_cprm
  doc: 'complex prmtop file              (default: com.prm)'
  type: File?
  inputBinding:
    prefix: --cprm
- id: in_lprm
  doc: 'ligand only prmtop file          (default: lig.prm)'
  type: File?
  inputBinding:
    prefix: --lprm
- id: in_r_prm
  doc: 'receptor only prmtop file        (default: rec.prm)'
  type: File?
  inputBinding:
    prefix: --rprm
- id: in_lig
  doc: 'residue name of ligand           (default: LIG)'
  type: string?
  inputBinding:
    prefix: --lig
- id: in_start
  doc: 'first MD frame to be used        (default: 1)'
  type: long?
  inputBinding:
    prefix: --start
- id: in_stop
  doc: 'last MD frame to be used         (default: 1)'
  type: long?
  inputBinding:
    prefix: --stop
- id: in_step
  doc: 'use every [step] MD frame        (default: 1)'
  type: long?
  inputBinding:
    prefix: --step
- id: in_solv
  doc: "0 for no solvation term (eps=r)\n1, 2, 5, 7, or 8 for GBSA\n3 for PBSA\n4\
    \ for PBSA/dispersion            (default: 1)"
  type: long?
  inputBinding:
    prefix: --solv
- id: in_clean
  doc: 'clean up temporary files         (default: no clean)'
  type: boolean?
  inputBinding:
    prefix: --clean
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pymdpbsa
