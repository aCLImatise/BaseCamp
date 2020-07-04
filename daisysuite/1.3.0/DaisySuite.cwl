class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/DaisySuite.cwl
inputs:
- id: snake_file
  doc: The workflow definition in a snakefile.
  type: File
  inputBinding:
    prefix: --snakefile
- id: gui
  doc: '[PORT]          Serve an HTML based user interface to the given port (default:
    8000). If possible, a browser window is opened.'
  type: boolean
  inputBinding:
    prefix: --gui
- id: cores
  doc: '[N], --jobs [N], -j [N] Use at most N cores in parallel (default: 1). If N
    is omitted, the limit is set to the number of available cores.'
  type: boolean
  inputBinding:
    prefix: --cores
- id: local_cores
  doc: 'In cluster mode, use at most N cores of the host machine in parallel (default:
    number of CPU cores of the host). The cores are used to execute local rules. This
    option is ignored when not in cluster mode.'
  type: string
  inputBinding:
    prefix: --local-cores
- id: resources
  doc: "[NAME=INT [NAME=INT ...]], --res [NAME=INT [NAME=INT ...]] Define additional\
    \ resources that shall constrain the scheduling analogously to threads (see above).\
    \ A resource is defined as a name and an integer value. E.g. --resources gpu=1.\
    \ Rules can use resources by defining the resource keyword, e.g. resources: gpu=1.\
    \ If now two rules require 1 of the resource 'gpu' they won't be run in parallel\
    \ by the scheduler."
  type: boolean
  inputBinding:
    prefix: --resources
- id: config
  doc: '[KEY=VALUE [KEY=VALUE ...]], -C [KEY=VALUE [KEY=VALUE ...]] Set or overwrite
    values in the workflow config object. The workflow config object is accessible
    as variable config inside the workflow. Default values can be set by providing
    a JSON file (see Documentation).'
  type: boolean
  inputBinding:
    prefix: --config
- id: config_file
  doc: Specify or overwrite the config file of the workflow (see the docs). Values
    specified in JSON or YAML format are available in the global config dictionary
    inside the workflow.
  type: File
  inputBinding:
    prefix: --configfile
- id: list
  doc: Show availiable rules in given Snakefile.
  type: boolean
  inputBinding:
    prefix: --list
- id: list_target_rules
  doc: Show available target rules in given Snakefile.
  type: boolean
  inputBinding:
    prefix: --list-target-rules
- id: directory
  doc: Specify working directory (relative paths in the snakefile will use this as
    their origin).
  type: string
  inputBinding:
    prefix: --directory
- id: dry_run
  doc: Do not execute anything.
  type: boolean
  inputBinding:
    prefix: --dryrun
- id: print_shell_cmds
  doc: Print out the shell commands that will be executed.
  type: boolean
  inputBinding:
    prefix: --printshellcmds
- id: dag
  doc: 'Do not execute anything and print the directed acyclic graph of jobs in the
    dot language. Recommended use on Unix systems: snakemake --dag | dot | display'
  type: boolean
  inputBinding:
    prefix: --dag
- id: force_use_threads
  doc: Force threads rather than processes. Helpful if shared memory (/dev/shm) is
    full or unavailable.
  type: boolean
  inputBinding:
    prefix: --force-use-threads
- id: rule_graph
  doc: 'Do not execute anything and print the dependency graph of rules in the dot
    language. This will be less crowded than above DAG of jobs, but also show less
    information. Note that each rule is displayed once, hence the displayed graph
    will be cyclic if a rule appears in several steps of the workflow. Use this if
    above option leads to a DAG that is too large. Recommended use on Unix systems:
    snakemake --rulegraph | dot | display'
  type: boolean
  inputBinding:
    prefix: --rulegraph
- id: d_three_dag
  doc: Print the DAG in D3.js compatible JSON format.
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
    the next workflow execution.'
  type: boolean
  inputBinding:
    prefix: --summary
- id: detailed_summary
  doc: 'Print a summary of all files created by the workflow. The has the following
    columns: filename, modification time, rule version, input file(s), shell command,
    status, plan. Thereby rule version contains the versionthe file was created with
    (see the version keyword of rules), and status denotes whether the file is missing,
    its input files are newer or if version or implementation of the rule changed
    since file creation. The input file and shell command columns are selfexplanatory.
    Finally the last column denotes whether the file will be updated or created during
    the next workflow execution.'
  type: boolean
  inputBinding:
    prefix: --detailed-summary
- id: touch
  doc: Touch output files (mark them up to date without really changing them) instead
    of running their commands. This is used to pretend that the rules were executed,
    in order to fool future invocations of snakemake. Fails if a file does not yet
    exist.
  type: boolean
  inputBinding:
    prefix: --touch
- id: keep_going
  doc: Go on with independent jobs if a job fails.
  type: boolean
  inputBinding:
    prefix: --keep-going
- id: force
  doc: Force the execution of the selected target or the first rule regardless of
    already created output.
  type: boolean
  inputBinding:
    prefix: --force
