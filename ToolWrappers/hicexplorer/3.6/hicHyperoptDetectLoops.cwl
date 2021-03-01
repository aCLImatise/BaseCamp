class: CommandLineTool
id: hicHyperoptDetectLoops.cwl
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
- id: in_output_file_name
  doc: "File names for the result of the optimization\n(Default: hyperopt_result.txt)."
  type: File?
  inputBinding:
    prefix: --outputFileName
- id: in_resolution
  doc: 'Resolution of matrix (Default: 10000).'
  type: long?
  inputBinding:
    prefix: --resolution
- id: in_threads
  doc: "Number of threads (uses the python multiprocessing\nmodule) (Default: 4)."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_runs
  doc: 'Number of runs of hyperopt (Default: 100).'
  type: long?
  inputBinding:
    prefix: --runs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: "File names for the result of the optimization\n(Default: hyperopt_result.txt)."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- hicHyperoptDetectLoops
