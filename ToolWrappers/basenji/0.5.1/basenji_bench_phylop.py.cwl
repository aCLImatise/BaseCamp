class: CommandLineTool
id: basenji_bench_phylop.py.cwl
inputs:
- id: in_pca_ncomponents
  doc: 'PCA n_components [Default: none]'
  type: string?
  inputBinding:
    prefix: -d
- id: in_number_random_forest
  doc: 'Number of random forest estimators [Default: 100]'
  type: long?
  inputBinding:
    prefix: -e
- id: in_phylop_fasta_genome
  doc: 'PhyloP and FASTA genome [Default: ce11]'
  type: long?
  inputBinding:
    prefix: -g
- id: in_crossvalidation_iterations
  doc: 'Cross-validation iterations [Default: 1]'
  type: long?
  inputBinding:
    prefix: -i
- id: in_parallel_threads_passed
  doc: "Parallel threads passed to scikit-learn n_jobs\n[Default: 1]"
  type: long?
  inputBinding:
    prefix: -o
- id: in_stat
  doc: 'HDF5 key stat to consider. [Default: sum]'
  type: long?
  inputBinding:
    prefix: --stat
- id: in_scores_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- basenji_bench_phylop.py
