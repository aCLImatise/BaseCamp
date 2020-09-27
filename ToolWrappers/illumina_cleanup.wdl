version 1.0

task Illuminacleanup {
  input {
    Boolean? exports_current_system
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
    Boolean? with_report
    Boolean? with_singularity
    Boolean? with_timeline
    Boolean? with_tower
    Boolean? with_trace
    Boolean? with_weblog
    Boolean? without_docker
    Boolean? work_dir
    String run
    String project
    String var_35
    String or
    String repository
    String url
  }
  command <<<
    illumina_cleanup \
      ~{run} \
      ~{project} \
      ~{var_35} \
      ~{or} \
      ~{repository} \
      ~{url} \
      ~{if (exports_current_system) then "-E" else ""} \
      ~{if (ansi_log) then "-ansi-log" else ""} \
      ~{if (bucket_dir) then "-bucket-dir" else ""} \
      ~{if (cache) then "-cache" else ""} \
      ~{if (dump_channels) then "-dump-channels" else ""} \
      ~{if (dump_hashes) then "-dump-hashes" else ""} \
      ~{if (e_dot) then "-e." else ""} \
      ~{if (entry) then "-entry" else ""} \
      ~{if (hub) then "-hub" else ""} \
      ~{if (latest) then "-latest" else ""} \
      ~{if (lib) then "-lib" else ""} \
      ~{if (assign_mnemonic_name) then "-name" else ""} \
      ~{if (offline) then "-offline" else ""} \
      ~{if (params_file) then "-params-file" else ""} \
      ~{if (process_dot) then "-process." else ""} \
      ~{if (profile) then "-profile" else ""} \
      ~{if (queue_size) then "-queue-size" else ""} \
      ~{if (resume) then "-resume" else ""} \
      ~{if (revision) then "-revision" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (user) then "-user" else ""} \
      ~{if (with_cond_a) then "-with-conda" else ""} \
      ~{if (with_dag) then "-with-dag" else ""} \
      ~{if (with_docker) then "-with-docker" else ""} \
      ~{if (with_notification) then "-with-notification" else ""} \
      ~{if (with_report) then "-with-report" else ""} \
      ~{if (with_singularity) then "-with-singularity" else ""} \
      ~{if (with_timeline) then "-with-timeline" else ""} \
      ~{if (with_tower) then "-with-tower" else ""} \
      ~{if (with_trace) then "-with-trace" else ""} \
      ~{if (with_weblog) then "-with-weblog" else ""} \
      ~{if (without_docker) then "-without-docker" else ""} \
      ~{if (work_dir) then "-work-dir" else ""}
  >>>
  parameter_meta {
    exports_current_system: "Exports all current system environment\\nDefault: false"
    ansi_log: "Enable/disable ANSI console logging"
    bucket_dir: "Remote bucket where intermediate result files are stored"
    cache: "Enable/disable processes caching"
    dump_channels: "Dump channels for debugging purpose"
    dump_hashes: "Dump task hash keys for debugging purpose\\nDefault: false"
    e_dot: "Add the specified variable to execution environment\\nSyntax: -e.key=value\\nDefault: {}"
    entry: "Entry workflow name to be executed"
    hub: "Service hub where the project is hosted"
    latest: "Pull latest changes before run\\nDefault: false"
    lib: "Library extension path"
    assign_mnemonic_name: "Assign a mnemonic name to the a pipeline run"
    offline: "Do not check for remote project updates\\nDefault: false"
    params_file: "Load script parameters from a JSON/YAML file"
    process_dot: "Set process options\\nSyntax: -process.key=value\\nDefault: {}"
    profile: "Choose a configuration profile"
    queue_size: "Max number of processes that can be executed in parallel by each executor"
    resume: "Execute the script using the cached results, useful to continue\\nexecutions that was stopped by an error"
    revision: "Revision of the project to run (either a git branch, tag or commit SHA\\nnumber)"
    test: "Test a script function with the name specified"
    user: "Private repository user name"
    with_cond_a: "Use the specified Conda environment package or file (must end with\\n.yml|.yaml suffix)"
    with_dag: "Create pipeline DAG file"
    with_docker: "Enable process execution in a Docker container"
    with_notification: "Send a notification email on workflow completion to the specified\\nrecipients"
    with_report: "Create processes execution html report"
    with_singularity: "Enable process execution in a Singularity container"
    with_timeline: "Create processes execution timeline file"
    with_tower: "Monitor workflow execution with Seqera Tower service"
    with_trace: "Create processes execution tracing file"
    with_weblog: "Send workflow status messages via HTTP to target URL"
    without_docker: "Disable process execution with Docker\\nDefault: false"
    work_dir: "Directory where intermediate result files are stored\\n"
    run: ""
    project: ""
    var_35: ""
    or: ""
    repository: ""
    url: ""
  }
  output {
    File out_stdout = stdout()
  }
}