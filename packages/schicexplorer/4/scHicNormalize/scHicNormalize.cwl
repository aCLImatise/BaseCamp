class: CommandLineTool
id: scHicNormalize.cwl
inputs:
- id: in_schic_matrix_m
  doc: "scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices\
    \ to\ninvestigate for QC. Needs to be in scool format\n(default: None)"
  type: string
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: "File name of the consensus scool matrix. (default:\nNone)"
  type: File
  inputBinding:
    prefix: --outFileName
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. (default: 4)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_set_to_zero_threshold
  doc: "Values smaller as this threshold are set to 0.\n(default: 1.0)"
  type: double
  inputBinding:
    prefix: --setToZeroThreshold
- id: in_sch_i_c
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_5
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
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename)
cwlVersion: v1.1
baseCommand:
- scHicNormalize
