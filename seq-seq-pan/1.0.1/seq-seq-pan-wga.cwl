#!/usr/bin/env cwl-runner

baseCommand:
- seq-seq-pan-wga
class: CommandLineTool
cwlVersion: v1.0
id: seq-seq-pan-wga
inputs:
- doc: The workflow definition in a snakefile.
  id: snake_file
  inputBinding:
    prefix: --snakefile
  type: File
- doc: '[PORT]          Serve an HTML based user interface to the given port (default:
    8000). If possible, a browser window is opened.'
  id: gui
  inputBinding:
    prefix: --gui
  type: boolean
- doc: '[N], --jobs [N], -j [N] Use at most N cores in parallel (default: 1). If N
    is omitted, the limit is set to the number of available cores.'
  id: cores
  inputBinding:
    prefix: --cores
  type: boolean
- doc: 'In cluster mode, use at most N cores of the host machine in parallel (default:
    number of CPU cores of the host). The cores are used to execute local rules. This
    option is ignored when not in cluster mode.'
  id: local_cores
  inputBinding:
    prefix: --local-cores
  type: string
- doc: "[NAME=INT [NAME=INT ...]], --res [NAME=INT [NAME=INT ...]] Define additional\
    \ resources that shall constrain the scheduling analogously to threads (see above).\
    \ A resource is defined as a name and an integer value. E.g. --resources gpu=1.\
    \ Rules can use resources by defining the resource keyword, e.g. resources: gpu=1.\
    \ If now two rules require 1 of the resource 'gpu' they won't be run in parallel\
    \ by the scheduler."
  id: resources
  inputBinding:
    prefix: --resources
  type: boolean
- doc: '[KEY=VALUE [KEY=VALUE ...]], -C [KEY=VALUE [KEY=VALUE ...]] Set or overwrite
    values in the workflow config object. The workflow config object is accessible
    as variable config inside the workflow. Default values can be set by providing
    a JSON file (see Documentation).'
  id: config
  inputBinding:
    prefix: --config
  type: boolean
- doc: Specify or overwrite the config file of the workflow (see the docs). Values
    specified in JSON or YAML format are available in the global config dictionary
    inside the workflow.
  id: config_file
  inputBinding:
    prefix: --configfile
  type: File
- doc: Show availiable rules in given Snakefile.
  id: list
  inputBinding:
    prefix: --list
  type: boolean
- doc: Show available target rules in given Snakefile.
  id: list_target_rules
  inputBinding:
    prefix: --list-target-rules
  type: boolean
- doc: Specify working directory (relative paths in the snakefile will use this as
    their origin).
  id: directory
  inputBinding:
    prefix: --directory
  type: string
- doc: Do not execute anything.
  id: dry_run
  inputBinding:
    prefix: --dryrun
  type: boolean
- doc: Print out the shell commands that will be executed.
  id: print_shell_cmds
  inputBinding:
    prefix: --printshellcmds
  type: boolean
- doc: Print candidate and selected jobs (including their wildcards) while inferring
    DAG. This can help to debug unexpected DAG topology or errors.
  id: debug_dag
  inputBinding:
    prefix: --debug-dag
  type: boolean
- doc: 'Do not execute anything and print the directed acyclic graph of jobs in the
    dot language. Recommended use on Unix systems: snakemake --dag | dot | display'
  id: dag
  inputBinding:
    prefix: --dag
  type: boolean
- doc: Force threads rather than processes. Helpful if shared memory (/dev/shm) is
    full or unavailable.
  id: force_use_threads
  inputBinding:
    prefix: --force-use-threads
  type: boolean
- doc: 'Do not execute anything and print the dependency graph of rules in the dot
    language. This will be less crowded than above DAG of jobs, but also show less
    information. Note that each rule is displayed once, hence the displayed graph
    will be cyclic if a rule appears in several steps of the workflow. Use this if
    above option leads to a DAG that is too large. Recommended use on Unix systems:
    snakemake --rulegraph | dot | display'
  id: rule_graph
  inputBinding:
    prefix: --rulegraph
  type: boolean
- doc: Print the DAG in D3.js compatible JSON format.
  id: d3dag
  inputBinding:
    prefix: --d3dag
  type: boolean
- doc: 'Print a summary of all files created by the workflow. The has the following
    columns: filename, modification time, rule version, status, plan. Thereby rule
    version contains the versionthe file was created with (see the version keyword
    of rules), and status denotes whether the file is missing, its input files are
    newer or if version or implementation of the rule changed since file creation.
    Finally the last column denotes whether the file will be updated or created during
    the next workflow execution.'
  id: summary
  inputBinding:
    prefix: --summary
  type: boolean
