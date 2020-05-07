class: CommandLineTool
id: toil_cwl_runner.cwl
inputs:
- id: job_store
  doc: 'The location of the job store for the workflow. A job store holds persistent
    information about the jobs and files in a workflow. If the workflow is run with
    a distributed batch system, the job store must be accessible by all worker nodes.
    Depending on the desired job store implementation, the location should be formatted
    according to one of the following schemes: file:<path> where <path> points to
    a directory on the file systen aws:<region>:<prefix> where <region> is the name
    of an AWS region like us- west-2 and <prefix> will be prepended to the names of
    any top-level AWS resources in use by job store, e.g. S3 buckets. google:<project_id>:<prefix>
    TODO: explain For backwards compatibility, you may also specify ./foo (equivalent
    to file:./foo or just file:foo) or /bar (equivalent to file:/bar).'
  type: string
  inputBinding:
    position: 0
- id: tmpdir_prefix
  doc: Path prefix for temporary directories
  type: string
  inputBinding:
    prefix: --tmpdir-prefix
- id: tmp_outdir_prefix
  doc: Path prefix for intermediate output directories
  type: string
  inputBinding:
    prefix: --tmp-outdir-prefix
- id: force_docker_pull
  doc: Pull latest docker image even if it is locally present
  type: boolean
  inputBinding:
    prefix: --force-docker-pull
- id: no_match_user
  doc: Disable passing the current uid to `docker run --user`
  type: boolean
  inputBinding:
    prefix: --no-match-user
- id: no_read_only
  doc: Do not set root directory in the container as read- only
  type: boolean
  inputBinding:
    prefix: --no-read-only
- id: strict_memory_limit
  doc: When running with software containers and the Docker engine, pass either the
    calculated memory allocation from ResourceRequirements or the default of 1 gigabyte
    to Docker's --memory option.
  type: boolean
  inputBinding:
    prefix: --strict-memory-limit
- id: relax_path_checks
  doc: Relax requirements on path names to permit spaces and hash characters.
  type: boolean
  inputBinding:
    prefix: --relax-path-checks
- id: default_container
  doc: Specify a default docker container that will be used if the workflow fails
    to specify one.
  type: string
  inputBinding:
    prefix: --default-container
- id: logoff
  doc: Same as --logCritical
  type: boolean
  inputBinding:
    prefix: --logOff
- id: log_critical
  doc: Turn on logging at level CRITICAL and above. (default is INFO)
  type: boolean
  inputBinding:
    prefix: --logCritical
- id: log_error
  doc: Turn on logging at level ERROR and above. (default is INFO)
  type: boolean
  inputBinding:
    prefix: --logError
- id: log_warning
  doc: Turn on logging at level WARNING and above. (default is INFO)
  type: boolean
  inputBinding:
    prefix: --logWarning
- id: loginfo
  doc: Turn on logging at level INFO and above. (default is INFO)
  type: boolean
  inputBinding:
    prefix: --logInfo
- id: log_debug
  doc: Turn on logging at level DEBUG and above. (default is INFO)
  type: boolean
  inputBinding:
    prefix: --logDebug
- id: loglevel
  doc: Log at given level (may be either OFF (or CRITICAL), ERROR, WARN (or WARNING),
    INFO or DEBUG). (default is INFO)
  type: string
  inputBinding:
    prefix: --logLevel
- id: log_file
  doc: File to log in
  type: string
  inputBinding:
    prefix: --logFile
- id: rotating_logging
  doc: Turn on rotating logging, which prevents log files getting too big.
  type: boolean
  inputBinding:
    prefix: --rotatingLogging
- id: workdir
  doc: Absolute path to directory where temporary files generated during the Toil
    run should be placed. Standard output and error from batch system jobs (unless
    --noStdOutErr) will be placed in this directory. A cache directory may be placed
    in this directory. Temp files and folders will be placed in a directory toil-<workflowID>
    within workDir. The workflowID is generated by Toil and will be reported in the
    workflow logs. Default is determined by the variables (TMPDIR, TEMP, TMP) via
    mkdtemp. This directory needs to exist on all machines running jobs; if capturing
    standard output and error from batch system jobs is desired, it will generally
    need to be on a shared file system. When sharing a cache between containers on
    a host, this directory must be shared between the containers.
  type: string
  inputBinding:
    prefix: --workDir
