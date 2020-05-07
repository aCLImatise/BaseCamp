class: CommandLineTool
id: snakemake.cwl
inputs:
- id: target
  doc: 'Targets to build. May be rules or files. (default: None)'
  type: string
  inputBinding:
    position: 0
- id: dry_run
  doc: 'Do not execute anything, and display what would be done. If you have a very
    large workflow, use --dry-run --quiet to just print a summary of the DAG of jobs.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: profile
  doc: "Name of profile to use for configuring Snakemake. Snakemake will search for\
    \ a corresponding folder in /etc/xdg/snakemake and /home/ubuntu/.config/snakemake.\
    \ Alternatively, this can be an absolute or relative path. The profile folder\
    \ has to contain a file 'config.yaml'. This file can be used to set default values\
    \ for command line options in YAML format. For example, '--cluster qsub' becomes\
    \ 'cluster: qsub' in the YAML file. Profiles can be obtained from https://github.com/snakemake-profiles.\
    \ (default: None)"
  type: string
  inputBinding:
    prefix: --profile
- id: cache
  doc: '[RULE [RULE ...]] Store output files of given rules in a central cache given
    by the environment variable $SNAKEMAKE_OUTPUT_CACHE. Likewise, retrieve output
    files of the given rules from this cache if they have been created before (by
    anybody writing to the same cache), instead of actually executing the rules. Output
    files are identified by hashing all steps, parameters and software stack (conda
    envs or containers) needed to create them. (default: None)'
  type: boolean
  inputBinding:
    prefix: --cache
- id: snake_file
  doc: "The workflow definition in form of a snakefile.Usually, you should not need\
    \ to specify this. By default, Snakemake will search for 'Snakefile', 'snakefile',\
    \ 'workflow/Snakefile', 'workflow/snakefile' beneath the current working directory,\
    \ in this order. Only if you definitely want a different layout, you need to use\
    \ this parameter. (default: None)"
  type: File
  inputBinding:
    prefix: --snakefile
- id: cores
  doc: "[N], --jobs [N], -j [N] Use at most N CPU cores/jobs in parallel. If N is\
    \ omitted or 'all', the limit is set to the number of available CPU cores. (default:\
    \ None)"
  type: boolean
  inputBinding:
    prefix: --cores
- id: local_cores
  doc: 'In cluster mode, use at most N cores of the host machine in parallel (default:
    number of CPU cores of the host). The cores are used to execute local rules. This
    option is ignored when not in cluster mode. (default: 8)'
  type: string
  inputBinding:
    prefix: --local-cores
- id: resources
  doc: "[NAME=INT [NAME=INT ...]], --res [NAME=INT [NAME=INT ...]] Define additional\
    \ resources that shall constrain the scheduling analogously to threads (see above).\
    \ A resource is defined as a name and an integer value. E.g. --resources mem_mb=1000.\
    \ Rules can use resources by defining the resource keyword, e.g. resources: mem_mb=600.\
    \ If now two rules require 600 of the resource 'mem_mb' they won't be run in parallel\
    \ by the scheduler. (default: None)"
  type: boolean
  inputBinding:
    prefix: --resources
- id: set_threads
  doc: '[RULE=THREADS [RULE=THREADS ...]] Overwrite thread usage of rules. This allows
    to fine- tune workflow parallelization. In particular, this is helpful to target
    certain cluster nodes by e.g. shifting a rule to use more, or less threads than
    defined in the workflow. Thereby, THREADS has to be a positive integer, and RULE
    has to be the name of the rule. (default: None)'
  type: boolean
  inputBinding:
    prefix: --set-threads
- id: default_resources
  doc: "[NAME=INT [NAME=INT ...]], --default-res [NAME=INT [NAME=INT ...]] Define\
    \ default values of resources for rules that do not define their own values. In\
    \ addition to plain integers, python expressions over inputsize are allowed (e.g.\
    \ '2*input.size_mb').When specifying this without any arguments (--default-resources),\
    \ it defines 'mem_mb=max(2*input.size_mb, 1000)' 'disk_mb=max(2*input.size_mb,\
    \ 1000)', i.e., default disk and mem usage is twice the input file size but at\
    \ least 1GB. (default: None)"
  type: boolean
  inputBinding:
    prefix: --default-resources