- doc: 'Print a summary of all files created by the workflow. The has the following
    columns: filename, modification time, rule version, input file(s), shell command,
    status, plan. Thereby rule version contains the versionthe file was created with
    (see the version keyword of rules), and status denotes whether the file is missing,
    its input files are newer or if version or implementation of the rule changed
    since file creation. The input file and shell command columns are selfexplanatory.
    Finally the last column denotes whether the file will be updated or created during
    the next workflow execution.'
  id: detailed_summary
  inputBinding:
    prefix: --detailed-summary
  type: boolean
- doc: Archive the workflow into the given tar archive FILE. The archive will be created
    such that the workflow can be re-executed on a vanilla system. The function needs
    conda and git to be installed. It will archive every file that is under git version
    control. Note that it is best practice to have the Snakefile, config files, and
    scripts under version control. Hence, they will be included in the archive. Further,
    it will add input files that are not generated by by the workflow itself and conda
    environments. Note that symlinks are dereferenced. Supported formats are .tar,
    .tar.gz, .tar.bz2 and .tar.xz.
  id: archive
  inputBinding:
    prefix: --archive
  type: File
- doc: Touch output files (mark them up to date without really changing them) instead
    of running their commands. This is used to pretend that the rules were executed,
    in order to fool future invocations of snakemake. Fails if a file does not yet
    exist.
  id: touch
  inputBinding:
    prefix: --touch
  type: boolean
- doc: Go on with independent jobs if a job fails.
  id: keep_going
  inputBinding:
    prefix: --keep-going
  type: boolean
- doc: Force the execution of the selected target or the first rule regardless of
    already created output.
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: Force the execution of the selected (or the first) rule and all rules it is
    dependent on regardless of already created output.
  id: force_all
  inputBinding:
    prefix: --forceall
  type: boolean
- doc: '[TARGET [TARGET ...]], -R [TARGET [TARGET ...]] Force the re-execution or
    creation of the given rules or files. Use this option if you changed a rule and
    want to have all its output in your workflow updated.'
  id: force_run
  inputBinding:
    prefix: --forcerun
  type: boolean
- doc: Tell the scheduler to assign creation of given targets (and all their dependencies)
    highest priority. (EXPERIMENTAL)
  id: prioritize
  inputBinding:
    prefix: --prioritize
  type:
    items: string
    type: array
- doc: Runs the pipeline until it reaches the specified rules or files. Only runs
    jobs that are dependencies of the specified rule or files, does not run sibling
    DAGs.
  id: until
  inputBinding:
    prefix: --until
  type:
    items: string
    type: array
- doc: Prevent the execution or creation of the given rules or files as well as any
    rules or files that are downstream of these targets in the DAG. Also runs jobs
    in sibling DAGs that are independent of the rules or files specified here.
  id: omit_from
  inputBinding:
    prefix: --omit-from
  type:
    items: string
    type: array
- doc: Don't check for ambiguous rules and simply use the first if several can produce
    the same file. This allows the user to prioritize rules by their order in the
    snakefile.
  id: allow_ambiguity
  inputBinding:
    prefix: --allow-ambiguity
  type: boolean
- doc: "Execute snakemake rules with the given submit command, e.g. qsub. Snakemake\
    \ compiles jobs into scripts that are submitted to the cluster with the given\
    \ command, once all input files for a particular job are present. The submit command\
    \ can be decorated to make it aware of certain job properties (input, output,\
    \ params, wildcards, log, threads and dependencies (see the argument below)),\
    \ e.g.: $ snakemake --cluster 'qsub -pe threaded {threads}'."
  id: cluster
  inputBinding:
    prefix: --cluster
  type: string
