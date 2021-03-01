class: CommandLineTool
id: markUniqueUnique.cwl
inputs:
- id: in_path_asm_file
  doc: path to the assembly .asm file
  type: File?
  inputBinding:
    prefix: -a
- id: in_version_path_modify
  doc: version   path to the tigStore and version to modify
  type: File?
  inputBinding:
    prefix: -t
- id: in_minimum_size_default
  doc: minimum size of a unitig to be toggled, default=2000)
  type: long?
  inputBinding:
    prefix: -l
- id: in_number_instances_surrogate
  doc: number of instances of a surrogate that is toggled, default = 1
  type: long?
  inputBinding:
    prefix: -n
- id: in_max_number_bases
  doc: max number of bases the surrogate can be from the end of a scaffold for toggling,
    default = 1000
  type: long?
  inputBinding:
    prefix: -d
- id: in_version
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- markUniqueUnique
