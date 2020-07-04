version 1.0

task ToilCwlRunner {
  input {
    String? tmpdir_prefix
    String? tmp_outdir_prefix
    Boolean? force_docker_pull
    Boolean? no_match_user
    Boolean? no_read_only
    Boolean? strict_memory_limit
    Boolean? relax_path_checks
    String? default_container
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
    Boolean? no_stdout_err
    Boolean? stats
    String? clean
    String? clean_workdir
    Boolean? cluster_stats
    Boolean? restart
    String? batch_system
    Boolean? disable_hot_deployment
    Boolean? disable_auto_deployment
    Int? max_local_jobs
    Boolean? manual_mem_args
    Boolean? run_cwl_internal_jobs_on_workers
    String? parasol_command
    String? parasol_max_batches
    String? scale
    Boolean? no_link_imports
    Boolean? no_move_exports
    String? mesos_master
    String? ku_bernet_es_host_path
    String? provisioner
    String? node_types
    String? node_options
    Int? min_nodes
    Int? max_nodes
    String? target_time
    String? beta_inertia
    String? scale_interval
    String? preempt_able_compensation
    String? node_storage
    Boolean? metrics
    Int? max_cores
    Int? max_memory
    Int? max_disk
    String? retry_count
    Boolean? enable_unlimited_preempt_able_retries
    Int? max_job_duration
    String? rescue_jobs_frequency
    Boolean? disable_caching
    Boolean? disable_chaining
    Boolean? disable_job_store_checksum_verification
    Int? max_log_file_size
    Boolean? write_logs
    Boolean? write_logs_gzip
    Boolean? write_logs_from_all_jobs
    Boolean? real_time_logging
    String? sse_key
    String? setenv
    String? service_polling_interval
    Boolean? force_docker_appliance
    Boolean? disable_progress
    Boolean? debug_worker
    Boolean? disable_worker_output_capture
    String? bad_worker
    String? bad_worker_fail_interval
    String? provenance
    Boolean? enable_user_provenance
    Boolean? disable_user_provenance
    Boolean? enable_host_provenance
    Boolean? disable_host_provenance
    String? or_cid
    String? full_name
    String job_store
  }
  command <<<
    toil-cwl-runner \
      ~{job_store} \
      ~{if defined(tmpdir_prefix) then ("--tmpdir-prefix " +  '"' + tmpdir_prefix + '"') else ""} \
      ~{if defined(tmp_outdir_prefix) then ("--tmp-outdir-prefix " +  '"' + tmp_outdir_prefix + '"') else ""} \
      ~{true="--force-docker-pull" false="" force_docker_pull} \
      ~{true="--no-match-user" false="" no_match_user} \
      ~{true="--no-read-only" false="" no_read_only} \
      ~{true="--strict-memory-limit" false="" strict_memory_limit} \
      ~{true="--relax-path-checks" false="" relax_path_checks} \
      ~{if defined(default_container) then ("--default-container " +  '"' + default_container + '"') else ""} \
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
      ~{true="--noStdOutErr" false="" no_stdout_err} \
      ~{true="--stats" false="" stats} \
      ~{if defined(clean) then ("--clean " +  '"' + clean + '"') else ""} \
      ~{if defined(clean_workdir) then ("--cleanWorkDir " +  '"' + clean_workdir + '"') else ""} \
      ~{true="--clusterStats" false="" cluster_stats} \
      ~{true="--restart" false="" restart} \
      ~{if defined(batch_system) then ("--batchSystem " +  '"' + batch_system + '"') else ""} \
      ~{true="--disableHotDeployment" false="" disable_hot_deployment} \
      ~{true="--disableAutoDeployment" false="" disable_auto_deployment} \
      ~{if defined(max_local_jobs) then ("--maxLocalJobs " +  '"' + max_local_jobs + '"') else ""} \
      ~{true="--manualMemArgs" false="" manual_mem_args} \
      ~{true="--runCwlInternalJobsOnWorkers" false="" run_cwl_internal_jobs_on_workers} \
      ~{if defined(parasol_command) then ("--parasolCommand " +  '"' + parasol_command + '"') else ""} \
      ~{if defined(parasol_max_batches) then ("--parasolMaxBatches " +  '"' + parasol_max_batches + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{true="--noLinkImports" false="" no_link_imports} \
      ~{true="--noMoveExports" false="" no_move_exports} \
      ~{if defined(mesos_master) then ("--mesosMaster " +  '"' + mesos_master + '"') else ""} \
      ~{if defined(ku_bernet_es_host_path) then ("--kubernetesHostPath " +  '"' + ku_bernet_es_host_path + '"') else ""} \
      ~{if defined(provisioner) then ("--provisioner " +  '"' + provisioner + '"') else ""} \
      ~{if defined(node_types) then ("--nodeTypes " +  '"' + node_types + '"') else ""} \
      ~{if defined(node_options) then ("--nodeOptions " +  '"' + node_options + '"') else ""} \
      ~{if defined(min_nodes) then ("--minNodes " +  '"' + min_nodes + '"') else ""} \
      ~{if defined(max_nodes) then ("--maxNodes " +  '"' + max_nodes + '"') else ""} \
      ~{if defined(target_time) then ("--targetTime " +  '"' + target_time + '"') else ""} \
      ~{if defined(beta_inertia) then ("--betaInertia " +  '"' + beta_inertia + '"') else ""} \
      ~{if defined(scale_interval) then ("--scaleInterval " +  '"' + scale_interval + '"') else ""} \
      ~{if defined(preempt_able_compensation) then ("--preemptableCompensation " +  '"' + preempt_able_compensation + '"') else ""} \
      ~{if defined(node_storage) then ("--nodeStorage " +  '"' + node_storage + '"') else ""} \
      ~{true="--metrics" false="" metrics} \
      ~{if defined(max_cores) then ("--maxCores " +  '"' + max_cores + '"') else ""} \
      ~{if defined(max_memory) then ("--maxMemory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(max_disk) then ("--maxDisk " +  '"' + max_disk + '"') else ""} \
      ~{if defined(retry_count) then ("--retryCount " +  '"' + retry_count + '"') else ""} \
      ~{true="--enableUnlimitedPreemptableRetries" false="" enable_unlimited_preempt_able_retries} \
      ~{if defined(max_job_duration) then ("--maxJobDuration " +  '"' + max_job_duration + '"') else ""} \
      ~{if defined(rescue_jobs_frequency) then ("--rescueJobsFrequency " +  '"' + rescue_jobs_frequency + '"') else ""} \
      ~{true="--disableCaching" false="" disable_caching} \
      ~{true="--disableChaining" false="" disable_chaining} \
      ~{true="--disableJobStoreChecksumVerification" false="" disable_job_store_checksum_verification} \
      ~{if defined(max_log_file_size) then ("--maxLogFileSize " +  '"' + max_log_file_size + '"') else ""} \
      ~{true="--writeLogs" false="" write_logs} \
      ~{true="--writeLogsGzip" false="" write_logs_gzip} \
      ~{true="--writeLogsFromAllJobs" false="" write_logs_from_all_jobs} \
      ~{true="--realTimeLogging" false="" real_time_logging} \
      ~{if defined(sse_key) then ("--sseKey " +  '"' + sse_key + '"') else ""} \
      ~{if defined(setenv) then ("--setEnv " +  '"' + setenv + '"') else ""} \
      ~{if defined(service_polling_interval) then ("--servicePollingInterval " +  '"' + service_polling_interval + '"') else ""} \
      ~{true="--forceDockerAppliance" false="" force_docker_appliance} \
      ~{true="--disableProgress" false="" disable_progress} \
      ~{true="--debugWorker" false="" debug_worker} \
      ~{true="--disableWorkerOutputCapture" false="" disable_worker_output_capture} \
      ~{if defined(bad_worker) then ("--badWorker " +  '"' + bad_worker + '"') else ""} \
      ~{if defined(bad_worker_fail_interval) then ("--badWorkerFailInterval " +  '"' + bad_worker_fail_interval + '"') else ""} \
      ~{if defined(provenance) then ("--provenance " +  '"' + provenance + '"') else ""} \
      ~{true="--enable-user-provenance" false="" enable_user_provenance} \
      ~{true="--disable-user-provenance" false="" disable_user_provenance} \
      ~{true="--enable-host-provenance" false="" enable_host_provenance} \
      ~{true="--disable-host-provenance" false="" disable_host_provenance} \
      ~{if defined(or_cid) then ("--orcid " +  '"' + or_cid + '"') else ""} \
      ~{if defined(full_name) then ("--full-name " +  '"' + full_name + '"') else ""}
  >>>
  parameter_meta {
    tmpdir_prefix: "Path prefix for temporary directories"
    tmp_outdir_prefix: "Path prefix for intermediate output directories"
    force_docker_pull: "Pull latest docker image even if it is locally present"
    no_match_user: "Disable passing the current uid to `docker run --user`"
    no_read_only: "Do not set root directory in the container as read- only"
    strict_memory_limit: "When running with software containers and the Docker engine, pass either the calculated memory allocation from ResourceRequirements or the default of 1 gigabyte to Docker's --memory option."
    relax_path_checks: "Relax requirements on path names to permit spaces and hash characters."
    default_container: "Specify a default docker container that will be used if the workflow fails to specify one."
    logoff: "Same as --logCritical"
    log_critical: "Turn on logging at level CRITICAL and above. (default is INFO)"
    log_error: "Turn on logging at level ERROR and above. (default is INFO)"
    log_warning: "Turn on logging at level WARNING and above. (default is INFO)"
    loginfo: "Turn on logging at level INFO and above. (default is INFO)"
    log_debug: "Turn on logging at level DEBUG and above. (default is INFO)"
    loglevel: "Log at given level (may be either OFF (or CRITICAL), ERROR, WARN (or WARNING), INFO or DEBUG). (default is INFO)"
    log_file: "File to log in"
    rotating_logging: "Turn on rotating logging, which prevents log files getting too big."
    workdir: "Absolute path to directory where temporary files generated during the Toil run should be placed. Standard output and error from batch system jobs (unless --noStdOutErr) will be placed in this directory. A cache directory may be placed in this directory. Temp files and folders will be placed in a directory toil-<workflowID> within workDir. The workflowID is generated by Toil and will be reported in the workflow logs. Default is determined by the variables (TMPDIR, TEMP, TMP) via mkdtemp. This directory needs to exist on all machines running jobs; if capturing standard output and error from batch system jobs is desired, it will generally need to be on a shared file system. When sharing a cache between containers on a host, this directory must be shared between the containers."
    no_stdout_err: "Do not capture standard output and error from batch system jobs."
    stats: "Records statistics about the toil workflow to be used by 'toil stats'."
    clean: "Determines the deletion of the jobStore upon completion of the program. Choices: 'always', 'onError','never', 'onSuccess'. The --stats option requires information from the jobStore upon completion so the jobStore will never be deleted withthat flag. If you wish to be able to restart the run, choose 'never' or 'onSuccess'. Default is 'never' if stats is enabled, and 'onSuccess' otherwise"
    clean_workdir: "Determines deletion of temporary worker directory upon completion of a job. Choices: 'always', 'never', 'onSuccess'. Default = always. WARNING: This option should be changed for debugging only. Running a full pipeline with this option could fill your disk with intermediate data."
    cluster_stats: "[CLUSTERSTATS] If enabled, writes out JSON resource usage statistics to a file. The default location for this file is the current working directory, but an absolute path can also be passed to specify where this file should be written. This options only applies when using scalable batch systems."
    restart: "If --restart is specified then will attempt to restart existing workflow at the location pointed to by the --jobStore option. Will raise an exception if the workflow does not exist"
    batch_system: "The type of batch system to run the job(s) with, currently can be one of Torque, singleMachine, parasol, HTCondor, Mesos, Slurm, Kubernetes, LSF, gridEngine'. default=singleMachine"
    disable_hot_deployment: "Hot-deployment was renamed to auto-deployment. Option now redirects to --disableAutoDeployment. Left in for backwards compatibility."
    disable_auto_deployment: "Should auto-deployment of the user script be deactivated? If True, the user script/package should be present at the same location on all workers. default=false"
    max_local_jobs: "For batch systems that support a local queue for housekeeping jobs (Mesos, GridEngine, htcondor, lsf, slurm, torque), the maximum number of these housekeeping jobs to run on the local system. The default (equal to the number of cores) is a maximum of 8 concurrent local housekeeping jobs."
    manual_mem_args: "Do not add the default arguments: 'hv=MEMORY' & 'h_vmem=MEMORY' to the qsub call, and instead rely on TOIL_GRIDGENGINE_ARGS to supply alternative arguments. Requires that TOIL_GRIDGENGINE_ARGS be set."
    run_cwl_internal_jobs_on_workers: "Whether to run CWL internal jobs (e.g. CWLScatter) on the worker nodes instead of the primary node. If false (default), then all such jobs are run on the primary node. Setting this to true can speed up the pipeline for very large workflows with many sub-workflows and/or scatters, provided that the worker pool is large enough."
    parasol_command: "The name or path of the parasol program. Will be looked up on PATH unless it starts with a slash. default=parasol"
    parasol_max_batches: "Maximum number of job batches the Parasol batch is allowed to create. One batch is created for jobs with a a unique set of resource requirements. default=1000"
    scale: "A scaling factor to change the value of all submitted tasks's submitted cores. Used in singleMachine batch system. default=1"
    no_link_imports: "When using a filesystem based job store, CWL input files are by default symlinked in. Specifying this option instead copies the files into the job store, which may protect them from being modified externally. When not specified and as long as caching is enabled, Toil will protect the file automatically by changing the permissions to read-only."
    no_move_exports: "When using a filesystem based job store, output files are by default moved to the output directory, and a symlink to the moved exported file is created at the initial location. Specifying this option instead copies the files into the output directory. Applies to filesystem-based job stores only."
    mesos_master: "The host and port of the Mesos master separated by colon. (default: 115.146.93.132:5050)"
    ku_bernet_es_host_path: "Path on Kubernetes hosts to use as shared inter-pod temp directory (default: None)"
    provisioner: "The provisioner for cluster auto-scaling. The currently supported choices are'gce', or 'aws'. The default is None."
    node_types: "List of node types separated by commas. The syntax for each node type depends on the provisioner used. For the cgcloud and AWS provisioners this is the name of an EC2 instance type, optionally followed by a colon and the price in dollars to bid for a spot instance of that type, for example 'c3.8xlarge:0.42'.If no spot bid is specified, nodes of this type will be non- preemptable.It is acceptable to specify an instance as both preemptable and non-preemptable, including it twice in the list. In that case,preemptable nodes of that type will be preferred when creating new nodes once the maximum number of preemptable-nodes has beenreached."
    node_options: "Options for provisioning the nodes. The syntax depends on the provisioner used. Neither the CGCloud nor the AWS provisioner support any node options."
    min_nodes: "Mininum number of nodes of each type in the cluster, if using auto-scaling. This should be provided as a comma-separated list of the same length as the list of node types. default=0"
    max_nodes: "Maximum number of nodes of each type in the cluster, if using autoscaling, provided as a comma-separated list. The first value is used as a default if the list length is less than the number of nodeTypes. default=10"
    target_time: "Sets how rapidly you aim to complete jobs in seconds. Shorter times mean more aggressive parallelization. The autoscaler attempts to scale up/down so that it expects all queued jobs will complete within targetTime seconds. default=1800"
    beta_inertia: "A smoothing parameter to prevent unnecessary oscillations in the number of provisioned nodes. This controls an exponentially weighted moving average of the estimated number of nodes. A value of 0.0 disables any smoothing, and a value of 0.9 will smooth so much that few changes will ever be made. Must be between 0.0 and 0.9. default=0.1"
    scale_interval: "The interval (seconds) between assessing if the scale of the cluster needs to change. default=60"
    preempt_able_compensation: "The preference of the autoscaler to replace preemptable nodes with non-preemptable nodes, when preemptable nodes cannot be started for some reason. Defaults to 0.0. This value must be between 0.0 and 1.0, inclusive. A value of 0.0 disables such compensation, a value of 0.5 compensates two missing preemptable nodes with a non-preemptable one. A value of 1.0 replaces every missing pre-emptable node with a non-preemptable one."
    node_storage: "Specify the size of the root volume of worker nodes when they are launched in gigabytes. You may want to set this if your jobs require a lot of disk space. The default value is 50."
    metrics: "Enable the prometheus/grafana dashboard for monitoring CPU/RAM usage, queue size, and issued jobs."
    max_cores: "The maximum number of CPU cores to request from the batch system at any one time. Standard suffixes like K, Ki, M, Mi, G or Gi are supported. Default is 8.0 Ei"
    max_memory: "The maximum amount of memory to request from the batch system at any one time. Standard suffixes like K, Ki, M, Mi, G or Gi are supported. Default is 8.0 Ei"
    max_disk: "The maximum amount of disk space to request from the batch system at any one time. Standard suffixes like K, Ki, M, Mi, G or Gi are supported. Default is 8.0 Ei"
    retry_count: "Number of times to retry a failing job before giving up and labeling job failed. default=1"
    enable_unlimited_preempt_able_retries: "If set, preemptable failures (or any failure due to an instance getting unexpectedly terminated) would not count towards job failures and --retryCount."
    max_job_duration: "Maximum runtime of a job (in seconds) before we kill it (this is a lower bound, and the actual time before killing the job may be longer). default=9223372036854775807"
    rescue_jobs_frequency: "Period of time to wait (in seconds) between checking for missing/overlong jobs, that is jobs which get lost by the batch system. Expert parameter. default=3600"
    disable_caching: "[DISABLECACHING] Disables caching in the file store. This flag must be set to use a batch system that does not support caching such as Grid Engine, Parasol, LSF, or Slurm"
    disable_chaining: "Disables chaining of jobs (chaining uses one job's resource allocation for its successor job if possible)."
    disable_job_store_checksum_verification: "Disables checksum verification for files transferred to/from the job store. Checksum verification is a safety check to ensure the data is not corrupted during transfer. Currently only supported for non- streaming AWS files."
    max_log_file_size: "The maximum size of a job log file to keep (in bytes), log files larger than this will be truncated to the last X bytes. Setting this option to zero will prevent any truncation. Setting this option to a negative value will truncate from the beginning.Default=62.5 K"
    write_logs: "[WRITELOGS] Write worker logs received by the leader into their own files at the specified path. Any non-empty standard output and error from failed batch system jobs will also be written into files at this path. The current working directory will be used if a path is not specified explicitly. Note: By default only the logs of failed jobs are returned to leader. Set log level to 'debug' or enable '--writeLogsFromAllJobs' to get logs back from successful jobs, and adjust 'maxLogFileSize' to control the truncation limit for worker logs."
    write_logs_gzip: "[WRITELOGSGZIP] Identical to --writeLogs except the logs files are gzipped on the leader."
    write_logs_from_all_jobs: "Whether to write logs from all jobs (including the successful ones) without necessarily setting the log level to 'debug'. Ensure that either --writeLogs or --writeLogsGzip is set if enabling this option."
    real_time_logging: "Enable real-time logging from workers to masters"
    sse_key: "Path to file containing 32 character key to be used for server-side encryption on awsJobStore or googleJobStore. SSE will not be used if this flag is not passed."
    setenv: "=VALUE or NAME, -e NAME=VALUE or NAME Set an environment variable early on in the worker. If VALUE is omitted, it will be looked up in the current environment. Independently of this option, the worker will try to emulate the leader's environment before running a job, except for some variables known to vary across systems. Using this option, a variable can be injected into the worker process itself before it is started."
    service_polling_interval: "Interval of time service jobs wait between polling for the existence of the keep-alive flag (defailt=60)"
    force_docker_appliance: "Disables sanity checking the existence of the docker image specified by TOIL_APPLIANCE_SELF, which Toil uses to provision mesos for autoscaling."
    disable_progress: "Disables the progress bar shown when standard error is a terminal."
    debug_worker: "Experimental no forking mode for local debugging. Specifically, workers are not forked and stderr/stdout are not redirected to the log."
    disable_worker_output_capture: "Let worker output go to worker's standard out/error instead of per-job logs."
    bad_worker: "For testing purposes randomly kill 'badWorker' proportion of jobs using SIGKILL, default=0.0"
    bad_worker_fail_interval: "When killing the job pick uniformly within the interval from 0.0 to 'badWorkerFailInterval' seconds after the worker starts, default=0.01"
    provenance: "Save provenance to specified folder as a Research Object that captures and aggregates workflow execution and data products."
    enable_user_provenance: "Record user account info as part of provenance."
    disable_user_provenance: "Do not record user account info in provenance."
    enable_host_provenance: "Record host info as part of provenance."
    disable_host_provenance: "Do not record host info in provenance."
    or_cid: "Record user ORCID identifier as part of provenance, e.g. https://orcid.org/0000-0002-1825-0097 or 0000-0002-1825-0097. Alternatively the environment variable ORCID may be set."
    full_name: "Record full name of user as part of provenance, e.g. Josiah Carberry. You may need to use shell quotes to preserve spaces. Alternatively the environment variable CWL_FULL_NAME may be set."
    job_store: "The location of the job store for the workflow. A job store holds persistent information about the jobs and files in a workflow. If the workflow is run with a distributed batch system, the job store must be accessible by all worker nodes. Depending on the desired job store implementation, the location should be formatted according to one of the following schemes: file:<path> where <path> points to a directory on the file systen aws:<region>:<prefix> where <region> is the name of an AWS region like us- west-2 and <prefix> will be prepended to the names of any top-level AWS resources in use by job store, e.g. S3 buckets. google:<project_id>:<prefix> TODO: explain For backwards compatibility, you may also specify ./foo (equivalent to file:./foo or just file:foo) or /bar (equivalent to file:/bar)."
  }
}