- id: no_stdout_err
  doc: Do not capture standard output and error from batch system jobs.
  type: boolean
  inputBinding:
    prefix: --noStdOutErr
- id: stats
  doc: Records statistics about the toil workflow to be used by 'toil stats'.
  type: boolean
  inputBinding:
    prefix: --stats
- id: clean
  doc: "Determines the deletion of the jobStore upon completion of the program. Choices:\
    \ 'always', 'onError','never', 'onSuccess'. The --stats option requires information\
    \ from the jobStore upon completion so the jobStore will never be deleted withthat\
    \ flag. If you wish to be able to restart the run, choose 'never' or 'onSuccess'.\
    \ Default is 'never' if stats is enabled, and 'onSuccess' otherwise"
  type: string
  inputBinding:
    prefix: --clean
- id: clean_workdir
  doc: "Determines deletion of temporary worker directory upon completion of a job.\
    \ Choices: 'always', 'never', 'onSuccess'. Default = always. WARNING: This option\
    \ should be changed for debugging only. Running a full pipeline with this option\
    \ could fill your disk with intermediate data."
  type: string
  inputBinding:
    prefix: --cleanWorkDir
- id: cluster_stats
  doc: '[CLUSTERSTATS] If enabled, writes out JSON resource usage statistics to a
    file. The default location for this file is the current working directory, but
    an absolute path can also be passed to specify where this file should be written.
    This options only applies when using scalable batch systems.'
  type: boolean
  inputBinding:
    prefix: --clusterStats
- id: restart
  doc: If --restart is specified then will attempt to restart existing workflow at
    the location pointed to by the --jobStore option. Will raise an exception if the
    workflow does not exist
  type: boolean
  inputBinding:
    prefix: --restart
- id: batch_system
  doc: The type of batch system to run the job(s) with, currently can be one of HTCondor,
    singleMachine, Kubernetes, parasol, LSF, Mesos, gridEngine, Torque, Slurm'. default=singleMachine
  type: string
  inputBinding:
    prefix: --batchSystem
- id: disable_hot_deployment
  doc: Hot-deployment was renamed to auto-deployment. Option now redirects to --disableAutoDeployment.
    Left in for backwards compatibility.
  type: boolean
  inputBinding:
    prefix: --disableHotDeployment
- id: disable_auto_deployment
  doc: Should auto-deployment of the user script be deactivated? If True, the user
    script/package should be present at the same location on all workers. default=false
  type: boolean
  inputBinding:
    prefix: --disableAutoDeployment
- id: max_local_jobs
  doc: For batch systems that support a local queue for housekeeping jobs (Mesos,
    GridEngine, htcondor, lsf, slurm, torque), the maximum number of these housekeeping
    jobs to run on the local system. The default (equal to the number of cores) is
    a maximum of 8 concurrent local housekeeping jobs.
  type: long
  inputBinding:
    prefix: --maxLocalJobs
- id: manual_mem_args
  doc: "Do not add the default arguments: 'hv=MEMORY' & 'h_vmem=MEMORY' to the qsub\
    \ call, and instead rely on TOIL_GRIDGENGINE_ARGS to supply alternative arguments.\
    \ Requires that TOIL_GRIDGENGINE_ARGS be set."
  type: boolean
  inputBinding:
    prefix: --manualMemArgs
- id: run_cwl_internal_jobs_on_workers
  doc: Whether to run CWL internal jobs (e.g. CWLScatter) on the worker nodes instead
    of the primary node. If false (default), then all such jobs are run on the primary
    node. Setting this to true can speed up the pipeline for very large workflows
    with many sub-workflows and/or scatters, provided that the worker pool is large
    enough.
  type: boolean
  inputBinding:
    prefix: --runCwlInternalJobsOnWorkers
- id: parasol_command
  doc: The name or path of the parasol program. Will be looked up on PATH unless it
    starts with a slash. default=parasol
  type: string
  inputBinding:
    prefix: --parasolCommand
