version 1.0

task Cactus {
  input {
    File? experiment
    Boolean? build_avg_s
    Boolean? build_reference
    Boolean? build_hal
    Boolean? build_fast_a
    String? intermediate_results_url
    String? database
    File? config_file
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
    File? log_file
    Boolean? rotating_logging
    File? workdir
    Boolean? stats
    String? clean
    String? clean_workdir
    File? cluster_stats
    Boolean? restart
    String? batch_system
    Boolean? disable_hot_deployment
    File? parasol_command
    Int? parasol_max_batches
    Int? scale
    Boolean? link_imports
    Float? mesos_master
    Int? node_types
    String? node_options
    Int? min_nodes
    Int? max_nodes
    Int? alpha_packing
    Int? beta_inertia
    Int? scale_interval
    Float? preempt_able_compensation
    Int? node_storage
    Boolean? metrics
    Int? max_service_jobs
    Int? max_preempt_able_service_jobs
    Int? deadlock_wait
    String? state_polling_wait
    Int? default_memory
    Float? default_cores
    Int? default_disk
    Boolean? default_preempt_able
    Int? retry_count
    Int? max_job_duration
    Int? rescue_jobs_frequency
    Boolean? disable_caching
    Int? max_log_file_size
    Boolean? write_logs
    Boolean? write_logs_gzip
    Boolean? real_time_logging
    File? sse_key
    File? cse_key
    String? setenv
    Int? service_polling_interval
    Boolean? debug_worker
    Float? bad_worker
    Float? bad_worker_fail_interval
    String seq_file
    String output_hal
    String job_store
    String provisioning_dot
  }
  command <<<
    cactus \
      ~{seq_file} \
      ~{output_hal} \
      ~{job_store} \
      ~{provisioning_dot} \
      ~{if defined(experiment) then ("--experiment " +  '"' + experiment + '"') else ""} \
      ~{if (build_avg_s) then "--buildAvgs" else ""} \
      ~{if (build_reference) then "--buildReference" else ""} \
      ~{if (build_hal) then "--buildHal" else ""} \
      ~{if (build_fast_a) then "--buildFasta" else ""} \
      ~{if defined(intermediate_results_url) then ("--intermediateResultsUrl " +  '"' + intermediate_results_url + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(config_file) then ("--configFile " +  '"' + config_file + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if (latest) then "--latest" else ""} \
      ~{if defined(container_image) then ("--containerImage " +  '"' + container_image + '"') else ""} \
      ~{if defined(binaries_mode) then ("--binariesMode " +  '"' + binaries_mode + '"') else ""} \
      ~{if (logoff) then "--logOff" else ""} \
      ~{if (log_critical) then "--logCritical" else ""} \
      ~{if (log_error) then "--logError" else ""} \
      ~{if (log_warning) then "--logWarning" else ""} \
      ~{if (loginfo) then "--logInfo" else ""} \
      ~{if (log_debug) then "--logDebug" else ""} \
      ~{if defined(loglevel) then ("--logLevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logFile " +  '"' + log_file + '"') else ""} \
      ~{if (rotating_logging) then "--rotatingLogging" else ""} \
      ~{if defined(workdir) then ("--workDir " +  '"' + workdir + '"') else ""} \
      ~{if (stats) then "--stats" else ""} \
      ~{if defined(clean) then ("--clean " +  '"' + clean + '"') else ""} \
      ~{if defined(clean_workdir) then ("--cleanWorkDir " +  '"' + clean_workdir + '"') else ""} \
      ~{if (cluster_stats) then "--clusterStats" else ""} \
      ~{if (restart) then "--restart" else ""} \
      ~{if defined(batch_system) then ("--batchSystem " +  '"' + batch_system + '"') else ""} \
      ~{if (disable_hot_deployment) then "--disableHotDeployment" else ""} \
      ~{if defined(parasol_command) then ("--parasolCommand " +  '"' + parasol_command + '"') else ""} \
      ~{if defined(parasol_max_batches) then ("--parasolMaxBatches " +  '"' + parasol_max_batches + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if (link_imports) then "--linkImports" else ""} \
      ~{if defined(mesos_master) then ("--mesosMaster " +  '"' + mesos_master + '"') else ""} \
      ~{if defined(node_types) then ("--nodeTypes " +  '"' + node_types + '"') else ""} \
      ~{if defined(node_options) then ("--nodeOptions " +  '"' + node_options + '"') else ""} \
      ~{if defined(min_nodes) then ("--minNodes " +  '"' + min_nodes + '"') else ""} \
      ~{if defined(max_nodes) then ("--maxNodes " +  '"' + max_nodes + '"') else ""} \
      ~{if defined(alpha_packing) then ("--alphaPacking " +  '"' + alpha_packing + '"') else ""} \
      ~{if defined(beta_inertia) then ("--betaInertia " +  '"' + beta_inertia + '"') else ""} \
      ~{if defined(scale_interval) then ("--scaleInterval " +  '"' + scale_interval + '"') else ""} \
      ~{if defined(preempt_able_compensation) then ("--preemptableCompensation " +  '"' + preempt_able_compensation + '"') else ""} \
      ~{if defined(node_storage) then ("--nodeStorage " +  '"' + node_storage + '"') else ""} \
      ~{if (metrics) then "--metrics" else ""} \
      ~{if defined(max_service_jobs) then ("--maxServiceJobs " +  '"' + max_service_jobs + '"') else ""} \
      ~{if defined(max_preempt_able_service_jobs) then ("--maxPreemptableServiceJobs " +  '"' + max_preempt_able_service_jobs + '"') else ""} \
      ~{if defined(deadlock_wait) then ("--deadlockWait " +  '"' + deadlock_wait + '"') else ""} \
      ~{if defined(state_polling_wait) then ("--statePollingWait " +  '"' + state_polling_wait + '"') else ""} \
      ~{if defined(default_memory) then ("--defaultMemory " +  '"' + default_memory + '"') else ""} \
      ~{if defined(default_cores) then ("--defaultCores " +  '"' + default_cores + '"') else ""} \
      ~{if defined(default_disk) then ("--defaultDisk " +  '"' + default_disk + '"') else ""} \
      ~{if (default_preempt_able) then "--defaultPreemptable" else ""} \
      ~{if defined(retry_count) then ("--retryCount " +  '"' + retry_count + '"') else ""} \
      ~{if defined(max_job_duration) then ("--maxJobDuration " +  '"' + max_job_duration + '"') else ""} \
      ~{if defined(rescue_jobs_frequency) then ("--rescueJobsFrequency " +  '"' + rescue_jobs_frequency + '"') else ""} \
      ~{if (disable_caching) then "--disableCaching" else ""} \
      ~{if defined(max_log_file_size) then ("--maxLogFileSize " +  '"' + max_log_file_size + '"') else ""} \
      ~{if (write_logs) then "--writeLogs" else ""} \
      ~{if (write_logs_gzip) then "--writeLogsGzip" else ""} \
      ~{if (real_time_logging) then "--realTimeLogging" else ""} \
      ~{if defined(sse_key) then ("--sseKey " +  '"' + sse_key + '"') else ""} \
      ~{if defined(cse_key) then ("--cseKey " +  '"' + cse_key + '"') else ""} \
      ~{if defined(setenv) then ("--setEnv " +  '"' + setenv + '"') else ""} \
      ~{if defined(service_polling_interval) then ("--servicePollingInterval " +  '"' + service_polling_interval + '"') else ""} \
      ~{if (debug_worker) then "--debugWorker" else ""} \
      ~{if defined(bad_worker) then ("--badWorker " +  '"' + bad_worker + '"') else ""} \
      ~{if defined(bad_worker_fail_interval) then ("--badWorkerFailInterval " +  '"' + bad_worker_fail_interval + '"') else ""}
  >>>
  parameter_meta {
    experiment: "The file containing a link to the experiment\\nparameters"
    build_avg_s: "Build trees"
    build_reference: "Creates a reference ordering for the flowers"
    build_hal: "Build a hal file"
    build_fast_a: "Build a fasta file of the input sequences (and\\nreference sequence, used with hal output)"
    intermediate_results_url: "URL prefix to save intermediate results like DB dumps\\nto (e.g. prefix-dump-caf, prefix-dump-avg, etc.)"
    database: "Database type: tokyo_cabinet or kyoto_tycoon [default:\\nkyoto_tycoon]"
    config_file: "Specify cactus configuration file"
    root: "Name of ancestral node (which must appear in NEWICK\\ntree in <seqfile>) to use as a root for the alignment.\\nAny genomes not below this node in the tree may be\\nused as outgroups but will never appear in the output.\\nIf no root is specifed then the root of the tree is\\nused."
    latest: "Use the latest version of the docker container rather\\nthan pulling one matching this version of cactus"
    container_image: "Use the the specified pre-built containter image\\nrather than pulling one from quay.io"
    binaries_mode: "The way to run the Cactus binaries"
    logoff: "Same as --logCritical"
    log_critical: "Turn on logging at level CRITICAL and above. (default\\nis INFO)"
    log_error: "Turn on logging at level ERROR and above. (default is\\nINFO)"
    log_warning: "Turn on logging at level WARNING and above. (default\\nis INFO)"
    loginfo: "Turn on logging at level INFO and above. (default is\\nINFO)"
    log_debug: "Turn on logging at level DEBUG and above. (default is\\nINFO)"
    loglevel: "Log at given level (may be either OFF (or CRITICAL),\\nERROR, WARN (or WARNING), INFO or DEBUG). (default is\\nINFO)"
    log_file: "File to log in"
    rotating_logging: "Turn on rotating logging, which prevents log files\\ngetting too big."
    workdir: "Absolute path to directory where temporary files\\ngenerated during the Toil run should be placed. Temp\\nfiles and folders will be placed in a directory\\ntoil-<workflowID> within workDir (The workflowID is\\ngenerated by Toil and will be reported in the workflow\\nlogs. Default is determined by the variables (TMPDIR,\\nTEMP, TMP) via mkdtemp. This directory needs to exist\\non all machines running jobs."
    stats: "Records statistics about the toil workflow to be used\\nby 'toil stats'."
    clean: "Determines the deletion of the jobStore upon\\ncompletion of the program. Choices: 'always',\\n'onError','never', 'onSuccess'. The --stats option\\nrequires information from the jobStore upon completion\\nso the jobStore will never be deleted withthat flag.\\nIf you wish to be able to restart the run, choose\\n'never' or 'onSuccess'. Default is 'never' if stats is\\nenabled, and 'onSuccess' otherwise"
    clean_workdir: "Determines deletion of temporary worker directory upon\\ncompletion of a job. Choices: 'always', 'never',\\n'onSuccess'. Default = always. WARNING: This option\\nshould be changed for debugging only. Running a full\\npipeline with this option could fill your disk with\\nintermediate data."
    cluster_stats: "[CLUSTERSTATS]\\nIf enabled, writes out JSON resource usage statistics\\nto a file. The default location for this file is the\\ncurrent working directory, but an absolute path can\\nalso be passed to specify where this file should be\\nwritten. This options only applies when using scalable\\nbatch systems."
    restart: "If --restart is specified then will attempt to restart\\nexisting workflow at the location pointed to by the\\n--jobStore option. Will raise an exception if the\\nworkflow does not exist"
    batch_system: "The type of batch system to run the job(s) with,\\ncurrently can be one of LSF, Mesos, Slurm, Torque,\\nHTCondor, singleMachine, parasol, gridEngine'.\\ndefault=singleMachine"
    disable_hot_deployment: "Should hot-deployment of the user script be\\ndeactivated? If True, the user script/package should\\nbe present at the same location on all workers.\\ndefault=false"
    parasol_command: "The name or path of the parasol program. Will be\\nlooked up on PATH unless it starts with a\\nslashdefault=parasol"
    parasol_max_batches: "Maximum number of job batches the Parasol batch is\\nallowed to create. One batch is created for jobs with\\na a unique set of resource requirements. default=1000"
    scale: "A scaling factor to change the value of all submitted\\ntasks's submitted cores. Used in singleMachine batch\\nsystem. default=1"
    link_imports: "When using Toil's importFile function for staging,\\ninput files are copied to the job store. Specifying\\nthis option saves space by sym-linking imported files.\\nAs long as caching is enabled Toil will protect the\\nfile automatically by changing the permissions to\\nread-only."
    mesos_master: "The host and port of the Mesos master separated by\\ncolon. (default: 172.17.0.9:5050)"
    node_types: "List of node types separated by commas. The syntax for\\neach node type depends on the provisioner used. For\\nthe cgcloud and AWS provisioners this is the name of\\nan EC2 instance type, optionally followed by a colon\\nand the price in dollars to bid for a spot instance of\\nthat type, for example 'c3.8xlarge:0.42'.If no spot\\nbid is specified, nodes of this type will be non-\\npreemptable.It is acceptable to specify an instance as\\nboth preemptable and non-preemptable, including it\\ntwice in the list. In that case,preemptable nodes of\\nthat type will be preferred when creating new nodes\\nonce the maximum number of preemptable-nodes has\\nbeenreached."
    node_options: "Options for provisioning the nodes. The syntax depends\\non the provisioner used. Neither the CGCloud nor the\\nAWS provisioner support any node options."
    min_nodes: "Mininum number of nodes of each type in the cluster,\\nif using auto-scaling. This should be provided as a\\ncomma-separated list of the same length as the list of\\nnode types. default=0"
    max_nodes: "Maximum number of nodes of each type in the cluster,\\nif using autoscaling, provided as a comma-separated\\nlist. The first value is used as a default if the list\\nlength is less than the number of nodeTypes.\\ndefault=10"
    alpha_packing: "The total number of nodes estimated to be required to\\ncompute the issued jobs is multiplied by the alpha\\npacking parameter to produce the actual number of\\nnodes requested. Values of this coefficient greater\\nthan one will tend to over provision and values less\\nthan one will under provision. default=0.8"
    beta_inertia: "A smoothing parameter to prevent unnecessary\\noscillations in the number of provisioned nodes. If\\nthe number of nodes is within the beta inertia of the\\ncurrently provisioned number of nodes then no change\\nis made to the number of requested nodes. default=1.2"
    scale_interval: "The interval (seconds) between assessing if the scale\\nof the cluster needs to change. default=30"
    preempt_able_compensation: "The preference of the autoscaler to replace\\npreemptable nodes with non-preemptable nodes, when\\npreemptable nodes cannot be started for some reason.\\nDefaults to 0.0. This value must be between 0.0 and\\n1.0, inclusive. A value of 0.0 disables such\\ncompensation, a value of 0.5 compensates two missing\\npreemptable nodes with a non-preemptable one. A value\\nof 1.0 replaces every missing pre-emptable node with a\\nnon-preemptable one."
    node_storage: "Specify the size of the root volume of worker nodes\\nwhen they are launched in gigabytes. You may want to\\nset this if your jobs require a lot of disk space. The\\ndefault value is 50."
    metrics: "Enable the prometheus/grafana dashboard for monitoring\\nCPU/RAM usage, queue size, and issued jobs."
    max_service_jobs: "The maximum number of service jobs that can be run\\nconcurrently, excluding service jobs running on\\npreemptable nodes. default=9223372036854775807"
    max_preempt_able_service_jobs: "The maximum number of service jobs that can run\\nconcurrently on preemptable nodes.\\ndefault=9223372036854775807"
    deadlock_wait: "The minimum number of seconds to observe the cluster\\nstuck running only the same service jobs before\\nthrowing a deadlock exception. default=60"
    state_polling_wait: "Time, in seconds, to wait before doing a scheduler\\nquery for job state. Return cached results if within\\nthe waiting period."
    default_memory: "The default amount of memory to request for a job.\\nOnly applicable to jobs that do not specify an\\nexplicit value for this requirement. Standard suffixes\\nlike K, Ki, M, Mi, G or Gi are supported. Default is\\n2.0 Gi"
    default_cores: "The default number of CPU cores to dedicate a job.\\nOnly applicable to jobs that do not specify an\\nexplicit value for this requirement. Fractions of a\\ncore (for example 0.1) are supported on some batch\\nsystems, namely Mesos and singleMachine. Default is\\n1.0"
    default_disk: "The default amount of disk space to dedicate a job.\\nOnly applicable to jobs that do not specify an\\nexplicit value for this requirement. Standard suffixes\\nlike K, Ki, M, Mi, G or Gi are supported. Default is\\n2.0 Gi"
    default_preempt_able: "--maxCores INT        The maximum number of CPU cores to request from the\\nbatch system at any one time. Standard suffixes like\\nK, Ki, M, Mi, G or Gi are supported. Default is 8.0 Ei\\n--maxMemory INT       The maximum amount of memory to request from the batch\\nsystem at any one time. Standard suffixes like K, Ki,\\nM, Mi, G or Gi are supported. Default is 8.0 Ei\\n--maxDisk INT         The maximum amount of disk space to request from the\\nbatch system at any one time. Standard suffixes like\\nK, Ki, M, Mi, G or Gi are supported. Default is 8.0 Ei"
    retry_count: "Number of times to retry a failing job before giving\\nup and labeling job failed. default=1"
    max_job_duration: "Maximum runtime of a job (in seconds) before we kill\\nit (this is a lower bound, and the actual time before\\nkilling the job may be longer).\\ndefault=9223372036854775807"
    rescue_jobs_frequency: "Period of time to wait (in seconds) between checking\\nfor missing/overlong jobs, that is jobs which get lost\\nby the batch system. Expert parameter. default=3600"
    disable_caching: "Disables caching in the file store. This flag must be\\nset to use a batch system that does not support\\ncaching such as Grid Engine, Parasol, LSF, or Slurm"
    max_log_file_size: "The maximum size of a job log file to keep (in bytes),\\nlog files larger than this will be truncated to the\\nlast X bytes. Setting this option to zero will prevent\\nany truncation. Setting this option to a negative\\nvalue will truncate from the beginning.Default=62.5 K"
    write_logs: "[WRITELOGS]\\nWrite worker logs received by the leader into their\\nown files at the specified path. The current working\\ndirectory will be used if a path is not specified\\nexplicitly. Note: By default only the logs of failed\\njobs are returned to leader. Set log level to 'debug'\\nto get logs back from successful jobs, and adjust\\n'maxLogFileSize' to control the truncation limit for\\nworker logs."
    write_logs_gzip: "[WRITELOGSGZIP]\\nIdentical to --writeLogs except the logs files are\\ngzipped on the leader."
    real_time_logging: "Enable real-time logging from workers to masters"
    sse_key: "Path to file containing 32 character key to be used\\nfor server-side encryption on awsJobStore or\\ngoogleJobStore. SSE will not be used if this flag is\\nnot passed."
    cse_key: "Path to file containing 256-bit key to be used for\\nclient-side encryption on azureJobStore. By default,\\nno encryption is used."
    setenv: "=VALUE or NAME, -e NAME=VALUE or NAME\\nSet an environment variable early on in the worker. If\\nVALUE is omitted, it will be looked up in the current\\nenvironment. Independently of this option, the worker\\nwill try to emulate the leader's environment before\\nrunning a job. Using this option, a variable can be\\ninjected into the worker process itself before it is\\nstarted."
    service_polling_interval: "Interval of time service jobs wait between polling for\\nthe existence of the keep-alive flag (defailt=60)"
    debug_worker: "Experimental no forking mode for local debugging.\\nSpecifically, workers are not forked and stderr/stdout\\nare not redirected to the log."
    bad_worker: "For testing purposes randomly kill 'badWorker'\\nproportion of jobs using SIGKILL, default=0.0"
    bad_worker_fail_interval: "When killing the job pick uniformly within the\\ninterval from 0.0 to 'badWorkerFailInterval' seconds\\nafter the worker starts, default=0.01\\n"
    seq_file: "Seq file"
    output_hal: "Output HAL file"
    job_store: "The location of the job store for the workflow. A job\\nstore holds persistent information about the jobs and\\nfiles in a workflow. If the workflow is run with a\\ndistributed batch system, the job store must be\\naccessible by all worker nodes. Depending on the\\ndesired job store implementation, the location should\\nbe formatted according to one of the following\\nschemes: file:<path> where <path> points to a\\ndirectory on the file systen aws:<region>:<prefix>\\nwhere <region> is the name of an AWS region like us-\\nwest-2 and <prefix> will be prepended to the names of\\nany top-level AWS resources in use by job store, e.g.\\nS3 buckets. azure:<account>:<prefix>\\ngoogle:<project_id>:<prefix> TODO: explain For\\nbackwards compatibility, you may also specify ./foo\\n(equivalent to file:./foo or just file:foo) or /bar\\n(equivalent to file:/bar)."
    provisioning_dot: "--provisioner {aws}   The provisioner for cluster auto-scaling. The\\ncurrently supported choices are'cgcloud' or 'aws'. The\\ndefault is None."
  }
  output {
    File out_stdout = stdout()
    File out_cluster_stats = "${in_cluster_stats}"
  }
}