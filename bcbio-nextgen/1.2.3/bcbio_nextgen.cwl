#!/usr/bin/env cwl-runner

baseCommand:
- bcbio_nextgen.py
class: CommandLineTool
cwlVersion: v1.0
id: bcbio_nextgen.py
inputs:
- doc: Global YAML configuration file specifying details about the system (optional,
    defaults to installed bcbio_system.yaml)
  id: global_config
  inputBinding:
    position: 0
  type: string
- doc: A directory of Illumina output or fastq files to process (optional)
  id: fc_dir
  inputBinding:
    position: 1
  type: string
- doc: YAML file with details about samples to process (required, unless using Galaxy
    LIMS as input)
  id: run_config
  inputBinding:
    position: 2
  type: string
- doc: Total cores to use for processing
  id: num_cores
  inputBinding:
    prefix: --numcores
  type: string
- doc: Approach to parallelization
  id: parallel_type
  inputBinding:
    prefix: --paralleltype
  type: string
- doc: Scheduler to use for ipython parallel
  id: scheduler
  inputBinding:
    prefix: --scheduler
  type: string
- doc: run controller locally
  id: local_controller
  inputBinding:
    prefix: --local_controller
  type: boolean
- doc: Scheduler queue to run jobs on, for ipython parallel
  id: queue
  inputBinding:
    prefix: --queue
  type: string
- doc: Cluster specific resources specifications. Can be specified multiple times.
    Supports SGE, Torque, LSF and SLURM parameters.
  id: resources
  inputBinding:
    prefix: --resources
  type: string
- doc: Number of minutes before cluster startup times out. Defaults to 15
  id: timeout
  inputBinding:
    prefix: --timeout
  type: string
- doc: Number of retries of failed tasks during distributed processing. Default 0
    (no retries)
  id: retries
  inputBinding:
    prefix: --retries
  type: string
- doc: Tag name to label jobs on the cluster
  id: tag
  inputBinding:
    prefix: --tag
  type: string
- doc: Run a workflow with the given commandline arguments
  id: workflow
  inputBinding:
    prefix: --workflow
  type: string
- doc: Directory to process in. Defaults to current working directory
  id: workdir
  inputBinding:
    prefix: --workdir
  type: string
- doc: Treat all files as single reads
  id: force_single
  inputBinding:
    prefix: --force-single
  type: boolean
- doc: comma separated list of separators that indicates paired files.
  id: separators
  inputBinding:
    prefix: --separators
  type: string