- id: config
  doc: '[KEY=VALUE [KEY=VALUE ...]], -C [KEY=VALUE [KEY=VALUE ...]] Set or overwrite
    values in the workflow config object. The workflow config object is accessible
    as variable config inside the workflow. Default values can be set by providing
    a JSON file (see Documentation). (default: None)'
  type: boolean
  inputBinding:
    prefix: --config
- id: config_files
  doc: 'Specify or overwrite the config file of the workflow (see the docs). Values
    specified in JSON or YAML format are available in the global config dictionary
    inside the workflow. Multiple files overwrite each other in the given order. (default:
    None)'
  type: File[]
  inputBinding:
    prefix: --configfiles
- id: directory
  doc: 'Specify working directory (relative paths in the snakefile will use this as
    their origin). (default: None)'
  type: string
  inputBinding:
    prefix: --directory
- id: touch
  doc: 'Touch output files (mark them up to date without really changing them) instead
    of running their commands. This is used to pretend that the rules were executed,
    in order to fool future invocations of snakemake. Fails if a file does not yet
    exist. Note that this will only touch files that would otherwise be recreated
    by Snakemake (e.g. because their input files are newer). For enforcing a touch,
    combine this with --force, --forceall, or --forcerun. Note however that you loose
    the provenance information when the files have been created in realitiy. Hence,
    this should be used only as a last resort. (default: False)'
  type: boolean
  inputBinding:
    prefix: --touch
- id: keep_going
  doc: 'Go on with independent jobs if a job fails. (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-going
- id: force
  doc: 'Force the execution of the selected target or the first rule regardless of
    already created output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: force_all
  doc: 'Force the execution of the selected (or the first) rule and all rules it is
    dependent on regardless of already created output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --forceall
- id: force_run
  doc: '[TARGET [TARGET ...]], -R [TARGET [TARGET ...]] Force the re-execution or
    creation of the given rules or files. Use this option if you changed a rule and
    want to have all its output in your workflow updated. (default: None)'
  type: boolean
  inputBinding:
    prefix: --forcerun
- id: prioritize
  doc: 'Tell the scheduler to assign creation of given targets (and all their dependencies)
    highest priority. (EXPERIMENTAL) (default: None)'
  type: string[]
  inputBinding:
    prefix: --prioritize
- id: batch
  doc: '=BATCH/BATCHES Only create the given BATCH of the input files of the given
    RULE. This can be used to iteratively run parts of very large workflows. Only
    the execution plan of the relevant part of the workflow has to be calculated,
    thereby speeding up DAG computation. It is recommended to provide the most suitable
    rule for batching when documenting a workflow. It should be some aggregating rule
    that would be executed only once, and has a large number of input files. For example,
    it can be a rule that aggregates over samples. (default: None)'
  type: string
  inputBinding:
    prefix: --batch
- id: until
  doc: 'Runs the pipeline until it reaches the specified rules or files. Only runs
    jobs that are dependencies of the specified rule or files, does not run sibling
    DAGs. (default: None)'
  type: string[]
  inputBinding:
    prefix: --until
- id: omit_from
  doc: 'Prevent the execution or creation of the given rules or files as well as any
    rules or files that are downstream of these targets in the DAG. Also runs jobs
    in sibling DAGs that are independent of the rules or files specified here. (default:
    None)'
  type: string[]
  inputBinding:
    prefix: --omit-from
- id: rerun_incomplete
  doc: 'Re-run all jobs the output of which is recognized as incomplete. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --rerun-incomplete
- id: shadow_prefix
  doc: "Specify a directory in which the 'shadow' directory is created. If not supplied,\
    \ the value is set to the '.snakemake' directory relative to the working directory.\
    \ (default: None)"
  type: string
  inputBinding:
    prefix: --shadow-prefix
