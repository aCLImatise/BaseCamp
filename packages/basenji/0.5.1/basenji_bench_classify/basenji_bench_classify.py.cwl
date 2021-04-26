class: CommandLineTool
id: basenji_bench_classify.py.cwl
inputs:
- id: in_crossvalidation_iterations
  doc: 'Cross-validation iterations [Default: 1]'
  type: long?
  inputBinding:
    prefix: -a
- id: in_dimension_reduction_model
  doc: Dimension reduction model
  type: string?
  inputBinding:
    prefix: -l
- id: in_parallel_threads_passed
  doc: "Parallel threads passed to scikit-learn n_jobs\n[Default: 1]"
  type: long?
  inputBinding:
    prefix: -o
- id: in_save_predictions_iterations
  doc: 'Save predictions across iterations [Default: False]'
  type: string?
  inputBinding:
    prefix: -r
- id: in_stat
  doc: 'HDF5 key stat to consider. [Default: SAD]'
  type: long?
  inputBinding:
    prefix: --stat
- id: in_sad_p_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sad_n_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- basenji_bench_classify.py