- id: parasol_max_batches
  doc: Maximum number of job batches the Parasol batch is allowed to create. One batch
    is created for jobs with a a unique set of resource requirements. default=1000
  type: string
  inputBinding:
    prefix: --parasolMaxBatches
- id: scale
  doc: A scaling factor to change the value of all submitted tasks's submitted cores.
    Used in singleMachine batch system. default=1
  type: string
  inputBinding:
    prefix: --scale
- id: no_link_imports
  doc: When using a filesystem based job store, CWL input files are by default symlinked
    in. Specifying this option instead copies the files into the job store, which
    may protect them from being modified externally. When not specified and as long
    as caching is enabled, Toil will protect the file automatically by changing the
    permissions to read-only.
  type: boolean
  inputBinding:
    prefix: --noLinkImports
- id: no_move_exports
  doc: When using a filesystem based job store, output files are by default moved
    to the output directory, and a symlink to the moved exported file is created at
    the initial location. Specifying this option instead copies the files into the
    output directory. Applies to filesystem-based job stores only.
  type: boolean
  inputBinding:
    prefix: --noMoveExports
- id: mesos_master
  doc: 'The host and port of the Mesos master separated by colon. (default: 115.146.93.132:5050)'
  type: string
  inputBinding:
    prefix: --mesosMaster
- id: provisioner
  doc: The provisioner for cluster auto-scaling. The currently supported choices are'gce',
    or 'aws'. The default is None.
  type: string
  inputBinding:
    prefix: --provisioner
- id: node_types
  doc: List of node types separated by commas. The syntax for each node type depends
    on the provisioner used. For the cgcloud and AWS provisioners this is the name
    of an EC2 instance type, optionally followed by a colon and the price in dollars
    to bid for a spot instance of that type, for example 'c3.8xlarge:0.42'.If no spot
    bid is specified, nodes of this type will be non- preemptable.It is acceptable
    to specify an instance as both preemptable and non-preemptable, including it twice
    in the list. In that case,preemptable nodes of that type will be preferred when
    creating new nodes once the maximum number of preemptable-nodes has beenreached.
  type: string
  inputBinding:
    prefix: --nodeTypes
- id: node_options
  doc: Options for provisioning the nodes. The syntax depends on the provisioner used.
    Neither the CGCloud nor the AWS provisioner support any node options.
  type: string
  inputBinding:
    prefix: --nodeOptions
- id: min_nodes
  doc: Mininum number of nodes of each type in the cluster, if using auto-scaling.
    This should be provided as a comma-separated list of the same length as the list
    of node types. default=0
  type: long
  inputBinding:
    prefix: --minNodes
- id: max_nodes
  doc: Maximum number of nodes of each type in the cluster, if using autoscaling,
    provided as a comma-separated list. The first value is used as a default if the
    list length is less than the number of nodeTypes. default=10
  type: long
  inputBinding:
    prefix: --maxNodes
- id: target_time
  doc: Sets how rapidly you aim to complete jobs in seconds. Shorter times mean more
    aggressive parallelization. The autoscaler attempts to scale up/down so that it
    expects all queued jobs will complete within targetTime seconds. default=1800
  type: string
  inputBinding:
    prefix: --targetTime
- id: beta_inertia
  doc: A smoothing parameter to prevent unnecessary oscillations in the number of
    provisioned nodes. This controls an exponentially weighted moving average of the
    estimated number of nodes. A value of 0.0 disables any smoothing, and a value
    of 0.9 will smooth so much that few changes will ever be made. Must be between
    0.0 and 0.9. default=0.1
  type: string
  inputBinding:
    prefix: --betaInertia
- id: scale_interval
  doc: The interval (seconds) between assessing if the scale of the cluster needs
    to change. default=60
  type: string
  inputBinding:
    prefix: --scaleInterval
- id: preempt_able_compensation
  doc: The preference of the autoscaler to replace preemptable nodes with non-preemptable
    nodes, when preemptable nodes cannot be started for some reason. Defaults to 0.0.
    This value must be between 0.0 and 1.0, inclusive. A value of 0.0 disables such
    compensation, a value of 0.5 compensates two missing preemptable nodes with a
    non-preemptable one. A value of 1.0 replaces every missing pre-emptable node with
    a non-preemptable one.
  type: string
  inputBinding:
    prefix: --preemptableCompensation
