class: CommandLineTool
id: sequana_compressor.cwl
inputs:
- id: quiet
  doc: set verbosity off
  type: boolean
  inputBinding:
    prefix: --quiet
- id: source
  doc: 'Search for all source files with this extension. Valid extensions are: fastq,
    fastq.gz, fastq.bz2, fastq.dscr, fq, fq.gz, fq.bz2 and fq.dsrc'
  type: string
  inputBinding:
    prefix: --source
- id: target
  doc: Convert the source files to a new target format. Same extensions as above.
  type: string
  inputBinding:
    prefix: --target
- id: recursive
  doc: recursive search
  type: boolean
  inputBinding:
    prefix: --recursive
- id: dry_run
  doc: Do not execute anything
  type: boolean
  inputBinding:
    prefix: --dryrun
- id: threads
  doc: Maximum number of threads to use per task (4).
  type: string
  inputBinding:
    prefix: --threads
- id: jobs
  doc: Maximum number of cores to use at the same time (4).
  type: string
  inputBinding:
    prefix: --jobs
- id: bypass_job_limit
  doc: The number of jobs is limited to 20 to limit IO. If you want to bypass this
    limitation, use this option.
  type: boolean
  inputBinding:
    prefix: --bypass-job-limit
- id: unlock
  doc: If you stopped the application, the underlying snakemake process are interrupted
    and directories were snakemake was launch will be locked. If so please use this
    option using the --source and --target as when you got the error message
  type: boolean
  inputBinding:
    prefix: --unlock
- id: snake_make_options
  doc: Any valid list of options accepted by snakemake except -s and -j (for -j, use
    our --jobs argument). Note that by default --keep-going is used ; If you set this
    argument yourself, you have to add --keep-going as well otherwise it stops at
    the first error encountered
  type: string
  inputBinding:
    prefix: --snakemake-options
- id: snake_make_cluster
  doc: "a valid snakemake option dedicated to a cluster.   e.g on LSF cluster use:\
    \ --cluster 'qsub -cwd -q<QUEUE> ' On a SLURM system use for example: --cluster\
    \ 'sbatch --qos normal'"
  type: string
  inputBinding:
    prefix: --snakemake-cluster
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_compressor