- id: report
  doc: '[FILE]       Create an HTML report with results and statistics. This can be
    either a .html file or a .zip file. In the former case, all results are embedded
    into the .html (this only works for small data). In the latter case, results are
    stored along with a file report.html in the zip archive. If no filename is given,
    an embedded report.html is the default. (default: None)'
  type: boolean
  inputBinding:
    prefix: --report
- id: report_stylesheet
  doc: 'Custom stylesheet to use for report. In particular, this can be used for branding
    the report with e.g. a custom logo, see docs. (default: None)'
  type: string
  inputBinding:
    prefix: --report-stylesheet
- id: lint
  doc: '[{text,json}]  Perform linting on the given workflow. This will print snakemake
    specific suggestions to improve code quality (work in progress, more lints to
    be added in the future). If no argument is provided, plain text output is used.
    (default: None)'
  type: boolean
  inputBinding:
    prefix: --lint
- id: export_cwl
  doc: 'Compile workflow to CWL and store it in given FILE. (default: None)'
  type: File
  inputBinding:
    prefix: --export-cwl
- id: list
  doc: 'Show available rules in given Snakefile. (default: False)'
  type: boolean
  inputBinding:
    prefix: --list
- id: list_target_rules
  doc: 'Show available target rules in given Snakefile. (default: False)'
  type: boolean
  inputBinding:
    prefix: --list-target-rules
- id: dag
  doc: 'Do not execute anything and print the directed acyclic graph of jobs in the
    dot language. Recommended use on Unix systems: snakemake --dag | dot | displayNote
    print statements in your Snakefile may interfere with visualization. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --dag
- id: rule_graph
  doc: 'Do not execute anything and print the dependency graph of rules in the dot
    language. This will be less crowded than above DAG of jobs, but also show less
    information. Note that each rule is displayed once, hence the displayed graph
    will be cyclic if a rule appears in several steps of the workflow. Use this if
    above option leads to a DAG that is too large. Recommended use on Unix systems:
    snakemake --rulegraph | dot | displayNote print statements in your Snakefile may
    interfere with visualization. (default: False)'
  type: boolean
  inputBinding:
    prefix: --rulegraph
- id: file_graph
  doc: 'Do not execute anything and print the dependency graph of rules with their
    input and output files in the dot language. This is an intermediate solution between
    above DAG of jobs and the rule graph. Note that each rule is displayed once, hence
    the displayed graph will be cyclic if a rule appears in several steps of the workflow.
    Use this if above option leads to a DAG that is too large. Recommended use on
    Unix systems: snakemake --filegraph | dot | displayNote print statements in your
    Snakefile may interfere with visualization. (default: False)'
  type: boolean
  inputBinding:
    prefix: --filegraph
- id: d3dag
  doc: 'Print the DAG in D3.js compatible JSON format. (default: False)'
  type: boolean
  inputBinding:
    prefix: --d3dag
- id: summary
  doc: 'Print a summary of all files created by the workflow. The has the following
    columns: filename, modification time, rule version, status, plan. Thereby rule
    version contains the versionthe file was created with (see the version keyword
    of rules), and status denotes whether the file is missing, its input files are
    newer or if version or implementation of the rule changed since file creation.
    Finally the last column denotes whether the file will be updated or created during
    the next workflow execution. (default: False)'
  type: boolean
  inputBinding:
    prefix: --summary
- id: detailed_summary
  doc: 'Print a summary of all files created by the workflow. The has the following
    columns: filename, modification time, rule version, input file(s), shell command,
    status, plan. Thereby rule version contains the version the file was created with
    (see the version keyword of rules), and status denotes whether the file is missing,
    its input files are newer or if version or implementation of the rule changed
    since file creation. The input file and shell command columns are self explanatory.
    Finally the last column denotes whether the file will be updated or created during
    the next workflow execution. (default: False)'
  type: boolean
  inputBinding:
    prefix: --detailed-summary
- id: archive
  doc: 'Archive the workflow into the given tar archive FILE. The archive will be
    created such that the workflow can be re-executed on a vanilla system. The function
    needs conda and git to be installed. It will archive every file that is under
    git version control. Note that it is best practice to have the Snakefile, config
    files, and scripts under version control. Hence, they will be included in the
    archive. Further, it will add input files that are not generated by by the workflow
    itself and conda environments. Note that symlinks are dereferenced. Supported
    formats are .tar, .tar.gz, .tar.bz2 and .tar.xz. (default: None)'
  type: File
  inputBinding:
    prefix: --archive