- id: node_storage
  doc: Specify the size of the root volume of worker nodes when they are launched
    in gigabytes. You may want to set this if your jobs require a lot of disk space.
    The default value is 50.
  type: string
  inputBinding:
    prefix: --nodeStorage
- id: metrics
  doc: Enable the prometheus/grafana dashboard for monitoring CPU/RAM usage, queue
    size, and issued jobs.
  type: boolean
  inputBinding:
    prefix: --metrics
- id: max_cores
  doc: The maximum number of CPU cores to request from the batch system at any one
    time. Standard suffixes like K, Ki, M, Mi, G or Gi are supported. Default is 8.0
    Ei
  type: long
  inputBinding:
    prefix: --maxCores
- id: max_memory
  doc: The maximum amount of memory to request from the batch system at any one time.
    Standard suffixes like K, Ki, M, Mi, G or Gi are supported. Default is 8.0 Ei
  type: long
  inputBinding:
    prefix: --maxMemory
- id: max_disk
  doc: The maximum amount of disk space to request from the batch system at any one
    time. Standard suffixes like K, Ki, M, Mi, G or Gi are supported. Default is 8.0
    Ei
  type: long
  inputBinding:
    prefix: --maxDisk
- id: retry_count
  doc: Number of times to retry a failing job before giving up and labeling job failed.
    default=1
  type: string
  inputBinding:
    prefix: --retryCount
- id: enable_unlimited_preempt_able_retries
  doc: If set, preemptable failures (or any failure due to an instance getting unexpectedly
    terminated) would not count towards job failures and --retryCount.
  type: boolean
  inputBinding:
    prefix: --enableUnlimitedPreemptableRetries
- id: max_job_duration
  doc: Maximum runtime of a job (in seconds) before we kill it (this is a lower bound,
    and the actual time before killing the job may be longer). default=9223372036854775807
  type: long
  inputBinding:
    prefix: --maxJobDuration
- id: rescue_jobs_frequency
  doc: Period of time to wait (in seconds) between checking for missing/overlong jobs,
    that is jobs which get lost by the batch system. Expert parameter. default=3600
  type: string
  inputBinding:
    prefix: --rescueJobsFrequency
- id: disable_caching
  doc: '[DISABLECACHING] Disables caching in the file store. This flag must be set
    to use a batch system that does not support caching such as Grid Engine, Parasol,
    LSF, or Slurm'
  type: boolean
  inputBinding:
    prefix: --disableCaching
- id: disable_chaining
  doc: Disables chaining of jobs (chaining uses one job's resource allocation for
    its successor job if possible).
  type: boolean
  inputBinding:
    prefix: --disableChaining
- id: disable_job_store_checksum_verification
  doc: Disables checksum verification for files transferred to/from the job store.
    Checksum verification is a safety check to ensure the data is not corrupted during
    transfer. Currently only supported for non- streaming AWS files.
  type: boolean
  inputBinding:
    prefix: --disableJobStoreChecksumVerification
- id: max_log_file_size
  doc: The maximum size of a job log file to keep (in bytes), log files larger than
    this will be truncated to the last X bytes. Setting this option to zero will prevent
    any truncation. Setting this option to a negative value will truncate from the
    beginning.Default=62.5 K
  type: long
  inputBinding:
    prefix: --maxLogFileSize
- id: write_logs
  doc: "[WRITELOGS] Write worker logs received by the leader into their own files\
    \ at the specified path. Any non-empty standard output and error from failed batch\
    \ system jobs will also be written into files at this path. The current working\
    \ directory will be used if a path is not specified explicitly. Note: By default\
    \ only the logs of failed jobs are returned to leader. Set log level to 'debug'\
    \ or enable '--writeLogsFromAllJobs' to get logs back from successful jobs, and\
    \ adjust 'maxLogFileSize' to control the truncation limit for worker logs."
  type: boolean
  inputBinding:
    prefix: --writeLogs
