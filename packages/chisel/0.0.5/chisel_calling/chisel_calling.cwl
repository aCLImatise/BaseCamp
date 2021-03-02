class: CommandLineTool
id: chisel_calling.cwl
inputs:
- id: in_run_dir
  doc: 'Running directory (default: current directory)'
  type: Directory?
  inputBinding:
    prefix: --rundir
- id: in_sensitivity
  doc: "Sensitivity of model selection for ploidy (default: 1,\nincrease this parameter\
    \ to lower sensitivity to noisy\ndata, adjust this value (e.g. 2, 4, ..., 10,\
    \ ...) to\nbetter deal with high-variance data (e.g. low\ncoverage, small number\
    \ of cells, low number of phased\nSNPs, etc...)"
  type: long?
  inputBinding:
    prefix: --sensitivity
- id: in_max_ploidy
  doc: "Maximum total copy number to consider for balanced\ncluster (default: 4, corresponding\
    \ to a WGD)"
  type: long?
  inputBinding:
    prefix: --maxploidy
- id: in_upper_k
  doc: "Maximum number of bin clusters (default: 100, use 0 to\nconsider maximum number\
    \ of clusters)"
  type: long?
  inputBinding:
    prefix: --upperk
- id: in_seed
  doc: 'Random seed for replication (default: None)'
  type: string?
  inputBinding:
    prefix: --seed
- id: in_jobs
  doc: "Number of parallele jobs to use (default: equal to\nnumber of available processors)\n"
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_input
  doc: "Input file with combined RDR and BAF per bin and per\ncell (default: combo/combo.tsv)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chisel:0.0.5--py_0
cwlVersion: v1.1
baseCommand:
- chisel_calling