- id: force_all
  doc: Force the execution of the selected (or the first) rule and all rules it is
    dependent on regardless of already created output.
  type: boolean
  inputBinding:
    prefix: --forceall
- id: force_run
  doc: '[TARGET [TARGET ...]], -R [TARGET [TARGET ...]] Force the re-execution or
    creation of the given rules or files. Use this option if you changed a rule and
    want to have all its output in your workflow updated.'
  type: boolean
  inputBinding:
    prefix: --forcerun
- id: prioritize
  doc: Tell the scheduler to assign creation of given targets (and all their dependencies)
    highest priority. (EXPERIMENTAL)
  type: string[]
  inputBinding:
    prefix: --prioritize
- id: until
  doc: Runs the pipeline until it reaches the specified rules or files. Only runs
    jobs that are dependencies of the specified rule or files, does not run sibling
    DAGs.
  type: string[]
  inputBinding:
    prefix: --until
- id: omit_from
  doc: Prevent the execution or creation of the given rules or files as well as any
    rules or files that are downstream of these targets in the DAG. Also runs jobs
    in sibling DAGs that are independent of the rules or files specified here.
  type: string[]
  inputBinding:
    prefix: --omit-from
- id: allow_ambiguity
  doc: Don't check for ambiguous rules and simply use the first if several can produce
    the same file. This allows the user to prioritize rules by their order in the
    snakefile.
  type: boolean
  inputBinding:
    prefix: --allow-ambiguity
- id: cluster
  doc: "Execute snakemake rules with the given submit command, e.g. qsub. Snakemake\
    \ compiles jobs into scripts that are submitted to the cluster with the given\
    \ command, once all input files for a particular job are present. The submit command\
    \ can be decorated to make it aware of certain job properties (input, output,\
    \ params, wildcards, log, threads and dependencies (see the argument below)),\
    \ e.g.: $ snakemake --cluster 'qsub -pe threaded {threads}'."
  type: string
  inputBinding:
    prefix: --cluster
