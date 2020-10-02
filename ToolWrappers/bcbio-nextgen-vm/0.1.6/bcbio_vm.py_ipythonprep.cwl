class: CommandLineTool
id: bcbio_vm.py_ipythonprep.cwl
inputs:
- id: in_fc_dir
  doc: A directory of Illumina output or fastq files to
  type: Directory
  inputBinding:
    prefix: --fcdir
- id: in_system_config
  doc: "Global YAML configuration file specifying system\ndetails. Defaults to installed\
    \ bcbio_system.yaml."
  type: File
  inputBinding:
    prefix: --systemconfig
- id: in_num_cores
  doc: Total cores to use for processing
  type: long
  inputBinding:
    prefix: --numcores
- id: in_resources
  doc: "Cluster specific resources specifications. Can be\nspecified multiple times.\
    \ Supports SGE and SLURM\nparameters."
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
- id: in_tmpdir
  doc: "Path of local on-machine temporary directory to\nprocess in.\n"
  type: File
  inputBinding:
    prefix: --tmpdir
- id: in_image
  doc: ''
  type: string
  inputBinding:
    prefix: --image
- id: in_positional_arguments
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_sample_config
  doc: YAML file with details about samples to process.
  type: string
  inputBinding:
    position: 1
- id: in_scheduler_queue_run
  doc: Scheduler queue to run jobs on.
  type: string
  inputBinding:
    position: 0
- id: in_process
  doc: --image IMAGE         Docker image name to use, could point to compatible
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fc_dir
  doc: A directory of Illumina output or fastq files to
  type: Directory
  outputBinding:
    glob: $(inputs.in_fc_dir)
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- ipythonprep
