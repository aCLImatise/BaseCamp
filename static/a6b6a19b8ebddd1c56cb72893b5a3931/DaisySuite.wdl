version 1.0

task DaisySuite {
  input {
    File? snake_file
    Boolean? gui
    Boolean? cores
    String? local_cores
    Boolean? resources
    Boolean? config
    File? config_file
    Boolean? list
    Boolean? list_target_rules
    String? directory
    Boolean? dry_run
    Boolean? print_shell_cmds
    Boolean? dag
    Boolean? force_use_threads
    Boolean? rule_graph
    Boolean? d_three_dag
    Boolean? summary
    Boolean? detailed_summary
    Boolean? touch
    Boolean? keep_going
    Boolean? force
    Boolean? force_all
    Boolean? force_run
    Array[String] prioritize
    Array[String] until
    Array[String] omit_from
    Boolean? allow_ambiguity
    String? cluster
    String? cluster_sync
    Boolean? drmaa
    File? cluster_config
    Boolean? immediate_submit
    String? job_script
    String? job_name
    Boolean? reason
    File? stats
    Boolean? no_color
    Boolean? quiet
    Boolean? no_lock
    Boolean? unlock
    Array[File] cleanup_metadata
    Boolean? rerun_incomplete
    Boolean? ignore_incomplete
    Boolean? list_version_changes
    Boolean? list_code_changes
    Boolean? list_input_changes
    Boolean? list_params_changes
    String? latency_wait
    Boolean? wait_for_files
    String? benchmark_repeats
    Boolean? no_temp
    Boolean? keep_remote
    Boolean? keep_target_files
    Boolean? keep_shadow
    Array[String] allowed_rules
    Int? max_jobs_per_second
    Boolean? timestamp
    String? greediness
    Boolean? no_hooks
    Boolean? print_compilation
    String? overwrite_shell_cmd
    Boolean? verbose
    Boolean? debug
    File? profile
    String? mode
    Boolean? bash_completion
    Boolean? use_cond_a
    String? wrapper_prefix
  }
  command <<<
    DaisySuite \
      ~{if defined(snake_file) then ("--snakefile " +  '"' + snake_file + '"') else ""} \
      ~{true="--gui" false="" gui} \
      ~{true="--cores" false="" cores} \
      ~{if defined(local_cores) then ("--local-cores " +  '"' + local_cores + '"') else ""} \
      ~{true="--resources" false="" resources} \
      ~{true="--config" false="" config} \
      ~{if defined(config_file) then ("--configfile " +  '"' + config_file + '"') else ""} \
      ~{true="--list" false="" list} \
      ~{true="--list-target-rules" false="" list_target_rules} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{true="--dryrun" false="" dry_run} \
      ~{true="--printshellcmds" false="" print_shell_cmds} \
      ~{true="--dag" false="" dag} \
      ~{true="--force-use-threads" false="" force_use_threads} \
      ~{true="--rulegraph" false="" rule_graph} \
      ~{true="--d3dag" false="" d_three_dag} \
      ~{true="--summary" false="" summary} \
      ~{true="--detailed-summary" false="" detailed_summary} \
      ~{true="--touch" false="" touch} \
      ~{true="--keep-going" false="" keep_going} \
      ~{true="--force" false="" force} \
      ~{true="--forceall" false="" force_all} \
      ~{true="--forcerun" false="" force_run} \
      ~{if defined(prioritize) then ("--prioritize " +  '"' + prioritize + '"') else ""} \
      ~{if defined(until) then ("--until " +  '"' + until + '"') else ""} \
      ~{if defined(omit_from) then ("--omit-from " +  '"' + omit_from + '"') else ""} \
      ~{true="--allow-ambiguity" false="" allow_ambiguity} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(cluster_sync) then ("--cluster-sync " +  '"' + cluster_sync + '"') else ""} \
      ~{true="--drmaa" false="" drmaa} \
      ~{if defined(cluster_config) then ("--cluster-config " +  '"' + cluster_config + '"') else ""} \
      ~{true="--immediate-submit" false="" immediate_submit} \
      ~{if defined(job_script) then ("--jobscript " +  '"' + job_script + '"') else ""} \
      ~{if defined(job_name) then ("--jobname " +  '"' + job_name + '"') else ""} \
      ~{true="--reason" false="" reason} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{true="--nocolor" false="" no_color} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--nolock" false="" no_lock} \
      ~{true="--unlock" false="" unlock} \
      ~{if defined(cleanup_metadata) then ("--cleanup-metadata " +  '"' + cleanup_metadata + '"') else ""} \
      ~{true="--rerun-incomplete" false="" rerun_incomplete} \
      ~{true="--ignore-incomplete" false="" ignore_incomplete} \
      ~{true="--list-version-changes" false="" list_version_changes} \
      ~{true="--list-code-changes" false="" list_code_changes} \
      ~{true="--list-input-changes" false="" list_input_changes} \
      ~{true="--list-params-changes" false="" list_params_changes} \
      ~{if defined(latency_wait) then ("--latency-wait " +  '"' + latency_wait + '"') else ""} \
      ~{true="--wait-for-files" false="" wait_for_files} \
      ~{if defined(benchmark_repeats) then ("--benchmark-repeats " +  '"' + benchmark_repeats + '"') else ""} \
      ~{true="--notemp" false="" no_temp} \
      ~{true="--keep-remote" false="" keep_remote} \
      ~{true="--keep-target-files" false="" keep_target_files} \
      ~{true="--keep-shadow" false="" keep_shadow} \
      ~{if defined(allowed_rules) then ("--allowed-rules " +  '"' + allowed_rules + '"') else ""} \
      ~{if defined(max_jobs_per_second) then ("--max-jobs-per-second " +  '"' + max_jobs_per_second + '"') else ""} \
      ~{true="--timestamp" false="" timestamp} \
      ~{if defined(greediness) then ("--greediness " +  '"' + greediness + '"') else ""} \
      ~{true="--no-hooks" false="" no_hooks} \
      ~{true="--print-compilation" false="" print_compilation} \
      ~{if defined(overwrite_shell_cmd) then ("--overwrite-shellcmd " +  '"' + overwrite_shell_cmd + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{true="--bash-completion" false="" bash_completion} \
      ~{true="--use-conda" false="" use_cond_a} \
      ~{if defined(wrapper_prefix) then ("--wrapper-prefix " +  '"' + wrapper_prefix + '"') else ""}
  >>>
  parameter_meta {
    snake_file: "The workflow definition in a snakefile."
    gui: "[PORT]          Serve an HTML based user interface to the given port (default: 8000). If possible, a browser window is opened."
    cores: "[N], --jobs [N], -j [N] Use at most N cores in parallel (default: 1). If N is omitted, the limit is set to the number of available cores."
    local_cores: "In cluster mode, use at most N cores of the host machine in parallel (default: number of CPU cores of the host). The cores are used to execute local rules. This option is ignored when not in cluster mode."
    resources: "[NAME=INT [NAME=INT ...]], --res [NAME=INT [NAME=INT ...]] Define additional resources that shall constrain the scheduling analogously to threads (see above). A resource is defined as a name and an integer value. E.g. --resources gpu=1. Rules can use resources by defining the resource keyword, e.g. resources: gpu=1. If now two rules require 1 of the resource 'gpu' they won't be run in parallel by the scheduler."
    config: "[KEY=VALUE [KEY=VALUE ...]], -C [KEY=VALUE [KEY=VALUE ...]] Set or overwrite values in the workflow config object. The workflow config object is accessible as variable config inside the workflow. Default values can be set by providing a JSON file (see Documentation)."
    config_file: "Specify or overwrite the config file of the workflow (see the docs). Values specified in JSON or YAML format are available in the global config dictionary inside the workflow."
    list: "Show availiable rules in given Snakefile."
    list_target_rules: "Show available target rules in given Snakefile."
    directory: "Specify working directory (relative paths in the snakefile will use this as their origin)."
    dry_run: "Do not execute anything."
    print_shell_cmds: "Print out the shell commands that will be executed."
    dag: "Do not execute anything and print the directed acyclic graph of jobs in the dot language. Recommended use on Unix systems: snakemake --dag | dot | display"
    force_use_threads: "Force threads rather than processes. Helpful if shared memory (/dev/shm) is full or unavailable."
    rule_graph: "Do not execute anything and print the dependency graph of rules in the dot language. This will be less crowded than above DAG of jobs, but also show less information. Note that each rule is displayed once, hence the displayed graph will be cyclic if a rule appears in several steps of the workflow. Use this if above option leads to a DAG that is too large. Recommended use on Unix systems: snakemake --rulegraph | dot | display"
    d_three_dag: "Print the DAG in D3.js compatible JSON format."
    summary: "Print a summary of all files created by the workflow. The has the following columns: filename, modification time, rule version, status, plan. Thereby rule version contains the versionthe file was created with (see the version keyword of rules), and status denotes whether the file is missing, its input files are newer or if version or implementation of the rule changed since file creation. Finally the last column denotes whether the file will be updated or created during the next workflow execution."
    detailed_summary: "Print a summary of all files created by the workflow. The has the following columns: filename, modification time, rule version, input file(s), shell command, status, plan. Thereby rule version contains the versionthe file was created with (see the version keyword of rules), and status denotes whether the file is missing, its input files are newer or if version or implementation of the rule changed since file creation. The input file and shell command columns are selfexplanatory. Finally the last column denotes whether the file will be updated or created during the next workflow execution."
    touch: "Touch output files (mark them up to date without really changing them) instead of running their commands. This is used to pretend that the rules were executed, in order to fool future invocations of snakemake. Fails if a file does not yet exist."
    keep_going: "Go on with independent jobs if a job fails."
    force: "Force the execution of the selected target or the first rule regardless of already created output."
    force_all: "Force the execution of the selected (or the first) rule and all rules it is dependent on regardless of already created output."
    force_run: "[TARGET [TARGET ...]], -R [TARGET [TARGET ...]] Force the re-execution or creation of the given rules or files. Use this option if you changed a rule and want to have all its output in your workflow updated."
    prioritize: "Tell the scheduler to assign creation of given targets (and all their dependencies) highest priority. (EXPERIMENTAL)"
    until: "Runs the pipeline until it reaches the specified rules or files. Only runs jobs that are dependencies of the specified rule or files, does not run sibling DAGs."
    omit_from: "Prevent the execution or creation of the given rules or files as well as any rules or files that are downstream of these targets in the DAG. Also runs jobs in sibling DAGs that are independent of the rules or files specified here."
    allow_ambiguity: "Don't check for ambiguous rules and simply use the first if several can produce the same file. This allows the user to prioritize rules by their order in the snakefile."
    cluster: "Execute snakemake rules with the given submit command, e.g. qsub. Snakemake compiles jobs into scripts that are submitted to the cluster with the given command, once all input files for a particular job are present. The submit command can be decorated to make it aware of certain job properties (input, output, params, wildcards, log, threads and dependencies (see the argument below)), e.g.: $ snakemake --cluster 'qsub -pe threaded {threads}'."
    cluster_sync: "cluster submission command will block, returning the remote exitstatus upon remote termination (for example, this should be usedif the cluster command is 'qsub -sync y' (SGE)"
    drmaa: "[ARGS]        Execute snakemake on a cluster accessed via DRMAA, Snakemake compiles jobs into scripts that are submitted to the cluster with the given command, once all input files for a particular job are present. ARGS can be used to specify options of the underlying cluster system, thereby using the job properties input, output, params, wildcards, log, threads and dependencies, e.g.: --drmaa ' -pe threaded {threads}'. Note that ARGS must be given in quotes and with a leading whitespace."
    cluster_config: "A JSON or YAML file that defines the wildcards used in 'cluster'for specific rules, instead of having them specified in the Snakefile. For example, for rule 'job' you may define: { 'job' : { 'time' : '24:00:00' } } to specify the time for rule 'job'. You can specify more than one file. The configuration files are merged with later values overriding earlier ones."
    immediate_submit: "Immediately submit all jobs to the cluster instead of waiting for present input files. This will fail, unless you make the cluster aware of job dependencies, e.g. via: $ snakemake --cluster 'sbatch --dependency {dependencies}. Assuming that your submit script (here sbatch) outputs the generated job id to the first stdout line, {dependencies} will be filled with space separated job ids this job depends on."
    job_script: "Provide a custom job script for submission to the cluster. The default script resides as 'jobscript.sh' in the installation directory."
    job_name: "Provide a custom name for the jobscript that is submitted to the cluster (see --cluster). NAME is \"snakejob.{rulename}.{jobid}.sh\" per default. The wildcard {jobid} has to be present in the name."
    reason: "Print the reason for each executed rule."
    stats: "Write stats about Snakefile execution in JSON format to the given file."
    no_color: "Do not use a colored output."
    quiet: "Do not output any progress or rule information."
    no_lock: "Do not lock the working directory"
    unlock: "Remove a lock on the working directory."
    cleanup_metadata: "Cleanup the metadata of given files. That means that snakemake removes any tracked version info, and any marks that files are incomplete."
    rerun_incomplete: "Re-run all jobs the output of which is recognized as incomplete."
    ignore_incomplete: "Do not check for incomplete output files."
    list_version_changes: "List all output files that have been created with a different version (as determined by the version keyword)."
    list_code_changes: "List all output files for which the rule body (run or shell) have changed in the Snakefile."
    list_input_changes: "List all output files for which the defined input files have changed in the Snakefile (e.g. new input files were added in the rule definition or files were renamed). For listing input file modification in the filesystem, use --summary."
    list_params_changes: "List all output files for which the defined params have changed in the Snakefile."
    latency_wait: "Wait given seconds if an output file of a job is not present after the job finished. This helps if your filesystem suffers from latency (default 5)."
    wait_for_files: "[FILE [FILE ...]] Wait --latency-wait seconds for these files to be present before executing the workflow. This option is used internally to handle filesystem latency in cluster environments."
    benchmark_repeats: "Repeat a job N times if marked for benchmarking (default 1)."
    no_temp: "Ignore temp() declarations. This is useful when running only a part of the workflow, since temp() would lead to deletion of probably needed files by other parts of the workflow."
    keep_remote: "Keep local copies of remote input files."
    keep_target_files: "Do not adjust the paths of given target files relative to the working directory."
    keep_shadow: "Do not delete the shadow directory on snakemake startup."
    allowed_rules: "Only use given rules. If omitted, all rules in Snakefile are used."
    max_jobs_per_second: "Maximal number of cluster/drmaa jobs per second, default is no limit"
    timestamp: "Add a timestamp to all logging output"
    greediness: "Set the greediness of scheduling. This value between 0 and 1 determines how careful jobs are selected for execution. The default value (1.0) provides the best speed and still acceptable scheduling quality."
    no_hooks: "Do not invoke onstart, onsuccess or onerror hooks after execution."
    print_compilation: "Print the python representation of the workflow."
    overwrite_shell_cmd: "Provide a shell command that shall be executed instead of those given in the workflow. This is for debugging purposes only."
    verbose: "Print debugging output."
    debug: "Allow to debug rules with e.g. PDB. This flag allows to set breakpoints in run blocks."
    profile: "Profile Snakemake and write the output to FILE. This requires yappi to be installed."
    mode: "Set execution mode of Snakemake (internal use only)."
    bash_completion: "Output code to register bash completion for snakemake. Put the following in your .bashrc (including the accents): `snakemake --bash-completion` or issue it in an open terminal session."
    use_cond_a: "If defined in the rule, create job specific conda environments. If this flag is not set, the conda directive is ignored."
    wrapper_prefix: "Prefix for URL created from wrapper directive (default: https://bitbucket.org/snakemake/snakemake- wrappers/raw/). Set this to a different URL to use your fork or a local clone of the repository."
  }
}