class: CommandLineTool
id: ../../../bcbio_vm.py_cwlrun.cwl
inputs:
- id: in_no_container
  doc: Use local installation of bcbio instead of Docker
  type: boolean
  inputBinding:
    prefix: --no-container
- id: in_queue
  doc: Scheduler queue to run jobs on, for an HPC system
  type: string
  inputBinding:
    prefix: --queue
- id: in_resources
  doc: "Cluster specific resources specifications. Can be\nspecified multiple times.\
    \ Supports SGE, Torque, LSF\nand SLURM parameters."
  type: string
  inputBinding:
    prefix: --resources
- id: in_job_limit
  doc: "Maximum number of simultaneous jobs (not cores)\nsubmitted. Only supported\
    \ for Cromwell runner.\nDefaults to 1 for local runner, unlimited otherwise."
  type: long
  inputBinding:
    prefix: --joblimit
- id: in_run_config
  doc: Custom configuration HOCON file for Cromwell.
  type: File
  inputBinding:
    prefix: --runconfig
- id: in_cloud_project
  doc: "Remote cloud project for running jobs. Cromwell\nAWS/GCP support."
  type: string
  inputBinding:
    prefix: --cloud-project
- id: in_cloud_root
  doc: "Remote bucket location for run files. Cromwell AWS/GCP\nsupport."
  type: string
  inputBinding:
    prefix: --cloud-root
- id: in_host
  doc: 'WES: host for submitting jobs'
  type: string
  inputBinding:
    prefix: --host
- id: in_auth
  doc: 'WES: authentication token'
  type: string
  inputBinding:
    prefix: --auth
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- cwlrun