- id: cleanup_metadata
  doc: 'Cleanup the metadata of given files. That means that snakemake removes any
    tracked version info, and any marks that files are incomplete. (default: None)'
  type: File[]
  inputBinding:
    prefix: --cleanup-metadata
- id: cleanup_shadow
  doc: 'Cleanup old shadow directories which have not been deleted due to failures
    or power loss. (default: False)'
  type: boolean
  inputBinding:
    prefix: --cleanup-shadow
- id: skip_script_cleanup
  doc: "Don't delete wrapper scripts used for execution (default: False)"
  type: boolean
  inputBinding:
    prefix: --skip-script-cleanup
- id: unlock
  doc: 'Remove a lock on the working directory. (default: False)'
  type: boolean
  inputBinding:
    prefix: --unlock
- id: list_version_changes
  doc: 'List all output files that have been created with a different version (as
    determined by the version keyword). (default: False)'
  type: boolean
  inputBinding:
    prefix: --list-version-changes
- id: list_code_changes
  doc: 'List all output files for which the rule body (run or shell) have changed
    in the Snakefile. (default: False)'
  type: boolean
  inputBinding:
    prefix: --list-code-changes
- id: list_input_changes
  doc: 'List all output files for which the defined input files have changed in the
    Snakefile (e.g. new input files were added in the rule definition or files were
    renamed). For listing input file modification in the filesystem, use --summary.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --list-input-changes
- id: list_params_changes
  doc: 'List all output files for which the defined params have changed in the Snakefile.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --list-params-changes
- id: list_untracked
  doc: 'List all files in the working directory that are not used in the workflow.
    This can be used e.g. for identifying leftover files. Hidden files and directories
    are ignored. (default: False)'
  type: boolean
  inputBinding:
    prefix: --list-untracked
- id: delete_all_output
  doc: 'Remove all files generated by the workflow. Use together with --dry-run to
    list files without actually deleting anything. Note that this will not recurse
    into subworkflows. Write-protected files are not removed. Nevertheless, use with
    care! (default: False)'
  type: boolean
  inputBinding:
    prefix: --delete-all-output
- id: delete_temp_output
  doc: 'Remove all temporary files generated by the workflow. Use together with --dry-run
    to list files without actually deleting anything. Note that this will not recurse
    into subworkflows. (default: False)'
  type: boolean
  inputBinding:
    prefix: --delete-temp-output
- id: bash_completion
  doc: 'Output code to register bash completion for snakemake. Put the following in
    your .bashrc (including the accents): `snakemake --bash-completion` or issue it
    in an open terminal session. (default: False)'
  type: boolean
  inputBinding:
    prefix: --bash-completion
- id: keep_incomplete
  doc: 'Do not remove incomplete output files by failed jobs. (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-incomplete
- id: reason
  doc: 'Print the reason for each executed rule. (default: False)'
  type: boolean
  inputBinding:
    prefix: --reason
- id: gui
  doc: '[PORT]          Serve an HTML based user interface to the given network and
    port e.g. 168.129.10.15:8000. By default Snakemake is only available in the local
    network (default port: 8000). To make Snakemake listen to all ip addresses add
    the special host address 0.0.0.0 to the url (0.0.0.0:8000). This is important
    if Snakemake is used in a virtualised environment like Docker. If possible, a
    browser window is opened. (default: None)'
  type: boolean
  inputBinding:
    prefix: --gui
- id: print_shell_cmds
  doc: 'Print out the shell commands that will be executed. (default: False)'
  type: boolean
  inputBinding:
    prefix: --printshellcmds
- id: debug_dag
  doc: 'Print candidate and selected jobs (including their wildcards) while inferring
    DAG. This can help to debug unexpected DAG topology or errors. (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug-dag
- id: stats
  doc: 'Write stats about Snakefile execution in JSON format to the given file. (default:
    None)'
  type: File
  inputBinding:
    prefix: --stats