- doc: cluster submission command will block, returning the remote exitstatus upon
    remote termination (for example, this should be usedif the cluster command is
    'qsub -sync y' (SGE)
  id: cluster_sync
  inputBinding:
    prefix: --cluster-sync
  type: string
- doc: "[ARGS]        Execute snakemake on a cluster accessed via DRMAA, Snakemake\
    \ compiles jobs into scripts that are submitted to the cluster with the given\
    \ command, once all input files for a particular job are present. ARGS can be\
    \ used to specify options of the underlying cluster system, thereby using the\
    \ job properties input, output, params, wildcards, log, threads and dependencies,\
    \ e.g.: --drmaa ' -pe threaded {threads}'. Note that ARGS must be given in quotes\
    \ and with a leading whitespace."
  id: drmaa
  inputBinding:
    prefix: --drmaa
  type: boolean
- doc: Specify a directory in which stdout and stderr files of DRMAA jobs will be
    written. The value may be given as a relative path, in which case Snakemake will
    use the current invocation directory as the origin. If given, this will override
    any given '-o' and/or '-e' native specification. If not given, all DRMAA stdout
    and stderr files are written to the current working directory.
  id: drmaa_log_dir
  inputBinding:
    prefix: --drmaa-log-dir
  type: string
- doc: "A JSON or YAML file that defines the wildcards used in 'cluster'for specific\
    \ rules, instead of having them specified in the Snakefile. For example, for rule\
    \ 'job' you may define: { 'job' : { 'time' : '24:00:00' } } to specify the time\
    \ for rule 'job'. You can specify more than one file. The configuration files\
    \ are merged with later values overriding earlier ones."
  id: cluster_config
  inputBinding:
    prefix: --cluster-config
  type: File
- doc: "Immediately submit all jobs to the cluster instead of waiting for present\
    \ input files. This will fail, unless you make the cluster aware of job dependencies,\
    \ e.g. via: $ snakemake --cluster 'sbatch --dependency {dependencies}. Assuming\
    \ that your submit script (here sbatch) outputs the generated job id to the first\
    \ stdout line, {dependencies} will be filled with space separated job ids this\
    \ job depends on."
  id: immediate_submit
  inputBinding:
    prefix: --immediate-submit
  type: boolean
- doc: Provide a custom job script for submission to the cluster. The default script
    resides as 'jobscript.sh' in the installation directory.
  id: job_script
  inputBinding:
    prefix: --jobscript
  type: string
- doc: Provide a custom name for the jobscript that is submitted to the cluster (see
    --cluster). NAME is "snakejob.{rulename}.{jobid}.sh" per default. The wildcard
    {jobid} has to be present in the name.
  id: job_name
  inputBinding:
    prefix: --jobname
  type: string
- doc: "[NAMESPACE] Execute workflow in a kubernetes cluster (in the cloud). NAMESPACE\
    \ is the namespace you want to use for your job (if nothing specified: 'default').\
    \ Usually, this requires --default-remote-provider and --default- remote-prefix\
    \ to be set to a S3 or GS bucket where your . data shall be stored. It is further\
    \ advisable to activate conda integration via --use-conda."
  id: ku_bernet_es
  inputBinding:
    prefix: --kubernetes
  type: boolean
- doc: Specify environment variables to pass to the kubernetes job.
  id: ku_bernet_es_env
  inputBinding:
    prefix: --kubernetes-env
  type:
    items: string
    type: array
- doc: Print the reason for each executed rule.
  id: reason
  inputBinding:
    prefix: --reason
  type: boolean
- doc: Write stats about Snakefile execution in JSON format to the given file.
  id: stats
  inputBinding:
    prefix: --stats
  type: File
- doc: Do not use a colored output.
  id: no_color
  inputBinding:
    prefix: --nocolor
  type: boolean
- doc: Do not output any progress or rule information.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Do not lock the working directory
  id: no_lock
  inputBinding:
    prefix: --nolock
  type: boolean
- doc: Remove a lock on the working directory.
  id: unlock
  inputBinding:
    prefix: --unlock
  type: boolean
- doc: Cleanup the metadata of given files. That means that snakemake removes any
    tracked version info, and any marks that files are incomplete.
  id: cleanup_metadata
  inputBinding:
    prefix: --cleanup-metadata
  type:
    items: File
    type: array
- doc: Re-run all jobs the output of which is recognized as incomplete.
  id: rerun_incomplete
  inputBinding:
    prefix: --rerun-incomplete
  type: boolean
- doc: Do not check for incomplete output files.
  id: ignore_incomplete
  inputBinding:
    prefix: --ignore-incomplete
  type: boolean
- doc: List all output files that have been created with a different version (as determined
    by the version keyword).
  id: list_version_changes
  inputBinding:
    prefix: --list-version-changes
  type: boolean
- doc: List all output files for which the rule body (run or shell) have changed in
    the Snakefile.
  id: list_code_changes
  inputBinding:
    prefix: --list-code-changes
  type: boolean
- doc: List all output files for which the defined input files have changed in the
    Snakefile (e.g. new input files were added in the rule definition or files were
    renamed). For listing input file modification in the filesystem, use --summary.
  id: list_input_changes
  inputBinding:
    prefix: --list-input-changes
  type: boolean
- doc: List all output files for which the defined params have changed in the Snakefile.
  id: list_params_changes
  inputBinding:
    prefix: --list-params-changes
  type: boolean
- doc: Wait given seconds if an output file of a job is not present after the job
    finished. This helps if your filesystem suffers from latency (default 5).
  id: latency_wait
  inputBinding:
    prefix: --latency-wait
  type: string
- doc: '[FILE [FILE ...]] Wait --latency-wait seconds for these files to be present
    before executing the workflow. This option is used internally to handle filesystem
    latency in cluster environments.'
  id: wait_for_files
  inputBinding:
    prefix: --wait-for-files
  type: boolean
- doc: Repeat a job N times if marked for benchmarking (default 1).
  id: benchmark_repeats
  inputBinding:
    prefix: --benchmark-repeats
  type: string
- doc: Ignore temp() declarations. This is useful when running only a part of the
    workflow, since temp() would lead to deletion of probably needed files by other
    parts of the workflow.
  id: no_temp
  inputBinding:
    prefix: --notemp
  type: boolean
- doc: Keep local copies of remote input files.
  id: keep_remote
  inputBinding:
    prefix: --keep-remote
  type: boolean
- doc: Do not adjust the paths of given target files relative to the working directory.
  id: keep_target_files
  inputBinding:
    prefix: --keep-target-files
  type: boolean
- doc: Do not delete the shadow directory on snakemake startup.
  id: keep_shadow
  inputBinding:
    prefix: --keep-shadow
  type: boolean
- doc: Only consider given rules. If omitted, all rules in Snakefile are used. Note
    that this is intended primarily for internal use and may lead to unexpected results
    otherwise.
  id: allowed_rules
  inputBinding:
    prefix: --allowed-rules
  type:
    items: string
    type: array
- doc: Maximal number of cluster/drmaa jobs per second, default is no limit
  id: max_jobs_per_second
  inputBinding:
    prefix: --max-jobs-per-second
  type: long
- doc: Number of times to restart failing jobs (defaults to 0).
  id: restart_times
  inputBinding:
    prefix: --restart-times
  type: string
- doc: Add a timestamp to all logging output
  id: timestamp
  inputBinding:
    prefix: --timestamp
  type: boolean
- doc: Set the greediness of scheduling. This value between 0 and 1 determines how
    careful jobs are selected for execution. The default value (1.0) provides the
    best speed and still acceptable scheduling quality.
  id: greediness
  inputBinding:
    prefix: --greediness
  type: string
- doc: Do not invoke onstart, onsuccess or onerror hooks after execution.
  id: no_hooks
  inputBinding:
    prefix: --no-hooks
  type: boolean
- doc: Print the python representation of the workflow.
  id: print_compilation
  inputBinding:
    prefix: --print-compilation
  type: boolean
- doc: Provide a shell command that shall be executed instead of those given in the
    workflow. This is for debugging purposes only.
  id: overwrite_shell_cmd
  inputBinding:
    prefix: --overwrite-shellcmd
  type: string
- doc: Print debugging output.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Allow to debug rules with e.g. PDB. This flag allows to set breakpoints in
    run blocks.
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Profile Snakemake and write the output to FILE. This requires yappi to be installed.
  id: profile
  inputBinding:
    prefix: --profile
  type: File
- doc: '{0,1,2}        Set execution mode of Snakemake (internal use only).'
  id: mode
  inputBinding:
    prefix: --mode
  type: boolean
- doc: 'Output code to register bash completion for snakemake. Put the following in
    your .bashrc (including the accents): `snakemake --bash-completion` or issue it
    in an open terminal session.'
  id: bash_completion
  inputBinding:
    prefix: --bash-completion
  type: boolean
- doc: If defined in the rule, create job specific conda environments. If this flag
    is not set, the conda directive is ignored.
  id: use_cond_a
  inputBinding:
    prefix: --use-conda
  type: boolean
- doc: Specify a directory in which the 'conda' and 'conda- archive' directories are
    created. These are used to store conda environments and their archives, respectively.
    If not supplied, the value is set to the '.snakemake' directory relative to the
    invocation directory. If supplied, the `--use-conda` flag must also be set. The
    value may be given as a relative path, which will be extrapolated to the invocation
    directory, or as an absolute path.
  id: cond_a_prefix
  inputBinding:
    prefix: --conda-prefix
  type: string
- doc: If specified, only creates the job-specific conda environments then exits.
    The `--use-conda` flag must also be set.
  id: create_envs_only
  inputBinding:
    prefix: --create-envs-only
  type: boolean
- doc: 'Prefix for URL created from wrapper directive (default: https://bitbucket.org/snakemake/snakemake-
    wrappers/raw/). Set this to a different URL to use your fork or a local clone
    of the repository.'
  id: wrapper_prefix
  inputBinding:
    prefix: --wrapper-prefix
  type: string
- doc: Specify default remote provider to be used for all input and output files that
    don't yet specify one.
  id: default_remote_provider
  inputBinding:
    prefix: --default-remote-provider
  type: string
- doc: Specify prefix for default remote provider. E.g. a bucket name.
  id: default_remote_prefix
  inputBinding:
    prefix: --default-remote-prefix
  type: string
