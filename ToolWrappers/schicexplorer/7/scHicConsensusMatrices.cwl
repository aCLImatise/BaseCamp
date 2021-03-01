class: CommandLineTool
id: scHicConsensusMatrices.cwl
inputs:
- id: in_schic_matrix_scool
  doc: "scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices\
    \ to\ninvestigate for QC. Needs to be in scool format\n(default: None)"
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_clusters
  doc: "file, -c cluster file\nText file which contains per matrix the associated\n\
    cluster. (default: None)"
  type: File?
  inputBinding:
    prefix: --clusters
- id: in_out_filename
  doc: "File name of the consensus scool matrix. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_no_normalization
  doc: 'Do not plot a header. (default: True)'
  type: boolean?
  inputBinding:
    prefix: --no_normalization
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. (default: 4)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sch_i_c
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_6
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "File name of the consensus scool matrix. (default:\nNone)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/schicexplorer:7--py_0
cwlVersion: v1.1
baseCommand:
- scHicConsensusMatrices