- id: no_color
  doc: 'Do not use a colored output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --nocolor
- id: quiet
  doc: 'Do not output any progress or rule information. (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: print_compilation
  doc: 'Print the python representation of the workflow. (default: False)'
  type: boolean
  inputBinding:
    prefix: --print-compilation
- id: verbose
  doc: 'Print debugging output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: force_use_threads
  doc: 'Force threads rather than processes. Helpful if shared memory (/dev/shm) is
    full or unavailable. (default: False)'
  type: boolean
  inputBinding:
    prefix: --force-use-threads
- id: allow_ambiguity
  doc: "Don't check for ambiguous rules and simply use the first if several can produce\
    \ the same file. This allows the user to prioritize rules by their order in the\
    \ snakefile. (default: False)"
  type: boolean
  inputBinding:
    prefix: --allow-ambiguity
- id: no_lock
  doc: 'Do not lock the working directory (default: False)'
  type: boolean
  inputBinding:
    prefix: --nolock
- id: ignore_incomplete
  doc: 'Do not check for incomplete output files. (default: False)'
  type: boolean
  inputBinding:
    prefix: --ignore-incomplete
- id: latency_wait
  doc: 'Wait given seconds if an output file of a job is not present after the job
    finished. This helps if your filesystem suffers from latency (default 5). (default:
    5)'
  type: string
  inputBinding:
    prefix: --latency-wait
- id: wait_for_files
  doc: '[FILE [FILE ...]] Wait --latency-wait seconds for these files to be present
    before executing the workflow. This option is used internally to handle filesystem
    latency in cluster environments. (default: None)'
  type: boolean
  inputBinding:
    prefix: --wait-for-files
- id: no_temp
  doc: 'Ignore temp() declarations. This is useful when running only a part of the
    workflow, since temp() would lead to deletion of probably needed files by other
    parts of the workflow. (default: False)'
  type: boolean
  inputBinding:
    prefix: --notemp
- id: keep_remote
  doc: 'Keep local copies of remote input files. (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-remote
- id: keep_target_files
  doc: 'Do not adjust the paths of given target files relative to the working directory.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-target-files
- id: allowed_rules
  doc: 'Only consider given rules. If omitted, all rules in Snakefile are used. Note
    that this is intended primarily for internal use and may lead to unexpected results
    otherwise. (default: None)'
  type: string[]
  inputBinding:
    prefix: --allowed-rules
- id: max_jobs_per_second
  doc: 'Maximal number of cluster/drmaa jobs per second, default is 10, fractions
    allowed. (default: 10)'
  type: long
  inputBinding:
    prefix: --max-jobs-per-second
- id: max_status_checks_per_second
  doc: 'Maximal number of job status checks per second, default is 10, fractions allowed.
    (default: 10)'
  type: long
  inputBinding:
    prefix: --max-status-checks-per-second
- id: restart_times
  doc: 'Number of times to restart failing jobs (defaults to 0). (default: 0)'
  type: string
  inputBinding:
    prefix: --restart-times
- id: attempt
  doc: 'Internal use only: define the initial value of the attempt parameter (default:
    1). (default: 1)'
  type: string
  inputBinding:
    prefix: --attempt
- id: wrapper_prefix
  doc: "Prefix for URL created from wrapper directive (default: https://github.com/snakemake/snakemake-\
    \ wrappers/raw/). Set this to a different URL to use your fork or a local clone\
    \ of the repository, e.g., use a git URL like 'git+file://path/to/your/local/clone@'.\
    \ (default: https://github.com/snakemake/snakemake-wrappers/raw/)"
  type: string
  inputBinding:
    prefix: --wrapper-prefix
- id: default_remote_provider
  doc: "Specify default remote provider to be used for all input and output files\
    \ that don't yet specify one. (default: None)"
  type: string
  inputBinding:
    prefix: --default-remote-provider
- id: default_remote_prefix
  doc: 'Specify prefix for default remote provider. E.g. a bucket name. (default:
    )'
  type: string
  inputBinding:
    prefix: --default-remote-prefix
