class: CommandLineTool
id: scHicNormalize.cwl
inputs:
- id: in_schic_matrix_scool
  doc: "scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices\
    \ to\ninvestigate for QC. Needs to be in scool format\n(default: None)"
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: "File name of the normalized scool matrix. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. (default: 4)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_normalize
  doc: "Normalize to a) all matrices to the lowest read count\nof the given matrices,\
    \ b) all to a given read coverage\nvalue or c) to a multiplicative value (default:\n\
    smallest)"
  type: string?
  inputBinding:
    prefix: --normalize
- id: in_set_to_zero_threshold
  doc: "Values smaller as this threshold are set to 0.\n(default: 1.0)"
  type: double?
  inputBinding:
    prefix: --setToZeroThreshold
- id: in_value
  doc: "This value is used to either be interpreted as the\ndesired read_count or\
    \ the multiplicative value. This\ndepends on the value for --normalize (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: --value
- id: in_maximum_region_to_consider
  doc: "To compute the normalization factor for the\nnormalization mode 'smallest'\
    \ and 'read_count',\nconsider only this genomic distance around the\ndiagonal.\
    \ (default: 30000000)"
  type: long?
  inputBinding:
    prefix: --maximumRegionToConsider
- id: in_sch_i_c
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_8
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "File name of the normalized scool matrix. (default:\nNone)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/schicexplorer:7--py_0
cwlVersion: v1.1
baseCommand:
- scHicNormalize