- id: cluster_sync
  doc: cluster submission command will block, returning the remote exitstatus upon
    remote termination (for example, this should be usedif the cluster command is
    'qsub -sync y' (SGE)
  type: string
  inputBinding:
    prefix: --cluster-sync
- id: drmaa
  doc: "[ARGS]        Execute snakemake on a cluster accessed via DRMAA, Snakemake\
    \ compiles jobs into scripts that are submitted to the cluster with the given\
    \ command, once all input files for a particular job are present. ARGS can be\
    \ used to specify options of the underlying cluster system, thereby using the\
    \ job properties input, output, params, wildcards, log, threads and dependencies,\
    \ e.g.: --drmaa ' -pe threaded {threads}'. Note that ARGS must be given in quotes\
    \ and with a leading whitespace."
  type: boolean
  inputBinding:
    prefix: --drmaa
- id: cluster_config
  doc: "A JSON or YAML file that defines the wildcards used in 'cluster'for specific\
    \ rules, instead of having them specified in the Snakefile. For example, for rule\
    \ 'job' you may define: { 'job' : { 'time' : '24:00:00' } } to specify the time\
    \ for rule 'job'. You can specify more than one file. The configuration files\
    \ are merged with later values overriding earlier ones."
  type: File
  inputBinding:
    prefix: --cluster-config
- id: immediate_submit
  doc: "Immediately submit all jobs to the cluster instead of waiting for present\
    \ input files. This will fail, unless you make the cluster aware of job dependencies,\
    \ e.g. via: $ snakemake --cluster 'sbatch --dependency {dependencies}. Assuming\
    \ that your submit script (here sbatch) outputs the generated job id to the first\
    \ stdout line, {dependencies} will be filled with space separated job ids this\
    \ job depends on."
  type: boolean
  inputBinding:
    prefix: --immediate-submit
- id: job_script
  doc: Provide a custom job script for submission to the cluster. The default script
    resides as 'jobscript.sh' in the installation directory.
  type: string
  inputBinding:
    prefix: --jobscript
- id: job_name
  doc: Provide a custom name for the jobscript that is submitted to the cluster (see
    --cluster). NAME is "snakejob.{rulename}.{jobid}.sh" per default. The wildcard
    {jobid} has to be present in the name.
  type: string
  inputBinding:
    prefix: --jobname
- id: reason
  doc: Print the reason for each executed rule.
  type: boolean
  inputBinding:
    prefix: --reason
- id: stats
  doc: Write stats about Snakefile execution in JSON format to the given file.
  type: File
  inputBinding:
    prefix: --stats
- id: no_color
  doc: Do not use a colored output.
  type: boolean
  inputBinding:
    prefix: --nocolor
- id: quiet
  doc: Do not output any progress or rule information.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: no_lock
  doc: Do not lock the working directory
  type: boolean
  inputBinding:
    prefix: --nolock
- id: unlock
  doc: Remove a lock on the working directory.
  type: boolean
  inputBinding:
    prefix: --unlock
- id: cleanup_metadata
  doc: Cleanup the metadata of given files. That means that snakemake removes any
    tracked version info, and any marks that files are incomplete.
  type: File[]
  inputBinding:
    prefix: --cleanup-metadata
- id: rerun_incomplete
  doc: Re-run all jobs the output of which is recognized as incomplete.
  type: boolean
  inputBinding:
    prefix: --rerun-incomplete
- id: ignore_incomplete
  doc: Do not check for incomplete output files.
  type: boolean
  inputBinding:
    prefix: --ignore-incomplete
- id: list_version_changes
  doc: List all output files that have been created with a different version (as determined
    by the version keyword).
  type: boolean
  inputBinding:
    prefix: --list-version-changes
- id: list_code_changes
  doc: List all output files for which the rule body (run or shell) have changed in
    the Snakefile.
  type: boolean
  inputBinding:
    prefix: --list-code-changes
- id: list_input_changes
  doc: List all output files for which the defined input files have changed in the
    Snakefile (e.g. new input files were added in the rule definition or files were
    renamed). For listing input file modification in the filesystem, use --summary.
  type: boolean
  inputBinding:
    prefix: --list-input-changes
- id: list_params_changes
  doc: List all output files for which the defined params have changed in the Snakefile.
  type: boolean
  inputBinding:
    prefix: --list-params-changes
- id: latency_wait
  doc: Wait given seconds if an output file of a job is not present after the job
    finished. This helps if your filesystem suffers from latency (default 5).
  type: string
  inputBinding:
    prefix: --latency-wait
- id: wait_for_files
  doc: '[FILE [FILE ...]] Wait --latency-wait seconds for these files to be present
    before executing the workflow. This option is used internally to handle filesystem
    latency in cluster environments.'
  type: boolean
  inputBinding:
    prefix: --wait-for-files
- id: benchmark_repeats
  doc: Repeat a job N times if marked for benchmarking (default 1).
  type: string
  inputBinding:
    prefix: --benchmark-repeats
- id: no_temp
  doc: Ignore temp() declarations. This is useful when running only a part of the
    workflow, since temp() would lead to deletion of probably needed files by other
    parts of the workflow.
  type: boolean
  inputBinding:
    prefix: --notemp
- id: keep_remote
  doc: Keep local copies of remote input files.
  type: boolean
  inputBinding:
    prefix: --keep-remote
- id: keep_target_files
  doc: Do not adjust the paths of given target files relative to the working directory.
  type: boolean
  inputBinding:
    prefix: --keep-target-files
- id: keep_shadow
  doc: Do not delete the shadow directory on snakemake startup.
  type: boolean
  inputBinding:
    prefix: --keep-shadow
- id: allowed_rules
  doc: Only use given rules. If omitted, all rules in Snakefile are used.
  type: string[]
  inputBinding:
    prefix: --allowed-rules
- id: max_jobs_per_second
  doc: Maximal number of cluster/drmaa jobs per second, default is no limit
  type: long
  inputBinding:
    prefix: --max-jobs-per-second
- id: timestamp
  doc: Add a timestamp to all logging output
  type: boolean
  inputBinding:
    prefix: --timestamp
- id: greediness
  doc: Set the greediness of scheduling. This value between 0 and 1 determines how
    careful jobs are selected for execution. The default value (1.0) provides the
    best speed and still acceptable scheduling quality.
  type: string
  inputBinding:
    prefix: --greediness
- id: no_hooks
  doc: Do not invoke onstart, onsuccess or onerror hooks after execution.
  type: boolean
  inputBinding:
    prefix: --no-hooks
- id: print_compilation
  doc: Print the python representation of the workflow.
  type: boolean
  inputBinding:
    prefix: --print-compilation
- id: overwrite_shell_cmd
  doc: Provide a shell command that shall be executed instead of those given in the
    workflow. This is for debugging purposes only.
  type: string
  inputBinding:
    prefix: --overwrite-shellcmd
- id: verbose
  doc: Print debugging output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: Allow to debug rules with e.g. PDB. This flag allows to set breakpoints in
    run blocks.
  type: boolean
  inputBinding:
    prefix: --debug
- id: profile
  doc: Profile Snakemake and write the output to FILE. This requires yappi to be installed.
  type: File
  inputBinding:
    prefix: --profile
- id: mode
  doc: Set execution mode of Snakemake (internal use only).
  type: string
  inputBinding:
    prefix: --mode
- id: bash_completion
  doc: 'Output code to register bash completion for snakemake. Put the following in
    your .bashrc (including the accents): `snakemake --bash-completion` or issue it
    in an open terminal session.'
  type: boolean
  inputBinding:
    prefix: --bash-completion
- id: use_cond_a
  doc: If defined in the rule, create job specific conda environments. If this flag
    is not set, the conda directive is ignored.
  type: boolean
  inputBinding:
    prefix: --use-conda
- id: wrapper_prefix
  doc: 'Prefix for URL created from wrapper directive (default: https://bitbucket.org/snakemake/snakemake-
    wrappers/raw/). Set this to a different URL to use your fork or a local clone
    of the repository.'
  type: string
  inputBinding:
    prefix: --wrapper-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- DaisySuite