- id: write_logs_gzip
  doc: '[WRITELOGSGZIP] Identical to --writeLogs except the logs files are gzipped
    on the leader.'
  type: boolean
  inputBinding:
    prefix: --writeLogsGzip
- id: write_logs_from_all_jobs
  doc: Whether to write logs from all jobs (including the successful ones) without
    necessarily setting the log level to 'debug'. Ensure that either --writeLogs or
    --writeLogsGzip is set if enabling this option.
  type: boolean
  inputBinding:
    prefix: --writeLogsFromAllJobs
- id: real_time_logging
  doc: Enable real-time logging from workers to masters
  type: boolean
  inputBinding:
    prefix: --realTimeLogging
- id: sse_key
  doc: Path to file containing 32 character key to be used for server-side encryption
    on awsJobStore or googleJobStore. SSE will not be used if this flag is not passed.
  type: string
  inputBinding:
    prefix: --sseKey
- id: setenv
  doc: =VALUE or NAME, -e NAME=VALUE or NAME Set an environment variable early on
    in the worker. If VALUE is omitted, it will be looked up in the current environment.
    Independently of this option, the worker will try to emulate the leader's environment
    before running a job, except for some variables known to vary across systems.
    Using this option, a variable can be injected into the worker process itself before
    it is started.
  type: string
  inputBinding:
    prefix: --setEnv
- id: service_polling_interval
  doc: Interval of time service jobs wait between polling for the existence of the
    keep-alive flag (defailt=60)
  type: string
  inputBinding:
    prefix: --servicePollingInterval
- id: force_docker_appliance
  doc: Disables sanity checking the existence of the docker image specified by TOIL_APPLIANCE_SELF,
    which Toil uses to provision mesos for autoscaling.
  type: boolean
  inputBinding:
    prefix: --forceDockerAppliance
- id: debug_worker
  doc: Experimental no forking mode for local debugging. Specifically, workers are
    not forked and stderr/stdout are not redirected to the log.
  type: boolean
  inputBinding:
    prefix: --debugWorker
- id: disable_worker_output_capture
  doc: Let worker output go to worker's standard out/error instead of per-job logs.
  type: boolean
  inputBinding:
    prefix: --disableWorkerOutputCapture
- id: bad_worker
  doc: For testing purposes randomly kill 'badWorker' proportion of jobs using SIGKILL,
    default=0.0
  type: string
  inputBinding:
    prefix: --badWorker
- id: bad_worker_fail_interval
  doc: When killing the job pick uniformly within the interval from 0.0 to 'badWorkerFailInterval'
    seconds after the worker starts, default=0.01
  type: string
  inputBinding:
    prefix: --badWorkerFailInterval
- id: provenance
  doc: Save provenance to specified folder as a Research Object that captures and
    aggregates workflow execution and data products.
  type: string
  inputBinding:
    prefix: --provenance
- id: enable_user_provenance
  doc: Record user account info as part of provenance.
  type: boolean
  inputBinding:
    prefix: --enable-user-provenance
- id: disable_user_provenance
  doc: Do not record user account info in provenance.
  type: boolean
  inputBinding:
    prefix: --disable-user-provenance
- id: enable_host_provenance
  doc: Record host info as part of provenance.
  type: boolean
  inputBinding:
    prefix: --enable-host-provenance
- id: disable_host_provenance
  doc: Do not record host info in provenance.
  type: boolean
  inputBinding:
    prefix: --disable-host-provenance
- id: or_cid
  doc: Record user ORCID identifier as part of provenance, e.g. https://orcid.org/0000-0002-1825-0097
    or 0000-0002-1825-0097. Alternatively the environment variable ORCID may be set.
  type: string
  inputBinding:
    prefix: --orcid
- id: full_name
  doc: Record full name of user as part of provenance, e.g. Josiah Carberry. You may
    need to use shell quotes to preserve spaces. Alternatively the environment variable
    CWL_FULL_NAME may be set.
  type: string
  inputBinding:
    prefix: --full-name
outputs: []
cwlVersion: v1.1
baseCommand:
- toil-cwl-runner
