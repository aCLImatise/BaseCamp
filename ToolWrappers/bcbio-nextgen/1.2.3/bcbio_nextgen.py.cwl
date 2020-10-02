class: CommandLineTool
id: bcbio_nextgen.py.cwl
inputs:
- id: in_num_cores
  doc: Total cores to use for processing
  type: long
  inputBinding:
    prefix: --numcores
- id: in_parallel_type
  doc: Approach to parallelization
  type: string
  inputBinding:
    prefix: --paralleltype
- id: in_scheduler
  doc: Scheduler to use for ipython parallel
  type: string
  inputBinding:
    prefix: --scheduler
- id: in_local_controller
  doc: run controller locally
  type: boolean
  inputBinding:
    prefix: --local_controller
- id: in_queue
  doc: Scheduler queue to run jobs on, for ipython parallel
  type: string
  inputBinding:
    prefix: --queue
- id: in_resources
  doc: "Cluster specific resources specifications. Can be\nspecified multiple times.\
    \ Supports SGE, Torque, LSF\nand SLURM parameters."
  type: string
  inputBinding:
    prefix: --resources
- id: in_timeout
  doc: "Number of minutes before cluster startup times out.\nDefaults to 15"
  type: long
  inputBinding:
    prefix: --timeout
- id: in_retries
  doc: "Number of retries of failed tasks during distributed\nprocessing. Default\
    \ 0 (no retries)"
  type: long
  inputBinding:
    prefix: --retries
- id: in_tag
  doc: Tag name to label jobs on the cluster
  type: string
  inputBinding:
    prefix: --tag
- id: in_workflow
  doc: Run a workflow with the given commandline arguments
  type: string
  inputBinding:
    prefix: --workflow
- id: in_workdir
  doc: Directory to process in. Defaults to current working
  type: Directory
  inputBinding:
    prefix: --workdir
- id: in_force_single
  doc: Treat all files as single reads
  type: boolean
  inputBinding:
    prefix: --force-single
- id: in_separators
  doc: "comma separated list of separators that indicates\npaired files.\n"
  type: string
  inputBinding:
    prefix: --separators
- id: in_global_config
  doc: "Global YAML configuration file specifying details\nabout the system (optional,\
    \ defaults to installed\nbcbio_system.yaml)"
  type: string
  inputBinding:
    position: 0
- id: in_fc_dir
  doc: "A directory of Illumina output or fastq files to\nprocess (optional)"
  type: string
  inputBinding:
    position: 1
- id: in_run_config
  doc: "YAML file with details about samples to process\n(required, unless using Galaxy\
    \ LIMS as input)"
  type: string
  inputBinding:
    position: 2
- id: in_directory
  doc: -v, --version         Print current version
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bcbio_nextgen.py
