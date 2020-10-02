class: CommandLineTool
id: sequana_compressor.cwl
inputs:
- id: in_source
  doc: be provided but no analysis will be performed
  type: string
  inputBinding:
    prefix: --source
- id: in_quiet
  doc: set verbosity off
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_recursive
  doc: recursive search
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_dry_run
  doc: Do not execute anything
  type: boolean
  inputBinding:
    prefix: --dryrun
- id: in_threads
  doc: Maximum number of threads to use per task (4).
  type: long
  inputBinding:
    prefix: --threads
- id: in_jobs
  doc: Maximum number of cores to use at the same time (4).
  type: long
  inputBinding:
    prefix: --jobs
- id: in_bypass_job_limit
  doc: "The number of jobs is limited to 20 to limit IO. If\nyou want to bypass this\
    \ limitation, use this option."
  type: boolean
  inputBinding:
    prefix: --bypass-job-limit
- id: in_unlock
  doc: "If you stopped the application, the underlying\nsnakemake process are interrupted\
    \ and directories were\nsnakemake was launch will be locked. If so please use\n\
    this option using the --source and --target as when\nyou got the error message"
  type: boolean
  inputBinding:
    prefix: --unlock
- id: in_snake_make_options
  doc: "Any valid list of options accepted by snakemake except\n-s and -j (for -j,\
    \ use our --jobs argument). Note that\nby default --keep-going is used ; If you\
    \ set this\nargument yourself, you have to add --keep-going as\nwell otherwise\
    \ it stops at the first error encountered"
  type: string
  inputBinding:
    prefix: --snakemake-options
- id: in_snake_make_cluster
  doc: "a valid snakemake option dedicated to a cluster.\ne.g on LSF cluster use:\n\
    --cluster 'qsub -cwd -q<QUEUE> '\nOn a SLURM system use for example:\n--cluster\
    \ 'sbatch --qos normal'\n"
  type: string
  inputBinding:
    prefix: --snakemake-cluster
- id: in_welcome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_se_quan_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequana_compressor