- id: no_shared_fs
  doc: "Do not assume that jobs share a common file system. When this flag is activated,\
    \ Snakemake will assume that the filesystem on a cluster node is not shared with\
    \ other nodes. For example, this will lead to downloading remote files on each\
    \ cluster node separately. Further, it won't take special measures to deal with\
    \ filesystem latency issues. This option will in most cases only make sense in\
    \ combination with --default-remote-provider. Further, when using --cluster you\
    \ will have to also provide --cluster- status. Only activate this if you know\
    \ what you are doing. (default: False)"
  type: boolean
  inputBinding:
    prefix: --no-shared-fs
- id: greediness
  doc: 'Set the greediness of scheduling. This value between 0 and 1 determines how
    careful jobs are selected for execution. The default value (1.0) provides the
    best speed and still acceptable scheduling quality. (default: None)'
  type: string
  inputBinding:
    prefix: --greediness
- id: no_hooks
  doc: 'Do not invoke onstart, onsuccess or onerror hooks after execution. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --no-hooks
- id: overwrite_shell_cmd
  doc: 'Provide a shell command that shall be executed instead of those given in the
    workflow. This is for debugging purposes only. (default: None)'
  type: string
  inputBinding:
    prefix: --overwrite-shellcmd
- id: debug
  doc: 'Allow to debug rules with e.g. PDB. This flag allows to set breakpoints in
    run blocks. (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: runtime_profile
  doc: 'Profile Snakemake and write the output to FILE. This requires yappi to be
    installed. (default: None)'
  type: File
  inputBinding:
    prefix: --runtime-profile
- id: mode
  doc: '{0,1,2}        Set execution mode of Snakemake (internal use only). (default:
    0)'
  type: boolean
  inputBinding:
    prefix: --mode
- id: show_failed_logs
  doc: 'Automatically display logs of failed jobs. (default: False)'
  type: boolean
  inputBinding:
    prefix: --show-failed-logs
- id: log_handler_script
  doc: "Provide a custom script containing a function 'def log_handler(msg):'. Snakemake\
    \ will call this function for every logging output (given as a dictionary msg)allowing\
    \ to e.g. send notifications in the form of e.g. slack messages or emails. (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --log-handler-script
- id: log_service
  doc: 'Set a specific messaging service for logging output.Snakemake will notify
    the service on errors and completed execution.Currently only slack is supported.
    (default: None)'
  type: string
  inputBinding:
    prefix: --log-service
- id: cluster
  doc: "Execute snakemake rules with the given submit command, e.g. qsub. Snakemake\
    \ compiles jobs into scripts that are submitted to the cluster with the given\
    \ command, once all input files for a particular job are present. The submit command\
    \ can be decorated to make it aware of certain job properties (name, rulename,\
    \ input, output, params, wildcards, log, threads and dependencies (see the argument\
    \ below)), e.g.: $ snakemake --cluster 'qsub -pe threaded {threads}'. (default:\
    \ None)"
  type: string
  inputBinding:
    prefix: --cluster
- id: cluster_sync
  doc: "cluster submission command will block, returning the remote exitstatus upon\
    \ remote termination (for example, this should be usedif the cluster command is\
    \ 'qsub -sync y' (SGE) (default: None)"
  type: string
  inputBinding:
    prefix: --cluster-sync
- id: drmaa
  doc: "[ARGS]        Execute snakemake on a cluster accessed via DRMAA, Snakemake\
    \ compiles jobs into scripts that are submitted to the cluster with the given\
    \ command, once all input files for a particular job are present. ARGS can be\
    \ used to specify options of the underlying cluster system, thereby using the\
    \ job properties name, rulename, input, output, params, wildcards, log, threads\
    \ and dependencies, e.g.: --drmaa ' -pe threaded {threads}'. Note that ARGS must\
    \ be given in quotes and with a leading whitespace. (default: None)"
  type: boolean
  inputBinding:
    prefix: --drmaa
