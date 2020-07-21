class: CommandLineTool
id: ../../../illumina_cleanup.cwl
inputs:
- id: exports_system_environment
  doc: 'Exports all current system environment Default: false'
  type: boolean
  inputBinding:
    prefix: -E
- id: ansi_log
  doc: Enable/disable ANSI console logging
  type: boolean
  inputBinding:
    prefix: -ansi-log
- id: bucket_dir
  doc: Remote bucket where intermediate result files are stored
  type: boolean
  inputBinding:
    prefix: -bucket-dir
- id: cache
  doc: Enable/disable processes caching
  type: boolean
  inputBinding:
    prefix: -cache
- id: dump_channels
  doc: Dump channels for debugging purpose
  type: boolean
  inputBinding:
    prefix: -dump-channels
- id: dump_hashes
  doc: 'Dump task hash keys for debugging purpose Default: false'
  type: boolean
  inputBinding:
    prefix: -dump-hashes
- id: e_dot
  doc: 'Add the specified variable to execution environment Syntax: -e.key=value Default:
    {}'
  type: boolean
  inputBinding:
    prefix: -e.
- id: entry
  doc: Entry workflow name to be executed
  type: boolean
  inputBinding:
    prefix: -entry
- id: hub
  doc: Service hub where the project is hosted
  type: boolean
  inputBinding:
    prefix: -hub
- id: latest
  doc: 'Pull latest changes before run Default: false'
  type: boolean
  inputBinding:
    prefix: -latest
- id: lib
  doc: Library extension path
  type: boolean
  inputBinding:
    prefix: -lib
- id: assign_mnemonic_name
  doc: Assign a mnemonic name to the a pipeline run
  type: boolean
  inputBinding:
    prefix: -name
- id: offline
  doc: 'Do not check for remote project updates Default: false'
  type: boolean
  inputBinding:
    prefix: -offline
- id: params_file
  doc: Load script parameters from a JSON/YAML file
  type: boolean
  inputBinding:
    prefix: -params-file
- id: process_dot
  doc: 'Set process options Syntax: -process.key=value Default: {}'
  type: boolean
  inputBinding:
    prefix: -process.
- id: profile
  doc: Choose a configuration profile
  type: boolean
  inputBinding:
    prefix: -profile
- id: queue_size
  doc: Max number of processes that can be executed in parallel by each executor
  type: boolean
  inputBinding:
    prefix: -queue-size
- id: resume
  doc: Execute the script using the cached results, useful to continue executions
    that was stopped by an error
  type: boolean
  inputBinding:
    prefix: -resume
- id: revision
  doc: Revision of the project to run (either a git branch, tag or commit SHA number)
  type: boolean
  inputBinding:
    prefix: -revision
- id: test
  doc: Test a script function with the name specified
  type: boolean
  inputBinding:
    prefix: -test
- id: user
  doc: Private repository user name
  type: boolean
  inputBinding:
    prefix: -user
- id: with_cond_a
  doc: Use the specified Conda environment package or file (must end with .yml|.yaml
    suffix)
  type: boolean
  inputBinding:
    prefix: -with-conda
- id: with_dag
  doc: Create pipeline DAG file
  type: boolean
  inputBinding:
    prefix: -with-dag
- id: with_docker
  doc: Enable process execution in a Docker container
  type: boolean
  inputBinding:
    prefix: -with-docker
- id: with_notification
  doc: Send a notification email on workflow completion to the specified recipients
  type: boolean
  inputBinding:
    prefix: -with-notification
- id: with_pod_man
  doc: Enable process execution in a Podman container
  type: boolean
  inputBinding:
    prefix: -with-podman
- id: with_report
  doc: Create processes execution html report
  type: boolean
  inputBinding:
    prefix: -with-report
- id: with_singularity
  doc: Enable process execution in a Singularity container
  type: boolean
  inputBinding:
    prefix: -with-singularity
- id: with_timeline
  doc: Create processes execution timeline file
  type: boolean
  inputBinding:
    prefix: -with-timeline
- id: with_tower
  doc: Monitor workflow execution with Seqera Tower service
  type: boolean
  inputBinding:
    prefix: -with-tower
- id: with_trace
  doc: Create processes execution tracing file
  type: boolean
  inputBinding:
    prefix: -with-trace
- id: with_weblog
  doc: Send workflow status messages via HTTP to target URL
  type: boolean
  inputBinding:
    prefix: -with-weblog
- id: without_docker
  doc: 'Disable process execution with Docker Default: false'
  type: boolean
  inputBinding:
    prefix: -without-docker
- id: without_pod_man
  doc: Disable process execution in a Podman container
  type: boolean
  inputBinding:
    prefix: -without-podman
- id: work_dir
  doc: Directory where intermediate result files are stored
  type: boolean
  inputBinding:
    prefix: -work-dir
- id: run
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: project
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: var_37
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: repository
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- illumina-cleanup
