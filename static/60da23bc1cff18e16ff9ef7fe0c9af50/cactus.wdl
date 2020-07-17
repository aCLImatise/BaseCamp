version 1.0

task Cactus {
  input {
    String? experiment
    Boolean? build_avg_s
    Boolean? build_reference
    Boolean? build_hal
    Boolean? build_fast_a
    Int? intermediate_results_url
    String? database
    String? config_file
    String? root
    Boolean? latest
    String? container_image
    String? binaries_mode
    Boolean? logoff
    Boolean? log_critical
    Boolean? log_error
    Boolean? log_warning
    Boolean? loginfo
    Boolean? log_debug
    String? loglevel
    String? log_file
    Boolean? rotating_logging
    String? workdir
    Boolean? stats
    String? clean
    String? clean_workdir
    Boolean? cluster_stats
    Boolean? restart
    String? batch_system
    Boolean? disable_hot_deployment
    String? parasol_command
    String? parasol_max_batches
    String? scale
    Boolean? link_imports
    String? mesos_master
    String? provisioner
    String? node_types
    String? node_options
    Int? min_nodes
    Int? max_nodes
    String? alpha_packing
    String? beta_inertia
    String? scale_interval
    String? preempt_able_compensation
    String? node_storage
    Boolean? metrics
    Int? max_service_jobs
    Int? max_preempt_able_service_jobs
    String? deadlock_wait
    String? state_polling_wait
    Int? max_cores
    Int? max_memory
    Int? max_disk
    String? retry_count
    Int? max_job_duration
    String? rescue_jobs_frequency
    Boolean? disable_caching
    Int? max_log_file_size
    Boolean? write_logs
    Boolean? write_logs_gzip
    Boolean? real_time_logging
    String? sse_key
    String? cse_key
    String? setenv
    String? service_polling_interval
    Boolean? debug_worker
    String? bad_worker
    String? bad_worker_fail_interval
    String seq_file
    String output_hal
    String job_store
  }
  command <<<
    cactus \
      ~{seq_file} \
      ~{output_hal} \
      ~{job_store} \
      ~{if defined(experiment) then ("--experiment " +  '"' + experiment + '"') else ""} \
      ~{true="--buildAvgs" false="" build_avg_s} \
      ~{true="--buildReference" false="" build_reference} \
      ~{true="--buildHal" false="" build_hal} \
      ~{true="--buildFasta" false="" build_fast_a} \
      ~{if defined(intermediate_results_url) then ("--intermediateResultsUrl " +  '"' + intermediate_results_url + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(config_file) then ("--configFile " +  '"' + config_file + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{true="--latest" false="" latest} \
      ~{if defined(container_image) then ("--containerImage " +  '"' + container_image + '"') else ""} \
      ~{if defined(binaries_mode) then ("--binariesMode " +  '"' + binaries_mode + '"') else ""} \
      ~{true="--logOff" false="" logoff} \
      ~{true="--logCritical" false="" log_critical} \
      ~{true="--logError" false="" log_error} \
      ~{true="--logWarning" false="" log_warning} \
      ~{true="--logInfo" false="" loginfo} \
      ~{true="--logDebug" false="" log_debug} \
      ~{if defined(loglevel) then ("--logLevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logFile " +  '"' + log_file + '"') else ""} \
      ~{true="--rotatingLogging" false="" rotating_logging} \
      ~{if defined(workdir) then ("--workDir " +  '"' + workdir + '"') else ""} \
      ~{true="--stats" false="" stats} \
      ~{if defined(clean) then ("--clean " +  '"' + clean + '"') else ""} \
      ~{if defined(clean_workdir) then ("--cleanWorkDir " +  '"' + clean_workdir + '"') else ""} \
      ~{true="--clusterStats" false="" cluster_stats} \
      ~{true="--restart" false="" restart} \
      ~{if defined(batch_system) then ("--batchSystem " +  '"' + batch_system + '"') else ""} \
      ~{true="--disableHotDeployment" false="" disable_hot_deployment} \
      ~{if defined(parasol_command) then ("--parasolCommand " +  '"' + parasol_command + '"') else ""} \
      ~{if defined(parasol_max_batches) then ("--parasolMaxBatches " +  '"' + parasol_max_batches + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{true="--linkImports" false="" link_imports} \
      ~{if defined(mesos_master) then ("--mesosMaster " +  '"' + mesos_master + '"') else ""} \
      ~{if defined(provisioner) then ("--provisioner " +  '"' + provisioner + '"') else ""} \
      ~{if defined(node_types) then ("--nodeTypes " +  '"' + node_types + '"') else ""} \
      ~{if defined(node_options) then ("--nodeOptions " +  '"' + node_options + '"') else ""} \
      ~{if defined(min_nodes) then ("--minNodes " +  '"' + min_nodes + '"') else ""} \
      ~{if defined(max_nodes) then ("--maxNodes " +  '"' + max_nodes + '"') else ""} \
      ~{if defined(alpha_packing) then ("--alphaPacking " +  '"' + alpha_packing + '"') else ""} \
      ~{if defined(beta_inertia) then ("--betaInertia " +  '"' + beta_inertia + '"') else ""} \
      ~{if defined(scale_interval) then ("--scaleInterval " +  '"' + scale_interval + '"') else ""} \
      ~{if defined(preempt_able_compensation) then ("--preemptableCompensation " +  '"' + preempt_able_compensation + '"') else ""} \
      ~{if defined(node_storage) then ("--nodeStorage " +  '"' + node_storage + '"') else ""} \
      ~{true="--metrics" false="" metrics} \
      ~{if defined(max_service_jobs) then ("--maxServiceJobs " +  '"' + max_service_jobs + '"') else ""} \
      ~{if defined(max_preempt_able_service_jobs) then ("--maxPreemptableServiceJobs " +  '"' + max_preempt_able_service_jobs + '"') else ""} \
      ~{if defined(deadlock_wait) then ("--deadlockWait " +  '"' + deadlock_wait + '"') else ""} \
      ~{if defined(state_polling_wait) then ("--statePollingWait " +  '"' + state_polling_wait + '"') else ""} \
      ~{if defined(max_cores) then ("--maxCores " +  '"' + max_cores + '"') else ""} \
      ~{if defined(max_memory) then ("--maxMemory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(max_disk) then ("--maxDisk " +  '"' + max_disk + '"') else ""} \
      ~{if defined(retry_count) then ("--retryCount " +  '"' + retry_count + '"') else ""} \
      ~{if defined(max_job_duration) then ("--maxJobDuration " +  '"' + max_job_duration + '"') else ""} \
      ~{if defined(rescue_jobs_frequency) then ("--rescueJobsFrequency " +  '"' + rescue_jobs_frequency + '"') else ""} \
      ~{true="--disableCaching" false="" disable_caching} \
      ~{if defined(max_log_file_size) then ("--maxLogFileSize " +  '"' + max_log_file_size + '"') else ""} \
      ~{true="--writeLogs" false="" write_logs} \
      ~{true="--writeLogsGzip" false="" write_logs_gzip} \
      ~{true="--realTimeLogging" false="" real_time_logging} \
      ~{if defined(sse_key) then ("--sseKey " +  '"' + sse_key + '"') else ""} \
      ~{if defined(cse_key) then ("--cseKey " +  '"' + cse_key + '"') else ""} \
      ~{if defined(setenv) then ("--setEnv " +  '"' + setenv + '"') else ""} \
      ~{if defined(service_polling_interval) then ("--servicePollingInterval " +  '"' + service_polling_interval + '"') else ""} \
      ~{true="--debugWorker" false="" debug_worker} \
      ~{if defined(bad_worker) then ("--badWorker " +  '"' + bad_worker + '"') else ""} \
      ~{if defined(bad_worker_fail_interval) then ("--badWorkerFailInterval " +  '"' + bad_worker_fail_interval + '"') else ""}
  >>>
  parameter_meta {
    experiment: "The file containing a link to the experiment parameters"
    build_avg_s: "Build trees"
    build_reference: "Creates a reference ordering for the flowers"
    build_hal: "Build a hal file"
    build_fast_a: "Build a fasta file of the input sequences (and reference sequence, used with hal output)"
    intermediate_results_url: "URL prefix to save intermediate results like DB dumps to (e.g. prefix-dump-caf, prefix-dump-avg, etc.)"
    database: "Database type: tokyo_cabinet or kyoto_tycoon [default: kyoto_tycoon]"
    config_file: "Specify cactus configuration file"
    root: "Name of ancestral node (which must appear in NEWICK tree in <seqfile>) to use as a root for the alignment. Any genomes not below this node in the tree may be used as outgroups but will never appear in the output. If no root is specifed then the root of the tree is used."
    latest: "Use the latest version of the docker container rather than pulling one matching this version of cactus"
    container_image: "Use the the specified pre-built containter image rather than pulling one from quay.io"
    binaries_mode: "The way to run the Cactus binaries"
    logoff: "Same as --logCritical"
    log_critical: "Turn on logging at level CRITICAL and above. (default is INFO)"
    log_error: "Turn on logging at level ERROR and above. (default is INFO)"
    log_warning: "Turn on logging at level WARNING and above. (default is INFO)"
    loginfo: "Turn on logging at level INFO and above. (default is INFO)"
    log_debug: "Turn on logging at level DEBUG and above. (default is INFO)"
    loglevel: "Log at given level (may be either OFF (or CRITICAL), ERROR, WARN (or WARNING), INFO or DEBUG). (default is INFO)"
    log_file: "File to log in"
    rotating_logging: "Turn on rotating logging, which prevents log files getting too big."
    workdir: "Absolute path to directory where temporary files generated during the Toil run should be placed. Temp files and folders will be placed in a directory toil-<workflowID> within workDir (The workflowID is generated by Toil and will be reported in the workflow logs. Default is determined by the variables (TMPDIR, TEMP, TMP) via mkdtemp. This directory needs to exist on all machines running jobs."
    stats: "Records statistics about the toil workflow to be used by 'toil stats'."
    clean: "Determines the deletion of the jobStore upon completion of the program. Choices: 'always', 'onError','never', 'onSuccess'. The --stats option requires information from the jobStore upon completion so the jobStore will never be deleted withthat flag. If you wish to be able to restart the run, choose 'never' or 'onSuccess'. Default is 'never' if stats is enabled, and 'onSuccess' otherwise"
    clean_workdir: "Determines deletion of temporary worker directory upon completion of a job. Choices: 'always', 'never', 'onSuccess'. Default = always. WARNING: This option should be changed for debugging only. Running a full pipeline with this option could fill your disk with intermediate data."
    cluster_stats: "[CLUSTERSTATS] If enabled, writes out JSON resource usage statistics to a file. The default location for this file is the current working directory, but an absolute path can also be passed to specify where this file should be written. This options only applies when using scalable batch systems."
    restart: "If --restart is specified then will attempt to restart existing workflow at the location pointed to by the --jobStore option. Will raise an exception if the workflow does not exist"
    batch_system: "The type of batch system to run the job(s) with, currently can be one of LSF, Mesos, Slurm, Torque, HTCondor, singleMachine, parasol, gridEngine'. default=singleMachine"
    disable_hot_deployment: "Should hot-deployment of the user script be deactivated? If True, the user script/package should be present at the same location on all workers. default=false"
    parasol_command: "The name or path of the parasol program. Will be looked up on PATH unless it starts with a slashdefault=parasol"
    parasol_max_batches: "Maximum number of job batches the Parasol batch is allowed to create. One batch is created for jobs with a a unique set of resource requirements. default=1000"
    scale: "A scaling factor to change the value of all submitted tasks's submitted cores. Used in singleMachine batch system. default=1"
    link_imports: "When using Toil's importFile function for staging, input files are copied to the job store. Specifying this option saves space by sym-linking imported files. As long as caching is enabled Toil will protect the file automatically by changing the permissions to read-only."
    mesos_master: "The host and port of the Mesos master separated by colon. (default: 115.146.93.132:5050)"
    provisioner: "The provisioner for cluster auto-scaling. The currently supported choices are'cgcloud' or 'aws'. The default is None."
    node_types: "List of node types separated by commas. The syntax for each node type depends on the provisioner used. For the cgcloud and AWS provisioners this is the name of an EC2 instance type, optionally followed by a colon and the price in dollars to bid for a spot instance of that type, for example 'c3.8xlarge:0.42'.If no spot bid is specified, nodes of this type will be non- preemptable.It is acceptable to specify an instance as both preemptable and non-preemptable, including it twice in the list. In that case,preemptable nodes of that type will be preferred when creating new nodes once the maximum number of preemptable-nodes has beenreached."
    node_options: "Options for provisioning the nodes. The syntax depends on the provisioner used. Neither the CGCloud nor the AWS provisioner support any node options."
    min_nodes: "Mininum number of nodes of each type in the cluster, if using auto-scaling. This should be provided as a comma-separated list of the same length as the list of node types. default=0"
    max_nodes: "Maximum number of nodes of each type in the cluster, if using autoscaling, provided as a comma-separated list. The first value is used as a default if the list length is less than the number of nodeTypes. default=10"
    alpha_packing: "The total number of nodes estimated to be required to compute the issued jobs is multiplied by the alpha packing parameter to produce the actual number of nodes requested. Values of this coefficient greater than one will tend to over provision and values less than one will under provision. default=0.8"
    beta_inertia: "A smoothing parameter to prevent unnecessary oscillations in the number of provisioned nodes. If the number of nodes is within the beta inertia of the currently provisioned number of nodes then no change is made to the number of requested nodes. default=1.2"
    scale_interval: "The interval (seconds) between assessing if the scale of the cluster needs to change. default=30"
    preempt_able_compensation: "The preference of the autoscaler to replace preemptable nodes with non-preemptable nodes, when preemptable nodes cannot be started for some reason. Defaults to 0.0. This value must be between 0.0 and 1.0, inclusive. A value of 0.0 disables such compensation, a value of 0.5 compensates two missing preemptable nodes with a non-preemptable one. A value of 1.0 replaces every missing pre-emptable node with a non-preemptable one."
    node_storage: "Specify the size of the root volume of worker nodes when they are launched in gigabytes. You may want to set this if your jobs require a lot of disk space. The default value is 50."
    metrics: "Enable the prometheus/grafana dashboard for monitoring CPU/RAM usage, queue size, and issued jobs."
    max_service_jobs: "The maximum number of service jobs that can be run concurrently, excluding service jobs running on preemptable nodes. default=9223372036854775807"
    max_preempt_able_service_jobs: "The maximum number of service jobs that can run concurrently on preemptable nodes. default=9223372036854775807"
    deadlock_wait: "The minimum number of seconds to observe the cluster stuck running only the same service jobs before throwing a deadlock exception. default=60"
    state_polling_wait: "Time, in seconds, to wait before doing a scheduler query for job state. Return cached results if within the waiting period."
    max_cores: "The maximum number of CPU cores to request from the batch system at any one time. Standard suffixes like K, Ki, M, Mi, G or Gi are supported. Default is 8.0 Ei"
    max_memory: "The maximum amount of memory to request from the batch system at any one time. Standard suffixes like K, Ki, M, Mi, G or Gi are supported. Default is 8.0 Ei"
    max_disk: "The maximum amount of disk space to request from the batch system at any one time. Standard suffixes like K, Ki, M, Mi, G or Gi are supported. Default is 8.0 Ei"
    retry_count: "Number of times to retry a failing job before giving up and labeling job failed. default=1"
    max_job_duration: "Maximum runtime of a job (in seconds) before we kill it (this is a lower bound, and the actual time before killing the job may be longer). default=9223372036854775807"
    rescue_jobs_frequency: "Period of time to wait (in seconds) between checking for missing/overlong jobs, that is jobs which get lost by the batch system. Expert parameter. default=3600"
    disable_caching: "Disables caching in the file store. This flag must be set to use a batch system that does not support caching such as Grid Engine, Parasol, LSF, or Slurm"
    max_log_file_size: "The maximum size of a job log file to keep (in bytes), log files larger than this will be truncated to the last X bytes. Setting this option to zero will prevent any truncation. Setting this option to a negative value will truncate from the beginning.Default=62.5 K"
    write_logs: "[WRITELOGS] Write worker logs received by the leader into their own files at the specified path. The current working directory will be used if a path is not specified explicitly. Note: By default only the logs of failed jobs are returned to leader. Set log level to 'debug' to get logs back from successful jobs, and adjust 'maxLogFileSize' to control the truncation limit for worker logs."
    write_logs_gzip: "[WRITELOGSGZIP] Identical to --writeLogs except the logs files are gzipped on the leader."
    real_time_logging: "Enable real-time logging from workers to masters"
    sse_key: "Path to file containing 32 character key to be used for server-side encryption on awsJobStore or googleJobStore. SSE will not be used if this flag is not passed."
    cse_key: "Path to file containing 256-bit key to be used for client-side encryption on azureJobStore. By default, no encryption is used."
    setenv: "=VALUE or NAME, -e NAME=VALUE or NAME Set an environment variable early on in the worker. If VALUE is omitted, it will be looked up in the current environment. Independently of this option, the worker will try to emulate the leader's environment before running a job. Using this option, a variable can be injected into the worker process itself before it is started."
    service_polling_interval: "Interval of time service jobs wait between polling for the existence of the keep-alive flag (defailt=60)"
    debug_worker: "Experimental no forking mode for local debugging. Specifically, workers are not forked and stderr/stdout are not redirected to the log."
    bad_worker: "For testing purposes randomly kill 'badWorker' proportion of jobs using SIGKILL, default=0.0"
    bad_worker_fail_interval: "When killing the job pick uniformly within the interval from 0.0 to 'badWorkerFailInterval' seconds after the worker starts, default=0.01"
    seq_file: "Seq file"
    output_hal: "Output HAL file"
    job_store: "The location of the job store for the workflow. A job store holds persistent information about the jobs and files in a workflow. If the workflow is run with a distributed batch system, the job store must be accessible by all worker nodes. Depending on the desired job store implementation, the location should be formatted according to one of the following schemes: file:<path> where <path> points to a directory on the file systen aws:<region>:<prefix> where <region> is the name of an AWS region like us- west-2 and <prefix> will be prepended to the names of any top-level AWS resources in use by job store, e.g. S3 buckets. azure:<account>:<prefix> google:<project_id>:<prefix> TODO: explain For backwards compatibility, you may also specify ./foo (equivalent to file:./foo or just file:foo) or /bar (equivalent to file:/bar)."
  }
}