- id: cluster_config
  doc: "A JSON or YAML file that defines the wildcards used in 'cluster'for specific\
    \ rules, instead of having them specified in the Snakefile. For example, for rule\
    \ 'job' you may define: { 'job' : { 'time' : '24:00:00' } } to specify the time\
    \ for rule 'job'. You can specify more than one file. The configuration files\
    \ are merged with later values overriding earlier ones. This option is deprecated\
    \ in favor of using --profile, see docs. (default: [])"
  type: File
  inputBinding:
    prefix: --cluster-config
- id: immediate_submit
  doc: "Immediately submit all jobs to the cluster instead of waiting for present\
    \ input files. This will fail, unless you make the cluster aware of job dependencies,\
    \ e.g. via: $ snakemake --cluster 'sbatch --dependency {dependencies}. Assuming\
    \ that your submit script (here sbatch) outputs the generated job id to the first\
    \ stdout line, {dependencies} will be filled with space separated job ids this\
    \ job depends on. (default: False)"
  type: boolean
  inputBinding:
    prefix: --immediate-submit
- id: job_script
  doc: "Provide a custom job script for submission to the cluster. The default script\
    \ resides as 'jobscript.sh' in the installation directory. (default: None)"
  type: string
  inputBinding:
    prefix: --jobscript
- id: job_name
  doc: 'Provide a custom name for the jobscript that is submitted to the cluster (see
    --cluster). NAME is "snakejob.{name}.{jobid}.sh" per default. The wildcard {jobid}
    has to be present in the name. (default: snakejob.{name}.{jobid}.sh)'
  type: string
  inputBinding:
    prefix: --jobname
- id: cluster_status
  doc: "Status command for cluster execution. This is only considered in combination\
    \ with the --cluster flag. If provided, Snakemake will use the status command\
    \ to determine if a job has finished successfully or failed. For this it is necessary\
    \ that the submit command provided to --cluster returns the cluster job id. Then,\
    \ the status command will be invoked with the job id. Snakemake expects it to\
    \ return 'success' if the job was successfull, 'failed' if the job failed and\
    \ 'running' if the job still runs. (default: None)"
  type: string
  inputBinding:
    prefix: --cluster-status
- id: drmaa_log_dir
  doc: "Specify a directory in which stdout and stderr files of DRMAA jobs will be\
    \ written. The value may be given as a relative path, in which case Snakemake\
    \ will use the current invocation directory as the origin. If given, this will\
    \ override any given '-o' and/or '-e' native specification. If not given, all\
    \ DRMAA stdout and stderr files are written to the current working directory.\
    \ (default: None)"
  type: string
  inputBinding:
    prefix: --drmaa-log-dir
- id: ku_bernet_es
  doc: "[NAMESPACE] Execute workflow in a kubernetes cluster (in the cloud). NAMESPACE\
    \ is the namespace you want to use for your job (if nothing specified: 'default').\
    \ Usually, this requires --default-remote-provider and --default- remote-prefix\
    \ to be set to a S3 or GS bucket where your . data shall be stored. It is further\
    \ advisable to activate conda integration via --use-conda. (default: None)"
  type: boolean
  inputBinding:
    prefix: --kubernetes
- id: container_image
  doc: "Docker image to use, e.g., when submitting jobs to kubernetes. By default,\
    \ this is 'https://hub.docker.com/r/snakemake/snakemake', tagged with the same\
    \ version as the currently running Snakemake instance. Note that overwriting this\
    \ value is up to your responsibility. Any used image has to contain a working\
    \ snakemake installation that is compatible with (or ideally the same as) the\
    \ currently running version. (default: None)"
  type: string
  inputBinding:
    prefix: --container-image
- id: tib_anna
  doc: "Execute workflow on AWS cloud using Tibanna. This requires --default-remote-prefix\
    \ to be set to S3 bucket name and prefix (e.g. 'bucketname/subdirectory') where\
    \ input is already stored and output will be sent to. Using --tibanna implies\
    \ --default-resources is set as default. Optionally, use --precommand to specify\
    \ any preparation command to run before snakemake command on the cloud (inside\
    \ snakemake container on Tibanna VM). Also, --use-conda, --use-singularity, --config,\
    \ --configfile are supported and will be carried over. (default: False)"
  type: boolean
  inputBinding:
    prefix: --tibanna
