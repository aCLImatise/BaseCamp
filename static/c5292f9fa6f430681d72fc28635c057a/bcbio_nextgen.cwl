class: CommandLineTool
id: bcbio_nextgen.py.cwl
inputs:
- id: global_config
  doc: Global YAML configuration file specifying details about the system (optional,
    defaults to installed bcbio_system.yaml)
  type: string
  inputBinding:
    position: 0
- id: fc_dir
  doc: A directory of Illumina output or fastq files to process (optional)
  type: string
  inputBinding:
    position: 1
- id: run_config
  doc: YAML file with details about samples to process (required, unless using Galaxy
    LIMS as input)
  type: string
  inputBinding:
    position: 2
- id: num_cores
  doc: Total cores to use for processing
  type: string
  inputBinding:
    prefix: --numcores
- id: parallel_type
  doc: Approach to parallelization
  type: string
  inputBinding:
    prefix: --paralleltype
- id: scheduler
  doc: Scheduler to use for ipython parallel
  type: string
  inputBinding:
    prefix: --scheduler
- id: local_controller
  doc: run controller locally
  type: boolean
  inputBinding:
    prefix: --local_controller
- id: queue
  doc: Scheduler queue to run jobs on, for ipython parallel
  type: string
  inputBinding:
    prefix: --queue
- id: resources
  doc: Cluster specific resources specifications. Can be specified multiple times.
    Supports SGE, Torque, LSF and SLURM parameters.
  type: string
  inputBinding:
    prefix: --resources
- id: timeout
  doc: Number of minutes before cluster startup times out. Defaults to 15
  type: string
  inputBinding:
    prefix: --timeout
- id: retries
  doc: Number of retries of failed tasks during distributed processing. Default 0
    (no retries)
  type: string
  inputBinding:
    prefix: --retries
- id: tag
  doc: Tag name to label jobs on the cluster
  type: string
  inputBinding:
    prefix: --tag
- id: workflow
  doc: Run a workflow with the given commandline arguments
  type: string
  inputBinding:
    prefix: --workflow
- id: workdir
  doc: Directory to process in. Defaults to current working directory
  type: string
  inputBinding:
    prefix: --workdir
- id: force_single
  doc: Treat all files as single reads
  type: boolean
  inputBinding:
    prefix: --force-single
- id: separators
  doc: comma separated list of separators that indicates paired files.
  type: string
  inputBinding:
    prefix: --separators
outputs: []
cwlVersion: v1.1
baseCommand:
- bcbio_nextgen.py
