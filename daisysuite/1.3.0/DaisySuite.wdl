version 1.0

task DaisySuite {
  input {
    File? snake_file
    Boolean? gui
    Boolean? cores
    Int? local_cores
    Boolean? resources
    Boolean? config
    File? config_file
    Boolean? list
    Boolean? list_target_rules
    Directory? directory
    Boolean? dry_run
    Boolean? print_shell_cmds
    Boolean? dag
    Boolean? force_use_threads
    Boolean? rule_graph
    Boolean? d_three_dag
    Boolean? summary
    Boolean? detailed_summary
    File? touch
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
    Directory? job_script
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
    File? latency_wait
    Boolean? wait_for_files
    Int? benchmark_repeats
    Boolean? no_temp
    Boolean? keep_remote
    Boolean? keep_target_files
    Boolean? keep_shadow
    Int? max_jobs_per_second
    Boolean? timestamp
    Float? greediness
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
      ~{if (gui) then "--gui" else ""} \
      ~{if (cores) then "--cores" else ""} \
      ~{if defined(local_cores) then ("--local-cores " +  '"' + local_cores + '"') else ""} \
      ~{if (resources) then "--resources" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if defined(config_file) then ("--configfile " +  '"' + config_file + '"') else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (list_target_rules) then "--list-target-rules" else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if (print_shell_cmds) then "--printshellcmds" else ""} \
      ~{if (dag) then "--dag" else ""} \
      ~{if (force_use_threads) then "--force-use-threads" else ""} \
      ~{if (rule_graph) then "--rulegraph" else ""} \
      ~{if (d_three_dag) then "--d3dag" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (detailed_summary) then "--detailed-summary" else ""} \
      ~{if (touch) then "--touch" else ""} \
      ~{if (keep_going) then "--keep-going" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (force_all) then "--forceall" else ""} \
      ~{if (force_run) then "--forcerun" else ""} \
      ~{if defined(prioritize) then ("--prioritize " +  '"' + prioritize + '"') else ""} \
      ~{if defined(until) then ("--until " +  '"' + until + '"') else ""} \
      ~{if defined(omit_from) then ("--omit-from " +  '"' + omit_from + '"') else ""} \
      ~{if (allow_ambiguity) then "--allow-ambiguity" else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(cluster_sync) then ("--cluster-sync " +  '"' + cluster_sync + '"') else ""} \
      ~{if (drmaa) then "--drmaa" else ""} \
      ~{if defined(cluster_config) then ("--cluster-config " +  '"' + cluster_config + '"') else ""} \
      ~{if (immediate_submit) then "--immediate-submit" else ""} \
      ~{if defined(job_script) then ("--jobscript " +  '"' + job_script + '"') else ""} \
      ~{if defined(job_name) then ("--jobname " +  '"' + job_name + '"') else ""} \
      ~{if (reason) then "--reason" else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{if (no_color) then "--nocolor" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (no_lock) then "--nolock" else ""} \
      ~{if (unlock) then "--unlock" else ""} \
      ~{if defined(cleanup_metadata) then ("--cleanup-metadata " +  '"' + cleanup_metadata + '"') else ""} \
      ~{if (rerun_incomplete) then "--rerun-incomplete" else ""} \
      ~{if (ignore_incomplete) then "--ignore-incomplete" else ""} \
      ~{if (list_version_changes) then "--list-version-changes" else ""} \
      ~{if (list_code_changes) then "--list-code-changes" else ""} \
      ~{if (list_input_changes) then "--list-input-changes" else ""} \
      ~{if (list_params_changes) then "--list-params-changes" else ""} \
      ~{if defined(latency_wait) then ("--latency-wait " +  '"' + latency_wait + '"') else ""} \
      ~{if (wait_for_files) then "--wait-for-files" else ""} \
      ~{if defined(benchmark_repeats) then ("--benchmark-repeats " +  '"' + benchmark_repeats + '"') else ""} \
      ~{if (no_temp) then "--notemp" else ""} \
      ~{if (keep_remote) then "--keep-remote" else ""} \
      ~{if (keep_target_files) then "--keep-target-files" else ""} \
      ~{if (keep_shadow) then "--keep-shadow" else ""} \
      ~{if defined(max_jobs_per_second) then ("--max-jobs-per-second " +  '"' + max_jobs_per_second + '"') else ""} \
      ~{if (timestamp) then "--timestamp" else ""} \
      ~{if defined(greediness) then ("--greediness " +  '"' + greediness + '"') else ""} \
      ~{if (no_hooks) then "--no-hooks" else ""} \
      ~{if (print_compilation) then "--print-compilation" else ""} \
      ~{if defined(overwrite_shell_cmd) then ("--overwrite-shellcmd " +  '"' + overwrite_shell_cmd + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (bash_completion) then "--bash-completion" else ""} \
      ~{if (use_cond_a) then "--use-conda" else ""} \
      ~{if defined(wrapper_prefix) then ("--wrapper-prefix " +  '"' + wrapper_prefix + '"') else ""}
  >>>
  parameter_meta {
    snake_file: "The workflow definition in a snakefile."
    gui: "[PORT]          Serve an HTML based user interface to the given port\\n(default: 8000). If possible, a browser window is\\nopened."
    cores: "[N], --jobs [N], -j [N]\\nUse at most N cores in parallel (default: 1). If N is\\nomitted, the limit is set to the number of available\\ncores."
    local_cores: "In cluster mode, use at most N cores of the host\\nmachine in parallel (default: number of CPU cores of\\nthe host). The cores are used to execute local rules.\\nThis option is ignored when not in cluster mode."
    resources: "[NAME=INT [NAME=INT ...]], --res [NAME=INT [NAME=INT ...]]\\nDefine additional resources that shall constrain the\\nscheduling analogously to threads (see above). A\\nresource is defined as a name and an integer value.\\nE.g. --resources gpu=1. Rules can use resources by\\ndefining the resource keyword, e.g. resources: gpu=1.\\nIf now two rules require 1 of the resource 'gpu' they\\nwon't be run in parallel by the scheduler."
    config: "[KEY=VALUE [KEY=VALUE ...]], -C [KEY=VALUE [KEY=VALUE ...]]\\nSet or overwrite values in the workflow config object.\\nThe workflow config object is accessible as variable\\nconfig inside the workflow. Default values can be set\\nby providing a JSON file (see Documentation)."
    config_file: "Specify or overwrite the config file of the workflow\\n(see the docs). Values specified in JSON or YAML\\nformat are available in the global config dictionary\\ninside the workflow."
    list: "Show availiable rules in given Snakefile."
    list_target_rules: "Show available target rules in given Snakefile."
    directory: "Specify working directory (relative paths in the\\nsnakefile will use this as their origin)."
    dry_run: "Do not execute anything."
    print_shell_cmds: "Print out the shell commands that will be executed."
    dag: "Do not execute anything and print the directed acyclic\\ngraph of jobs in the dot language. Recommended use on\\nUnix systems: snakemake --dag | dot | display"
    force_use_threads: "Force threads rather than processes. Helpful if shared\\nmemory (/dev/shm) is full or unavailable."
    rule_graph: "Do not execute anything and print the dependency graph\\nof rules in the dot language. This will be less\\ncrowded than above DAG of jobs, but also show less\\ninformation. Note that each rule is displayed once,\\nhence the displayed graph will be cyclic if a rule\\nappears in several steps of the workflow. Use this if\\nabove option leads to a DAG that is too large.\\nRecommended use on Unix systems: snakemake --rulegraph\\n| dot | display"
    d_three_dag: "Print the DAG in D3.js compatible JSON format."
    summary: "Print a summary of all files created by the workflow.\\nThe has the following columns: filename, modification\\ntime, rule version, status, plan. Thereby rule version\\ncontains the versionthe file was created with (see the\\nversion keyword of rules), and status denotes whether\\nthe file is missing, its input files are newer or if\\nversion or implementation of the rule changed since\\nfile creation. Finally the last column denotes whether\\nthe file will be updated or created during the next\\nworkflow execution."
    detailed_summary: "Print a summary of all files created by the workflow.\\nThe has the following columns: filename, modification\\ntime, rule version, input file(s), shell command,\\nstatus, plan. Thereby rule version contains the\\nversionthe file was created with (see the version\\nkeyword of rules), and status denotes whether the file\\nis missing, its input files are newer or if version or\\nimplementation of the rule changed since file\\ncreation. The input file and shell command columns are\\nselfexplanatory. Finally the last column denotes\\nwhether the file will be updated or created during the\\nnext workflow execution."
    touch: "Touch output files (mark them up to date without\\nreally changing them) instead of running their\\ncommands. This is used to pretend that the rules were\\nexecuted, in order to fool future invocations of\\nsnakemake. Fails if a file does not yet exist."
    keep_going: "Go on with independent jobs if a job fails."
    force: "Force the execution of the selected target or the\\nfirst rule regardless of already created output."
    force_all: "Force the execution of the selected (or the first)\\nrule and all rules it is dependent on regardless of\\nalready created output."
    force_run: "[TARGET [TARGET ...]], -R [TARGET [TARGET ...]]\\nForce the re-execution or creation of the given rules\\nor files. Use this option if you changed a rule and\\nwant to have all its output in your workflow updated."
    prioritize: "Tell the scheduler to assign creation of given targets\\n(and all their dependencies) highest priority.\\n(EXPERIMENTAL)"
    until: "Runs the pipeline until it reaches the specified rules\\nor files. Only runs jobs that are dependencies of the\\nspecified rule or files, does not run sibling DAGs."
    omit_from: "Prevent the execution or creation of the given rules\\nor files as well as any rules or files that are\\ndownstream of these targets in the DAG. Also runs jobs\\nin sibling DAGs that are independent of the rules or\\nfiles specified here."
    allow_ambiguity: "Don't check for ambiguous rules and simply use the\\nfirst if several can produce the same file. This\\nallows the user to prioritize rules by their order in\\nthe snakefile."
    cluster: "Execute snakemake rules with the given submit command,\\ne.g. qsub. Snakemake compiles jobs into scripts that\\nare submitted to the cluster with the given command,\\nonce all input files for a particular job are present.\\nThe submit command can be decorated to make it aware\\nof certain job properties (input, output, params,\\nwildcards, log, threads and dependencies (see the\\nargument below)), e.g.: $ snakemake --cluster 'qsub\\n-pe threaded {threads}'."
    cluster_sync: "cluster submission command will block, returning the\\nremote exitstatus upon remote termination (for\\nexample, this should be usedif the cluster command is\\n'qsub -sync y' (SGE)"
    drmaa: "[ARGS]        Execute snakemake on a cluster accessed via DRMAA,\\nSnakemake compiles jobs into scripts that are\\nsubmitted to the cluster with the given command, once\\nall input files for a particular job are present. ARGS\\ncan be used to specify options of the underlying\\ncluster system, thereby using the job properties\\ninput, output, params, wildcards, log, threads and\\ndependencies, e.g.: --drmaa ' -pe threaded {threads}'.\\nNote that ARGS must be given in quotes and with a\\nleading whitespace."
    cluster_config: "A JSON or YAML file that defines the wildcards used in\\n'cluster'for specific rules, instead of having them\\nspecified in the Snakefile. For example, for rule\\n'job' you may define: { 'job' : { 'time' : '24:00:00'\\n} } to specify the time for rule 'job'. You can\\nspecify more than one file. The configuration files\\nare merged with later values overriding earlier ones."
    immediate_submit: "Immediately submit all jobs to the cluster instead of\\nwaiting for present input files. This will fail,\\nunless you make the cluster aware of job dependencies,\\ne.g. via: $ snakemake --cluster 'sbatch --dependency\\n{dependencies}. Assuming that your submit script (here\\nsbatch) outputs the generated job id to the first\\nstdout line, {dependencies} will be filled with space\\nseparated job ids this job depends on."
    job_script: "Provide a custom job script for submission to the\\ncluster. The default script resides as 'jobscript.sh'\\nin the installation directory."
    job_name: "Provide a custom name for the jobscript that is\\nsubmitted to the cluster (see --cluster). NAME is\\n\\\"snakejob.{rulename}.{jobid}.sh\\\" per default. The\\nwildcard {jobid} has to be present in the name."
    reason: "Print the reason for each executed rule."
    stats: "Write stats about Snakefile execution in JSON format\\nto the given file."
    no_color: "Do not use a colored output."
    quiet: "Do not output any progress or rule information."
    no_lock: "Do not lock the working directory"
    unlock: "Remove a lock on the working directory."
    cleanup_metadata: "Cleanup the metadata of given files. That means that\\nsnakemake removes any tracked version info, and any\\nmarks that files are incomplete."
    rerun_incomplete: "Re-run all jobs the output of which is recognized as\\nincomplete."
    ignore_incomplete: "Do not check for incomplete output files."
    list_version_changes: "List all output files that have been created with a\\ndifferent version (as determined by the version\\nkeyword)."
    list_code_changes: "List all output files for which the rule body (run or\\nshell) have changed in the Snakefile."
    list_input_changes: "List all output files for which the defined input\\nfiles have changed in the Snakefile (e.g. new input\\nfiles were added in the rule definition or files were\\nrenamed). For listing input file modification in the\\nfilesystem, use --summary."
    list_params_changes: "List all output files for which the defined params\\nhave changed in the Snakefile."
    latency_wait: "Wait given seconds if an output file of a job is not\\npresent after the job finished. This helps if your\\nfilesystem suffers from latency (default 5)."
    wait_for_files: "[FILE [FILE ...]]\\nWait --latency-wait seconds for these files to be\\npresent before executing the workflow. This option is\\nused internally to handle filesystem latency in\\ncluster environments."
    benchmark_repeats: "Repeat a job N times if marked for benchmarking\\n(default 1)."
    no_temp: "Ignore temp() declarations. This is useful when\\nrunning only a part of the workflow, since temp()\\nwould lead to deletion of probably needed files by\\nother parts of the workflow."
    keep_remote: "Keep local copies of remote input files."
    keep_target_files: "Do not adjust the paths of given target files relative\\nto the working directory."
    keep_shadow: "Do not delete the shadow directory on snakemake"
    max_jobs_per_second: "Maximal number of cluster/drmaa jobs per second,\\ndefault is no limit"
    timestamp: "Add a timestamp to all logging output"
    greediness: "Set the greediness of scheduling. This value between 0\\nand 1 determines how careful jobs are selected for\\nexecution. The default value (1.0) provides the best\\nspeed and still acceptable scheduling quality."
    no_hooks: "Do not invoke onstart, onsuccess or onerror hooks\\nafter execution."
    print_compilation: "Print the python representation of the workflow."
    overwrite_shell_cmd: "Provide a shell command that shall be executed instead\\nof those given in the workflow. This is for debugging\\npurposes only."
    verbose: "Print debugging output."
    debug: "Allow to debug rules with e.g. PDB. This flag allows\\nto set breakpoints in run blocks."
    profile: "Profile Snakemake and write the output to FILE. This\\nrequires yappi to be installed."
    mode: "Set execution mode of Snakemake (internal use only)."
    bash_completion: "Output code to register bash completion for snakemake.\\nPut the following in your .bashrc (including the\\naccents): `snakemake --bash-completion` or issue it in\\nan open terminal session."
    use_cond_a: "If defined in the rule, create job specific conda\\nenvironments. If this flag is not set, the conda\\ndirective is ignored."
    wrapper_prefix: "Prefix for URL created from wrapper directive\\n(default: https://bitbucket.org/snakemake/snakemake-\\nwrappers/raw/). Set this to a different URL to use\\nyour fork or a local clone of the repository."
  }
  output {
    File out_stdout = stdout()
    File out_touch = "${in_touch}"
    File out_latency_wait = "${in_latency_wait}"
    File out_profile = "${in_profile}"
  }
}