version 1.0

task IlluminaCleanup {
  input {
    Boolean? exports_system_environment
    Boolean? ansi_log
    Boolean? bucket_dir
    Boolean? cache
    Boolean? dump_channels
    Boolean? dump_hashes
    Boolean? e_dot
    Boolean? entry
    Boolean? hub
    Boolean? latest
    Boolean? lib
    Boolean? assign_mnemonic_name
    Boolean? offline
    Boolean? params_file
    Boolean? process_dot
    Boolean? profile
    Boolean? queue_size
    Boolean? resume
    Boolean? revision
    Boolean? test
    Boolean? user
    Boolean? with_cond_a
    Boolean? with_dag
    Boolean? with_docker
    Boolean? with_notification
    Boolean? with_pod_man
    Boolean? with_report
    Boolean? with_singularity
    Boolean? with_timeline
    Boolean? with_tower
    Boolean? with_trace
    Boolean? with_weblog
    Boolean? without_docker
    Boolean? without_pod_man
    Boolean? work_dir
    String run
    String project
    String var_37
    String or
    String repository
    String url
  }
  command <<<
    illumina-cleanup \
      ~{run} \
      ~{project} \
      ~{var_37} \
      ~{or} \
      ~{repository} \
      ~{url} \
      ~{true="-E" false="" exports_system_environment} \
      ~{true="-ansi-log" false="" ansi_log} \
      ~{true="-bucket-dir" false="" bucket_dir} \
      ~{true="-cache" false="" cache} \
      ~{true="-dump-channels" false="" dump_channels} \
      ~{true="-dump-hashes" false="" dump_hashes} \
      ~{true="-e." false="" e_dot} \
      ~{true="-entry" false="" entry} \
      ~{true="-hub" false="" hub} \
      ~{true="-latest" false="" latest} \
      ~{true="-lib" false="" lib} \
      ~{true="-name" false="" assign_mnemonic_name} \
      ~{true="-offline" false="" offline} \
      ~{true="-params-file" false="" params_file} \
      ~{true="-process." false="" process_dot} \
      ~{true="-profile" false="" profile} \
      ~{true="-queue-size" false="" queue_size} \
      ~{true="-resume" false="" resume} \
      ~{true="-revision" false="" revision} \
      ~{true="-test" false="" test} \
      ~{true="-user" false="" user} \
      ~{true="-with-conda" false="" with_cond_a} \
      ~{true="-with-dag" false="" with_dag} \
      ~{true="-with-docker" false="" with_docker} \
      ~{true="-with-notification" false="" with_notification} \
      ~{true="-with-podman" false="" with_pod_man} \
      ~{true="-with-report" false="" with_report} \
      ~{true="-with-singularity" false="" with_singularity} \
      ~{true="-with-timeline" false="" with_timeline} \
      ~{true="-with-tower" false="" with_tower} \
      ~{true="-with-trace" false="" with_trace} \
      ~{true="-with-weblog" false="" with_weblog} \
      ~{true="-without-docker" false="" without_docker} \
      ~{true="-without-podman" false="" without_pod_man} \
      ~{true="-work-dir" false="" work_dir}
  >>>
  parameter_meta {
    exports_system_environment: "Exports all current system environment Default: false"
    ansi_log: "Enable/disable ANSI console logging"
    bucket_dir: "Remote bucket where intermediate result files are stored"
    cache: "Enable/disable processes caching"
    dump_channels: "Dump channels for debugging purpose"
    dump_hashes: "Dump task hash keys for debugging purpose Default: false"
    e_dot: "Add the specified variable to execution environment Syntax: -e.key=value Default: {}"
    entry: "Entry workflow name to be executed"
    hub: "Service hub where the project is hosted"
    latest: "Pull latest changes before run Default: false"
    lib: "Library extension path"
    assign_mnemonic_name: "Assign a mnemonic name to the a pipeline run"
    offline: "Do not check for remote project updates Default: false"
    params_file: "Load script parameters from a JSON/YAML file"
    process_dot: "Set process options Syntax: -process.key=value Default: {}"
    profile: "Choose a configuration profile"
    queue_size: "Max number of processes that can be executed in parallel by each executor"
    resume: "Execute the script using the cached results, useful to continue executions that was stopped by an error"
    revision: "Revision of the project to run (either a git branch, tag or commit SHA number)"
    test: "Test a script function with the name specified"
    user: "Private repository user name"
    with_cond_a: "Use the specified Conda environment package or file (must end with .yml|.yaml suffix)"
    with_dag: "Create pipeline DAG file"
    with_docker: "Enable process execution in a Docker container"
    with_notification: "Send a notification email on workflow completion to the specified recipients"
    with_pod_man: "Enable process execution in a Podman container"
    with_report: "Create processes execution html report"
    with_singularity: "Enable process execution in a Singularity container"
    with_timeline: "Create processes execution timeline file"
    with_tower: "Monitor workflow execution with Seqera Tower service"
    with_trace: "Create processes execution tracing file"
    with_weblog: "Send workflow status messages via HTTP to target URL"
    without_docker: "Disable process execution with Docker Default: false"
    without_pod_man: "Disable process execution in a Podman container"
    work_dir: "Directory where intermediate result files are stored"
    run: ""
    project: ""
    var_37: ""
    or: ""
    repository: ""
    url: ""
  }
}