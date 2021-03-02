class: CommandLineTool
id: vina.cwl
inputs:
- id: in_receptor
  doc: rigid part of the receptor (PDBQT)
  type: string?
  inputBinding:
    prefix: --receptor
- id: in_flex
  doc: flexible side chains, if any (PDBQT)
  type: string?
  inputBinding:
    prefix: --flex
- id: in_ligand
  doc: ligand (PDBQT)
  type: string?
  inputBinding:
    prefix: --ligand
- id: in_center_x
  doc: X coordinate of the center
  type: string?
  inputBinding:
    prefix: --center_x
- id: in_center_y
  doc: Y coordinate of the center
  type: string?
  inputBinding:
    prefix: --center_y
- id: in_center_z
  doc: Z coordinate of the center
  type: string?
  inputBinding:
    prefix: --center_z
- id: in_size_x
  doc: size in the X dimension (Angstroms)
  type: long?
  inputBinding:
    prefix: --size_x
- id: in_size_y
  doc: size in the Y dimension (Angstroms)
  type: long?
  inputBinding:
    prefix: --size_y
- id: in_size_z
  doc: size in the Z dimension (Angstroms)
  type: long?
  inputBinding:
    prefix: --size_z
- id: in_out
  doc: "output models (PDBQT), the default is chosen based on\nthe ligand file name"
  type: File?
  inputBinding:
    prefix: --out
- id: in_log
  doc: optionally, write log file
  type: File?
  inputBinding:
    prefix: --log
- id: in_cpu
  doc: "the number of CPUs to use (the default is to try to\ndetect the number of\
    \ CPUs or, failing that, use 1)"
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_seed
  doc: explicit random seed
  type: string?
  inputBinding:
    prefix: --seed
- id: in_exhaustive_ness
  doc: "(=8) exhaustiveness of the global search (roughly\nproportional to time):\
    \ 1+"
  type: long?
  inputBinding:
    prefix: --exhaustiveness
- id: in_num_modes
  doc: (=9)      maximum number of binding modes to generate
  type: long?
  inputBinding:
    prefix: --num_modes
- id: in_energy_range
  doc: "(=3)   maximum energy difference between the best binding\nmode and the worst\
    \ one displayed (kcal/mol)"
  type: long?
  inputBinding:
    prefix: --energy_range
- id: in_config
  doc: the above options can be put here
  type: string?
  inputBinding:
    prefix: --config
- id: in_help_advanced
  doc: display usage summary with advanced options
  type: boolean?
  inputBinding:
    prefix: --help_advanced
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "output models (PDBQT), the default is chosen based on\nthe ligand file name"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- vina
