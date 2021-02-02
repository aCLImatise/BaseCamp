version 1.0

task Toilcwlrunner {
  input {
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
    Boolean? no_stdout_err
    Boolean? stats
    String? clean
    String? clean_workdir
    File? cluster_stats
    Boolean? restart
    String? batch_system
    Boolean? disable_hot_deployment
    Boolean? disable_auto_deployment
    Int? max_local_jobs
    Boolean? manual_mem_args
    Boolean? run_cwl_internal_jobs_on_workers
    File? parasol_command
    Int? parasol_max_batches
    Int? scale
    Boolean? no_link_imports
    File? no_move_exports
    Float? mesos_master
    File? ku_bernet_es_host_path
    Int? node_types
    String? node_options
    Int? min_nodes
    Int? max_nodes
    Int? target_time
    Int? beta_inertia
    Int? scale_interval
    Float? preempt_able_compensation
    Int? node_storage
    Boolean? metrics
    Int? default_memory
    Float? default_cores
    Int? default_disk
    Boolean? default_preempt_able
    Int? retry_count
    Boolean? enable_unlimited_preempt_able_retries
    Int? max_job_duration
    Int? rescue_jobs_frequency
    Boolean? disable_caching
    Boolean? disable_chaining
    Boolean? disable_job_store_checksum_verification
    Int? max_log_file_size
    File? write_logs
    Boolean? write_logs_gzip
    Boolean? write_logs_from_all_jobs
    Boolean? real_time_logging
    File? sse_key
    String? setenv
    Int? service_polling_interval
    Boolean? force_docker_appliance
    Boolean? disable_progress
    Boolean? debug_worker
    Boolean? disable_worker_output_capture
    Float? bad_worker
    Float? bad_worker_fail_interval
    Directory? provenance
    Boolean? enable_user_provenance
    Boolean? disable_user_provenance
    Boolean? enable_host_provenance
    Boolean? disable_host_provenance
    Int? or_cid
    String? full_name
    String cwl_tool
    String job_store
    String provisioning_dot
  }
  command <<<
    toil_cwl_runner \
      ~{cwl_tool} \
      ~{job_store} \
      ~{provisioning_dot} \
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
      ~{if (no_stdout_err) then "--noStdOutErr" else ""} \
      ~{if (stats) then "--stats" else ""} \
      ~{if defined(clean) then ("--clean " +  '"' + clean + '"') else ""} \
      ~{if defined(clean_workdir) then ("--cleanWorkDir " +  '"' + clean_workdir + '"') else ""} \
      ~{if (cluster_stats) then "--clusterStats" else ""} \
      ~{if (restart) then "--restart" else ""} \
      ~{if defined(batch_system) then ("--batchSystem " +  '"' + batch_system + '"') else ""} \
      ~{if (disable_hot_deployment) then "--disableHotDeployment" else ""} \
      ~{if (disable_auto_deployment) then "--disableAutoDeployment" else ""} \
      ~{if defined(max_local_jobs) then ("--maxLocalJobs " +  '"' + max_local_jobs + '"') else ""} \
      ~{if (manual_mem_args) then "--manualMemArgs" else ""} \
      ~{if (run_cwl_internal_jobs_on_workers) then "--runCwlInternalJobsOnWorkers" else ""} \
      ~{if defined(parasol_command) then ("--parasolCommand " +  '"' + parasol_command + '"') else ""} \
      ~{if defined(parasol_max_batches) then ("--parasolMaxBatches " +  '"' + parasol_max_batches + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if (no_link_imports) then "--noLinkImports" else ""} \
      ~{if (no_move_exports) then "--noMoveExports" else ""} \
      ~{if defined(mesos_master) then ("--mesosMaster " +  '"' + mesos_master + '"') else ""} \
      ~{if defined(ku_bernet_es_host_path) then ("--kubernetesHostPath " +  '"' + ku_bernet_es_host_path + '"') else ""} \
      ~{if defined(node_types) then ("--nodeTypes " +  '"' + node_types + '"') else ""} \
      ~{if defined(node_options) then ("--nodeOptions " +  '"' + node_options + '"') else ""} \
      ~{if defined(min_nodes) then ("--minNodes " +  '"' + min_nodes + '"') else ""} \
      ~{if defined(max_nodes) then ("--maxNodes " +  '"' + max_nodes + '"') else ""} \
      ~{if defined(target_time) then ("--targetTime " +  '"' + target_time + '"') else ""} \
      ~{if defined(beta_inertia) then ("--betaInertia " +  '"' + beta_inertia + '"') else ""} \
      ~{if defined(scale_interval) then ("--scaleInterval " +  '"' + scale_interval + '"') else ""} \
      ~{if defined(preempt_able_compensation) then ("--preemptableCompensation " +  '"' + preempt_able_compensation + '"') else ""} \
      ~{if defined(node_storage) then ("--nodeStorage " +  '"' + node_storage + '"') else ""} \
      ~{if (metrics) then "--metrics" else ""} \
      ~{if defined(default_memory) then ("--defaultMemory " +  '"' + default_memory + '"') else ""} \
      ~{if defined(default_cores) then ("--defaultCores " +  '"' + default_cores + '"') else ""} \
      ~{if defined(default_disk) then ("--defaultDisk " +  '"' + default_disk + '"') else ""} \
      ~{if (default_preempt_able) then "--defaultPreemptable" else ""} \
      ~{if defined(retry_count) then ("--retryCount " +  '"' + retry_count + '"') else ""} \
      ~{if (enable_unlimited_preempt_able_retries) then "--enableUnlimitedPreemptableRetries" else ""} \
      ~{if defined(max_job_duration) then ("--maxJobDuration " +  '"' + max_job_duration + '"') else ""} \
      ~{if defined(rescue_jobs_frequency) then ("--rescueJobsFrequency " +  '"' + rescue_jobs_frequency + '"') else ""} \
      ~{if (disable_caching) then "--disableCaching" else ""} \
      ~{if (disable_chaining) then "--disableChaining" else ""} \
      ~{if (disable_job_store_checksum_verification) then "--disableJobStoreChecksumVerification" else ""} \
      ~{if defined(max_log_file_size) then ("--maxLogFileSize " +  '"' + max_log_file_size + '"') else ""} \
      ~{if (write_logs) then "--writeLogs" else ""} \
      ~{if (write_logs_gzip) then "--writeLogsGzip" else ""} \
      ~{if (write_logs_from_all_jobs) then "--writeLogsFromAllJobs" else ""} \
      ~{if (real_time_logging) then "--realTimeLogging" else ""} \
      ~{if defined(sse_key) then ("--sseKey " +  '"' + sse_key + '"') else ""} \
      ~{if defined(setenv) then ("--setEnv " +  '"' + setenv + '"') else ""} \
      ~{if defined(service_polling_interval) then ("--servicePollingInterval " +  '"' + service_polling_interval + '"') else ""} \
      ~{if (force_docker_appliance) then "--forceDockerAppliance" else ""} \
      ~{if (disable_progress) then "--disableProgress" else ""} \
      ~{if (debug_worker) then "--debugWorker" else ""} \
      ~{if (disable_worker_output_capture) then "--disableWorkerOutputCapture" else ""} \
      ~{if defined(bad_worker) then ("--badWorker " +  '"' + bad_worker + '"') else ""} \
      ~{if defined(bad_worker_fail_interval) then ("--badWorkerFailInterval " +  '"' + bad_worker_fail_interval + '"') else ""} \
      ~{if defined(provenance) then ("--provenance " +  '"' + provenance + '"') else ""} \
      ~{if (enable_user_provenance) then "--enable-user-provenance" else ""} \
      ~{if (disable_user_provenance) then "--disable-user-provenance" else ""} \
      ~{if (enable_host_provenance) then "--enable-host-provenance" else ""} \
      ~{if (disable_host_provenance) then "--disable-host-provenance" else ""} \
      ~{if defined(or_cid) then ("--orcid " +  '"' + or_cid + '"') else ""} \
      ~{if defined(full_name) then ("--full-name " +  '"' + full_name + '"') else ""}
  >>>
  parameter_meta {
    logoff: "Same as --logCritical"
    log_critical: "Turn on logging at level CRITICAL and above. (default\\nis INFO)"
    log_error: "Turn on logging at level ERROR and above. (default is\\nINFO)"
    log_warning: "Turn on logging at level WARNING and above. (default\\nis INFO)"
    loginfo: "Turn on logging at level INFO and above. (default is\\nINFO)"
    log_debug: "Turn on logging at level DEBUG and above. (default is\\nINFO)"
    loglevel: "Log at given level (may be either OFF (or CRITICAL),\\nERROR, WARN (or WARNING), INFO or DEBUG). (default is\\nINFO)"
    log_file: "File to log in"
    rotating_logging: "Turn on rotating logging, which prevents log files\\ngetting too big."
    workdir: "Absolute path to directory where temporary files\\ngenerated during the Toil run should be placed.\\nStandard output and error from batch system jobs\\n(unless --noStdOutErr) will be placed in this\\ndirectory. A cache directory may be placed in this\\ndirectory. Temp files and folders will be placed in a\\ndirectory toil-<workflowID> within workDir. The\\nworkflowID is generated by Toil and will be reported\\nin the workflow logs. Default is determined by the\\nvariables (TMPDIR, TEMP, TMP) via mkdtemp. This\\ndirectory needs to exist on all machines running jobs;\\nif capturing standard output and error from batch\\nsystem jobs is desired, it will generally need to be\\non a shared file system. When sharing a cache between\\ncontainers on a host, this directory must be shared\\nbetween the containers."
    no_stdout_err: "Do not capture standard output and error from batch\\nsystem jobs."
    stats: "Records statistics about the toil workflow to be used\\nby 'toil stats'."
    clean: "Determines the deletion of the jobStore upon\\ncompletion of the program. Choices: 'always',\\n'onError','never', 'onSuccess'. The --stats option\\nrequires information from the jobStore upon completion\\nso the jobStore will never be deleted withthat flag.\\nIf you wish to be able to restart the run, choose\\n'never' or 'onSuccess'. Default is 'never' if stats is\\nenabled, and 'onSuccess' otherwise"
    clean_workdir: "Determines deletion of temporary worker directory upon\\ncompletion of a job. Choices: 'always', 'never',\\n'onSuccess'. Default = always. WARNING: This option\\nshould be changed for debugging only. Running a full\\npipeline with this option could fill your disk with\\nintermediate data."
    cluster_stats: "[CLUSTERSTATS]\\nIf enabled, writes out JSON resource usage statistics\\nto a file. The default location for this file is the\\ncurrent working directory, but an absolute path can\\nalso be passed to specify where this file should be\\nwritten. This options only applies when using scalable\\nbatch systems."
    restart: "If --restart is specified then will attempt to restart\\nexisting workflow at the location pointed to by the\\n--jobStore option. Will raise an exception if the\\nworkflow does not exist"
    batch_system: "The type of batch system to run the job(s) with,\\ncurrently can be one of Slurm, Torque, LSF,\\nKubernetes, Mesos, HTCondor, singleMachine, parasol,\\ngridEngine'. default=singleMachine"
    disable_hot_deployment: "Hot-deployment was renamed to auto-deployment. Option\\nnow redirects to --disableAutoDeployment. Left in for\\nbackwards compatibility."
    disable_auto_deployment: "Should auto-deployment of the user script be\\ndeactivated? If True, the user script/package should\\nbe present at the same location on all workers.\\ndefault=false"
    max_local_jobs: "For batch systems that support a local queue for\\nhousekeeping jobs (Mesos, GridEngine, htcondor, lsf,\\nslurm, torque), the maximum number of these\\nhousekeeping jobs to run on the local system. The\\ndefault (equal to the number of cores) is a maximum of\\n8 concurrent local housekeeping jobs."
    manual_mem_args: "Do not add the default arguments: 'hv=MEMORY' &\\n'h_vmem=MEMORY' to the qsub call, and instead rely on\\nTOIL_GRIDGENGINE_ARGS to supply alternative arguments.\\nRequires that TOIL_GRIDGENGINE_ARGS be set."
    run_cwl_internal_jobs_on_workers: "Whether to run CWL internal jobs (e.g. CWLScatter) on\\nthe worker nodes instead of the primary node. If false\\n(default), then all such jobs are run on the primary\\nnode. Setting this to true can speed up the pipeline\\nfor very large workflows with many sub-workflows\\nand/or scatters, provided that the worker pool is\\nlarge enough."
    parasol_command: "The name or path of the parasol program. Will be\\nlooked up on PATH unless it starts with a slash.\\ndefault=parasol"
    parasol_max_batches: "Maximum number of job batches the Parasol batch is\\nallowed to create. One batch is created for jobs with\\na a unique set of resource requirements. default=1000"
    scale: "A scaling factor to change the value of all submitted\\ntasks's submitted cores. Used in singleMachine batch\\nsystem. default=1"
    no_link_imports: "When using a filesystem based job store, CWL input\\nfiles are by default symlinked in. Specifying this\\noption instead copies the files into the job store,\\nwhich may protect them from being modified externally.\\nWhen not specified and as long as caching is enabled,\\nToil will protect the file automatically by changing\\nthe permissions to read-only."
    no_move_exports: "When using a filesystem based job store, output files\\nare by default moved to the output directory, and a\\nsymlink to the moved exported file is created at the\\ninitial location. Specifying this option instead\\ncopies the files into the output directory. Applies to\\nfilesystem-based job stores only."
    mesos_master: "The host and port of the Mesos master separated by\\ncolon. (default: 172.17.0.4:5050)"
    ku_bernet_es_host_path: "Path on Kubernetes hosts to use as shared inter-pod\\ntemp directory (default: None)"
    node_types: "List of node types separated by commas. The syntax for\\neach node type depends on the provisioner used. For\\nthe cgcloud and AWS provisioners this is the name of\\nan EC2 instance type, optionally followed by a colon\\nand the price in dollars to bid for a spot instance of\\nthat type, for example 'c3.8xlarge:0.42'.If no spot\\nbid is specified, nodes of this type will be non-\\npreemptable.It is acceptable to specify an instance as\\nboth preemptable and non-preemptable, including it\\ntwice in the list. In that case,preemptable nodes of\\nthat type will be preferred when creating new nodes\\nonce the maximum number of preemptable-nodes has\\nbeenreached."
    node_options: "Options for provisioning the nodes. The syntax depends\\non the provisioner used. Neither the CGCloud nor the\\nAWS provisioner support any node options."
    min_nodes: "Mininum number of nodes of each type in the cluster,\\nif using auto-scaling. This should be provided as a\\ncomma-separated list of the same length as the list of\\nnode types. default=0"
    max_nodes: "Maximum number of nodes of each type in the cluster,\\nif using autoscaling, provided as a comma-separated\\nlist. The first value is used as a default if the list\\nlength is less than the number of nodeTypes.\\ndefault=10"
    target_time: "Sets how rapidly you aim to complete jobs in seconds.\\nShorter times mean more aggressive parallelization.\\nThe autoscaler attempts to scale up/down so that it\\nexpects all queued jobs will complete within\\ntargetTime seconds. default=1800"
    beta_inertia: "A smoothing parameter to prevent unnecessary\\noscillations in the number of provisioned nodes. This\\ncontrols an exponentially weighted moving average of\\nthe estimated number of nodes. A value of 0.0 disables\\nany smoothing, and a value of 0.9 will smooth so much\\nthat few changes will ever be made. Must be between\\n0.0 and 0.9. default=0.1"
    scale_interval: "The interval (seconds) between assessing if the scale\\nof the cluster needs to change. default=60"
    preempt_able_compensation: "The preference of the autoscaler to replace\\npreemptable nodes with non-preemptable nodes, when\\npreemptable nodes cannot be started for some reason.\\nDefaults to 0.0. This value must be between 0.0 and\\n1.0, inclusive. A value of 0.0 disables such\\ncompensation, a value of 0.5 compensates two missing\\npreemptable nodes with a non-preemptable one. A value\\nof 1.0 replaces every missing pre-emptable node with a\\nnon-preemptable one."
    node_storage: "Specify the size of the root volume of worker nodes\\nwhen they are launched in gigabytes. You may want to\\nset this if your jobs require a lot of disk space. The\\ndefault value is 50."
    metrics: "Enable the prometheus/grafana dashboard for monitoring\\nCPU/RAM usage, queue size, and issued jobs."
    default_memory: "The default amount of memory to request for a job.\\nOnly applicable to jobs that do not specify an\\nexplicit value for this requirement. Standard suffixes\\nlike K, Ki, M, Mi, G or Gi are supported. Default is\\n2.0 Gi"
    default_cores: "The default number of CPU cores to dedicate a job.\\nOnly applicable to jobs that do not specify an\\nexplicit value for this requirement. Fractions of a\\ncore (for example 0.1) are supported on some batch\\nsystems, namely Mesos and singleMachine. Default is\\n1.0"
    default_disk: "The default amount of disk space to dedicate a job.\\nOnly applicable to jobs that do not specify an\\nexplicit value for this requirement. Standard suffixes\\nlike K, Ki, M, Mi, G or Gi are supported. Default is\\n2.0 Gi"
    default_preempt_able: "--maxCores INT        The maximum number of CPU cores to request from the\\nbatch system at any one time. Standard suffixes like\\nK, Ki, M, Mi, G or Gi are supported. Default is 8.0 Ei\\n--maxMemory INT       The maximum amount of memory to request from the batch\\nsystem at any one time. Standard suffixes like K, Ki,\\nM, Mi, G or Gi are supported. Default is 8.0 Ei\\n--maxDisk INT         The maximum amount of disk space to request from the\\nbatch system at any one time. Standard suffixes like\\nK, Ki, M, Mi, G or Gi are supported. Default is 8.0 Ei"
    retry_count: "Number of times to retry a failing job before giving\\nup and labeling job failed. default=1"
    enable_unlimited_preempt_able_retries: "If set, preemptable failures (or any failure due to an\\ninstance getting unexpectedly terminated) would not\\ncount towards job failures and --retryCount."
    max_job_duration: "Maximum runtime of a job (in seconds) before we kill\\nit (this is a lower bound, and the actual time before\\nkilling the job may be longer).\\ndefault=9223372036854775807"
    rescue_jobs_frequency: "Period of time to wait (in seconds) between checking\\nfor missing/overlong jobs, that is jobs which get lost\\nby the batch system. Expert parameter. default=3600"
    disable_caching: "[DISABLECACHING]\\nDisables caching in the file store. This flag must be\\nset to use a batch system that does not support\\ncaching such as Grid Engine, Parasol, LSF, or Slurm"
    disable_chaining: "Disables chaining of jobs (chaining uses one job's\\nresource allocation for its successor job if\\npossible)."
    disable_job_store_checksum_verification: "Disables checksum verification for files transferred\\nto/from the job store. Checksum verification is a\\nsafety check to ensure the data is not corrupted\\nduring transfer. Currently only supported for non-\\nstreaming AWS files."
    max_log_file_size: "The maximum size of a job log file to keep (in bytes),\\nlog files larger than this will be truncated to the\\nlast X bytes. Setting this option to zero will prevent\\nany truncation. Setting this option to a negative\\nvalue will truncate from the beginning.Default=62.5 K"
    write_logs: "[WRITELOGS]\\nWrite worker logs received by the leader into their\\nown files at the specified path. Any non-empty\\nstandard output and error from failed batch system\\njobs will also be written into files at this path. The\\ncurrent working directory will be used if a path is\\nnot specified explicitly. Note: By default only the\\nlogs of failed jobs are returned to leader. Set log\\nlevel to 'debug' or enable '--writeLogsFromAllJobs' to\\nget logs back from successful jobs, and adjust\\n'maxLogFileSize' to control the truncation limit for\\nworker logs."
    write_logs_gzip: "[WRITELOGSGZIP]\\nIdentical to --writeLogs except the logs files are\\ngzipped on the leader."
    write_logs_from_all_jobs: "Whether to write logs from all jobs (including the\\nsuccessful ones) without necessarily setting the log\\nlevel to 'debug'. Ensure that either --writeLogs or\\n--writeLogsGzip is set if enabling this option."
    real_time_logging: "Enable real-time logging from workers to masters"
    sse_key: "Path to file containing 32 character key to be used\\nfor server-side encryption on awsJobStore or\\ngoogleJobStore. SSE will not be used if this flag is\\nnot passed."
    setenv: "=VALUE or NAME, -e NAME=VALUE or NAME\\nSet an environment variable early on in the worker. If\\nVALUE is omitted, it will be looked up in the current\\nenvironment. Independently of this option, the worker\\nwill try to emulate the leader's environment before\\nrunning a job, except for some variables known to vary\\nacross systems. Using this option, a variable can be\\ninjected into the worker process itself before it is\\nstarted."
    service_polling_interval: "Interval of time service jobs wait between polling for\\nthe existence of the keep-alive flag (defailt=60)"
    force_docker_appliance: "Disables sanity checking the existence of the docker\\nimage specified by TOIL_APPLIANCE_SELF, which Toil\\nuses to provision mesos for autoscaling."
    disable_progress: "Disables the progress bar shown when standard error is\\na terminal."
    debug_worker: "Experimental no forking mode for local debugging.\\nSpecifically, workers are not forked and stderr/stdout\\nare not redirected to the log."
    disable_worker_output_capture: "Let worker output go to worker's standard out/error\\ninstead of per-job logs."
    bad_worker: "For testing purposes randomly kill 'badWorker'\\nproportion of jobs using SIGKILL, default=0.0"
    bad_worker_fail_interval: "When killing the job pick uniformly within the\\ninterval from 0.0 to 'badWorkerFailInterval' seconds\\nafter the worker starts, default=0.01"
    provenance: "Save provenance to specified folder as a Research\\nObject that captures and aggregates workflow execution\\nand data products."
    enable_user_provenance: "Record user account info as part of provenance."
    disable_user_provenance: "Do not record user account info in provenance."
    enable_host_provenance: "Record host info as part of provenance."
    disable_host_provenance: "Do not record host info in provenance."
    or_cid: "Record user ORCID identifier as part of provenance,\\ne.g. https://orcid.org/0000-0002-1825-0097 or\\n0000-0002-1825-0097. Alternatively the environment\\nvariable ORCID may be set."
    full_name: "Record full name of user as part of provenance, e.g.\\nJosiah Carberry. You may need to use shell quotes to\\npreserve spaces. Alternatively the environment\\nvariable CWL_FULL_NAME may be set.\\n"
    cwl_tool: "cwljob"
    job_store: "The location of the job store for the workflow. A job\\nstore holds persistent information about the jobs and\\nfiles in a workflow. If the workflow is run with a\\ndistributed batch system, the job store must be\\naccessible by all worker nodes. Depending on the\\ndesired job store implementation, the location should\\nbe formatted according to one of the following\\nschemes: file:<path> where <path> points to a\\ndirectory on the file systen aws:<region>:<prefix>\\nwhere <region> is the name of an AWS region like us-\\nwest-2 and <prefix> will be prepended to the names of\\nany top-level AWS resources in use by job store, e.g.\\nS3 buckets. google:<project_id>:<prefix> TODO: explain\\nFor backwards compatibility, you may also specify\\n./foo (equivalent to file:./foo or just file:foo) or\\n/bar (equivalent to file:/bar)."
    provisioning_dot: "--provisioner {aws,gce}\\nThe provisioner for cluster auto-scaling. The\\ncurrently supported choices are'gce', or 'aws'. The\\ndefault is None."
  }
  output {
    File out_stdout = stdout()
    File out_workdir = "${in_workdir}"
    File out_cluster_stats = "${in_cluster_stats}"
    File out_no_move_exports = "${in_no_move_exports}"
    File out_write_logs = "${in_write_logs}"
  }
}