- id: tib_anna_sfn
  doc: 'Name of Tibanna Unicorn step function (e.g. tibanna_unicorn_monty).This works
    as serverless scheduler/resource allocator and must be deployed first using tibanna
    cli. (e.g. tibanna deploy_unicorn --usergroup=monty --buckets=bucketname) (default:
    None)'
  type: string
  inputBinding:
    prefix: --tibanna-sfn
- id: pre_command
  doc: 'Any command to execute before snakemake command on AWS cloud such as wget,
    git clone, unzip, etc. This is used with --tibanna.Do not include input/output
    download/upload commands - file transfer between S3 bucket and the run environment
    (container) is automatically handled by Tibanna. (default: None)'
  type: string
  inputBinding:
    prefix: --precommand
- id: tib_anna_config
  doc: 'Additional tibanan config e.g. --tibanna-config spot_instance=true subnet=<subnet_id>
    security group=<security_group_id> (default: None)'
  type: string[]
  inputBinding:
    prefix: --tibanna-config
- id: use_cond_a
  doc: 'If defined in the rule, run job in a conda environment. If this flag is not
    set, the conda directive is ignored. (default: False)'
  type: boolean
  inputBinding:
    prefix: --use-conda
- id: list_cond_a_envs
  doc: 'List all conda environments and their location on disk. (default: False)'
  type: boolean
  inputBinding:
    prefix: --list-conda-envs
- id: cond_a_prefix
  doc: "Specify a directory in which the 'conda' and 'conda- archive' directories\
    \ are created. These are used to store conda environments and their archives,\
    \ respectively. If not supplied, the value is set to the '.snakemake' directory\
    \ relative to the invocation directory. If supplied, the `--use-conda` flag must\
    \ also be set. The value may be given as a relative path, which will be extrapolated\
    \ to the invocation directory, or as an absolute path. (default: None)"
  type: string
  inputBinding:
    prefix: --conda-prefix
- id: cond_a_cleanup_envs
  doc: 'Cleanup unused conda environments. (default: False)'
  type: boolean
  inputBinding:
    prefix: --conda-cleanup-envs
- id: cond_a_cleanup_pkgs
  doc: "[{tarballs,cache}] Cleanup conda packages after creating environments. In\
    \ case of 'tarballs' mode, will clean up all downloaded package tarballs. In case\
    \ of 'cache' mode, will additionally clean up unused package caches. If mode is\
    \ omitted, will default to only cleaning up the tarballs. (default: None)"
  type: boolean
  inputBinding:
    prefix: --conda-cleanup-pkgs
- id: cond_a_create_envs_only
  doc: 'If specified, only creates the job-specific conda environments then exits.
    The `--use-conda` flag must also be set. (default: False)'
  type: boolean
  inputBinding:
    prefix: --conda-create-envs-only
- id: use_singularity
  doc: 'If defined in the rule, run job within a singularity container. If this flag
    is not set, the singularity directive is ignored. (default: False)'
  type: boolean
  inputBinding:
    prefix: --use-singularity
- id: singularity_prefix
  doc: "Specify a directory in which singularity images will be stored.If not supplied,\
    \ the value is set to the '.snakemake' directory relative to the invocation directory.\
    \ If supplied, the `--use-singularity` flag must also be set. The value may be\
    \ given as a relative path, which will be extrapolated to the invocation directory,\
    \ or as an absolute path. (default: None)"
  type: string
  inputBinding:
    prefix: --singularity-prefix
- id: singularity_args
  doc: 'Pass additional args to singularity. (default: )'
  type: string
  inputBinding:
    prefix: --singularity-args
- id: use_env_modules
  doc: "If defined in the rule, run job within the given environment modules, loaded\
    \ in the given order. This can be combined with --use-conda and --use- singularity,\
    \ which will then be only used as a fallback for rules which don't define environment\
    \ modules. (default: False)"
  type: boolean
  inputBinding:
    prefix: --use-envmodules
outputs: []
cwlVersion: v1.1
baseCommand:
- snakemake
