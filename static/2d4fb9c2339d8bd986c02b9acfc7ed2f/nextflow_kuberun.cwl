class: CommandLineTool
id: nextflow_kuberun.cwl
inputs:
- id: in_exports_current_system
  doc: "Exports all current system environment\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_ansi_log
  doc: Enable/disable ANSI console logging
  type: boolean?
  inputBinding:
    prefix: -ansi-log
- id: in_bucket_dir
  doc: Remote bucket where intermediate result files are stored
  type: boolean?
  inputBinding:
    prefix: -bucket-dir
- id: in_cache
  doc: Enable/disable processes caching
  type: boolean?
  inputBinding:
    prefix: -cache
- id: in_dump_channels
  doc: Dump channels for debugging purpose
  type: boolean?
  inputBinding:
    prefix: -dump-channels
- id: in_dump_hashes
  doc: "Dump task hash keys for debugging purpose\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -dump-hashes
- id: in_e_dot
  doc: "Add the specified variable to execution environment\nSyntax: -e.key=value\n\
    Default: {}"
  type: boolean?
  inputBinding:
    prefix: -e.
- id: in_entry
  doc: Entry workflow name to be executed
  type: boolean?
  inputBinding:
    prefix: -entry
- id: in_hub
  doc: Service hub where the project is hosted
  type: boolean?
  inputBinding:
    prefix: -hub
- id: in_latest
  doc: "Pull latest changes before run\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -latest
- id: in_lib
  doc: Library extension path
  type: boolean?
  inputBinding:
    prefix: -lib
- id: in_assign_mnemonic_name
  doc: Assign a mnemonic name to the a pipeline run
  type: boolean?
  inputBinding:
    prefix: -name
- id: in_namespace
  doc: Specify the K8s namespace to use
  type: boolean?
  inputBinding:
    prefix: -namespace
- id: in_offline
  doc: "Do not check for remote project updates\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -offline
- id: in_params_file
  doc: Load script parameters from a JSON/YAML file
  type: boolean?
  inputBinding:
    prefix: -params-file
- id: in_pod_image
  doc: Specify the container image for the Nextflow pod
  type: boolean?
  inputBinding:
    prefix: -pod-image
- id: in_process_dot
  doc: "Set process options\nSyntax: -process.key=value\nDefault: {}"
  type: boolean?
  inputBinding:
    prefix: -process.
- id: in_profile
  doc: Choose a configuration profile
  type: boolean?
  inputBinding:
    prefix: -profile
- id: in_queue_size
  doc: Max number of processes that can be executed in parallel by each executor
  type: boolean?
  inputBinding:
    prefix: -queue-size
- id: in_resume
  doc: "Execute the script using the cached results, useful to continue\nexecutions\
    \ that was stopped by an error"
  type: boolean?
  inputBinding:
    prefix: -resume
- id: in_revision
  doc: "Revision of the project to run (either a git branch, tag or commit SHA\nnumber)"
  type: boolean?
  inputBinding:
    prefix: -revision
- id: in_test
  doc: Test a script function with the name specified
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_user
  doc: Private repository user name
  type: boolean?
  inputBinding:
    prefix: -user
- id: in_volume_mount
  doc: Volume claim mounts eg. my-pvc:/mnt/path
  type: boolean?
  inputBinding:
    prefix: -volume-mount
- id: in_with_cond_a
  doc: "Use the specified Conda environment package or file (must end with\n.yml|.yaml\
    \ suffix)"
  type: boolean?
  inputBinding:
    prefix: -with-conda
- id: in_with_dag
  doc: Create pipeline DAG file
  type: boolean?
  inputBinding:
    prefix: -with-dag
- id: in_with_docker
  doc: Enable process execution in a Docker container
  type: boolean?
  inputBinding:
    prefix: -with-docker
- id: in_with_notification
  doc: "Send a notification email on workflow completion to the specified\nrecipients"
  type: boolean?
  inputBinding:
    prefix: -with-notification
- id: in_with_pod_man
  doc: Enable process execution in a Podman container
  type: boolean?
  inputBinding:
    prefix: -with-podman
- id: in_with_report
  doc: Create processes execution html report
  type: boolean?
  inputBinding:
    prefix: -with-report
- id: in_with_singularity
  doc: Enable process execution in a Singularity container
  type: boolean?
  inputBinding:
    prefix: -with-singularity
- id: in_with_timeline
  doc: Create processes execution timeline file
  type: boolean?
  inputBinding:
    prefix: -with-timeline
- id: in_with_tower
  doc: Monitor workflow execution with Seqera Tower service
  type: boolean?
  inputBinding:
    prefix: -with-tower
- id: in_with_trace
  doc: Create processes execution tracing file
  type: boolean?
  inputBinding:
    prefix: -with-trace
- id: in_with_weblog
  doc: Send workflow status messages via HTTP to target URL
  type: boolean?
  inputBinding:
    prefix: -with-weblog
- id: in_without_docker
  doc: "Disable process execution with Docker\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -without-docker
- id: in_without_pod_man
  doc: Disable process execution in a Podman container
  type: boolean?
  inputBinding:
    prefix: -without-podman
- id: in_work_dir
  doc: "Directory where intermediate result files are stored\n"
  type: boolean?
  inputBinding:
    prefix: -work-dir
- id: in_ku_be_run
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_project
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_40
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_repository
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_url
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nextflow
- kuberun
