class: CommandLineTool
id: scHicInfo.cwl
inputs:
- id: in_schic_matrix_scool
  doc: "scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices\
    \ to\ninvestigate for QC. Needs to be in scool format\n(default: None)"
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_write_out_names
  doc: "Write out the names of the individual cells to the\nhere specified file. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --writeOutNames
- id: in_sch_i_c
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_3
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_out_names
  doc: "Write out the names of the individual cells to the\nhere specified file. (default:\
    \ None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_write_out_names)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/schicexplorer:7--py_0
cwlVersion: v1.1
baseCommand:
- scHicInfo
