class: CommandLineTool
id: drax.cwl
inputs:
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
- id: with_drmaa
  doc: Enable DRMAA binding
  type: boolean
  inputBinding:
    prefix: -with-drmaa
- id: with_notification
  doc: Send a notification email on workflow completion to the specified recipients
  type: boolean
  inputBinding:
    prefix: -with-notification
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
- id: with_trace
  doc: Create processes execution tracing file
  type: boolean
  inputBinding:
    prefix: -with-trace
- id: without_docker
  doc: 'Disable process execution with Docker Default: false'
  type: boolean
  inputBinding:
    prefix: -without-docker
- id: work_dir
  doc: Directory where intermediate result files are stored
  type: boolean
  inputBinding:
    prefix: -work-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- drax
