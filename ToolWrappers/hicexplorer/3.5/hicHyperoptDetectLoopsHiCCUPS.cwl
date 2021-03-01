class: CommandLineTool
id: hicHyperoptDetectLoopsHiCCUPS.cwl
inputs:
- id: in_matrix
  doc: The matrix to compute the loops on.
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_protein_file
  doc: The protein file to validate the detected loops
  type: File?
  inputBinding:
    prefix: --proteinFile
- id: in_maximum_number_of_loops
  doc: "The maximum number of loops that should be used for\noptimization computation."
  type: long?
  inputBinding:
    prefix: --maximumNumberOfLoops
- id: in_path_to_juicerjar
  doc: path to juicer.jar
  type: File?
  inputBinding:
    prefix: --juicerPath
- id: in_output_file_name
  doc: File names for the result of the optimization.
  type: File?
  inputBinding:
    prefix: --outputFileName
- id: in_resolution
  doc: Resolution of matrix
  type: string?
  inputBinding:
    prefix: --resolution
- id: in_runs
  doc: Number of runs of hyperopt.
  type: long?
  inputBinding:
    prefix: --runs
- id: in_threads
  doc: "Number of threads (uses the python multiprocessing\nmodule)."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_normalization
  doc: Normalization table name.
  type: string?
  inputBinding:
    prefix: --normalization
- id: in_cpu
  doc: use the CPU version
  type: boolean?
  inputBinding:
    prefix: --cpu
- id: in_restricted
  doc: If the GPU version is used, search only within 8 MB.
  type: boolean?
  inputBinding:
    prefix: --restricted
- id: in_var_11
  doc: '[--outputFileName OUTPUTFILENAME]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: File names for the result of the optimization.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- hicHyperoptDetectLoopsHiCCUPS
