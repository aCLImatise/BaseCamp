version 1.0

task Snakemake {
  input {
    Boolean? dry_run
    String? profile
    Boolean? cache
    File? snake_file
    Boolean? cores
    String? local_cores
    Boolean? resources
    Boolean? set_threads
    Boolean? default_resources
    Boolean? config
    Array[File] config_files
    Array[String] env_vars
    String? directory
    Boolean? touch
    Boolean? keep_going
    Boolean? force
    Boolean? force_all
    Boolean? force_run
    Array[String] prioritize
    String? batch
    Array[String] until
    Array[String] omit_from
    Boolean? rerun_incomplete
    String? shadow_prefix
    Boolean? report
    String? report_stylesheet
    String? edit_notebook
    String? notebook_listen
    Boolean? lint
    File? export_cwl
    Boolean? list
    Boolean? list_target_rules
    Boolean? dag
    Boolean? rule_graph
    Boolean? file_graph
    Boolean? d_three_dag
    Boolean? summary
    Boolean? detailed_summary
    File? archive
    Array[File] cleanup_metadata
    Boolean? cleanup_shadow
    Boolean? skip_script_cleanup
    Boolean? unlock
    Boolean? list_version_changes
    Boolean? list_code_changes
    Boolean? list_input_changes
    Boolean? list_params_changes
    Boolean? list_untracked
    Boolean? delete_all_output
    Boolean? delete_temp_output
    Boolean? bash_completion
    Boolean? keep_incomplete
    Boolean? reason
    Boolean? gui
    Boolean? print_shell_cmds
    Boolean? debug_dag
    File? stats
    Boolean? no_color
    Boolean? quiet
    Boolean? print_compilation
    Boolean? verbose
    Boolean? force_use_threads
    Boolean? allow_ambiguity
    Boolean? no_lock
    Boolean? ignore_incomplete
    String? latency_wait
    Boolean? wait_for_files
    Boolean? no_temp
    Boolean? keep_remote
    Boolean? keep_target_files
    Array[String] allowed_rules
    Int? max_jobs_per_second
    Int? max_status_checks_per_second
    String? restart_times
    String? attempt
    String? wrapper_prefix
    String? default_remote_provider
    String? default_remote_prefix
    Boolean? no_shared_fs
    String? greediness
    Boolean? no_hooks
    String? overwrite_shell_cmd
    Boolean? debug
    File? runtime_profile
    String? mode
    Boolean? show_failed_logs
    File? log_handler_script
    String? log_service
    String? cluster
    String? cluster_sync
    Boolean? drmaa
    File? cluster_config
    Boolean? immediate_submit
    String? job_script
    String? job_name
    String? cluster_status
    String? drmaa_log_dir
    Boolean? ku_bernet_es
    String? container_image
    Boolean? tib_anna
    String? tib_anna_sfn
    String? pre_command
    Array[String] tib_anna_config
    Boolean? google_life_sciences
    Array[String] google_life_sciences_regions
    String? google_life_sciences_location
    Boolean? google_life_sciences_keep_cache
    Boolean? use_cond_a
    Boolean? list_cond_a_envs
    String? cond_a_prefix
    Boolean? cond_a_cleanup_envs
    Boolean? cond_a_cleanup_pkgs
    Boolean? cond_a_create_envs_only
    String? cond_a_front_end
    Boolean? use_singularity
    String? singularity_prefix
    String? singularity_args
    Boolean? use_env_modules
    String target
  }
  command <<<
    snakemake \
      ~{target} \
      ~{true="--dry-run" false="" dry_run} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{true="--cache" false="" cache} \
      ~{if defined(snake_file) then ("--snakefile " +  '"' + snake_file + '"') else ""} \
      ~{true="--cores" false="" cores} \
      ~{if defined(local_cores) then ("--local-cores " +  '"' + local_cores + '"') else ""} \
      ~{true="--resources" false="" resources} \
      ~{true="--set-threads" false="" set_threads} \
      ~{true="--default-resources" false="" default_resources} \
      ~{true="--config" false="" config} \
      ~{if defined(config_files) then ("--configfiles " +  '"' + config_files + '"') else ""} \
      ~{if defined(env_vars) then ("--envvars " +  '"' + env_vars + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{true="--touch" false="" touch} \
      ~{true="--keep-going" false="" keep_going} \
      ~{true="--force" false="" force} \
      ~{true="--forceall" false="" force_all} \
      ~{true="--forcerun" false="" force_run} \
      ~{if defined(prioritize) then ("--prioritize " +  '"' + prioritize + '"') else ""} \
      ~{if defined(batch) then ("--batch " +  '"' + batch + '"') else ""} \
      ~{if defined(until) then ("--until " +  '"' + until + '"') else ""} \
      ~{if defined(omit_from) then ("--omit-from " +  '"' + omit_from + '"') else ""} \
      ~{true="--rerun-incomplete" false="" rerun_incomplete} \
      ~{if defined(shadow_prefix) then ("--shadow-prefix " +  '"' + shadow_prefix + '"') else ""} \
      ~{true="--report" false="" report} \
      ~{if defined(report_stylesheet) then ("--report-stylesheet " +  '"' + report_stylesheet + '"') else ""} \
      ~{if defined(edit_notebook) then ("--edit-notebook " +  '"' + edit_notebook + '"') else ""} \
      ~{if defined(notebook_listen) then ("--notebook-listen " +  '"' + notebook_listen + '"') else ""} \
      ~{true="--lint" false="" lint} \
      ~{if defined(export_cwl) then ("--export-cwl " +  '"' + export_cwl + '"') else ""} \
      ~{true="--list" false="" list} \
      ~{true="--list-target-rules" false="" list_target_rules} \
      ~{true="--dag" false="" dag} \
      ~{true="--rulegraph" false="" rule_graph} \
      ~{true="--filegraph" false="" file_graph} \
      ~{true="--d3dag" false="" d_three_dag} \
      ~{true="--summary" false="" summary} \
      ~{true="--detailed-summary" false="" detailed_summary} \
      ~{if defined(archive) then ("--archive " +  '"' + archive + '"') else ""} \
      ~{if defined(cleanup_metadata) then ("--cleanup-metadata " +  '"' + cleanup_metadata + '"') else ""} \
      ~{true="--cleanup-shadow" false="" cleanup_shadow} \
      ~{true="--skip-script-cleanup" false="" skip_script_cleanup} \
      ~{true="--unlock" false="" unlock} \
      ~{true="--list-version-changes" false="" list_version_changes} \
      ~{true="--list-code-changes" false="" list_code_changes} \
      ~{true="--list-input-changes" false="" list_input_changes} \
      ~{true="--list-params-changes" false="" list_params_changes} \
      ~{true="--list-untracked" false="" list_untracked} \
      ~{true="--delete-all-output" false="" delete_all_output} \
      ~{true="--delete-temp-output" false="" delete_temp_output} \
      ~{true="--bash-completion" false="" bash_completion} \
      ~{true="--keep-incomplete" false="" keep_incomplete} \
      ~{true="--reason" false="" reason} \
      ~{true="--gui" false="" gui} \
      ~{true="--printshellcmds" false="" print_shell_cmds} \
      ~{true="--debug-dag" false="" debug_dag} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{true="--nocolor" false="" no_color} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--print-compilation" false="" print_compilation} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--force-use-threads" false="" force_use_threads} \
      ~{true="--allow-ambiguity" false="" allow_ambiguity} \
      ~{true="--nolock" false="" no_lock} \
      ~{true="--ignore-incomplete" false="" ignore_incomplete} \
      ~{if defined(latency_wait) then ("--latency-wait " +  '"' + latency_wait + '"') else ""} \
      ~{true="--wait-for-files" false="" wait_for_files} \
      ~{true="--notemp" false="" no_temp} \
      ~{true="--keep-remote" false="" keep_remote} \
      ~{true="--keep-target-files" false="" keep_target_files} \
      ~{if defined(allowed_rules) then ("--allowed-rules " +  '"' + allowed_rules + '"') else ""} \
      ~{if defined(max_jobs_per_second) then ("--max-jobs-per-second " +  '"' + max_jobs_per_second + '"') else ""} \
      ~{if defined(max_status_checks_per_second) then ("--max-status-checks-per-second " +  '"' + max_status_checks_per_second + '"') else ""} \
      ~{if defined(restart_times) then ("--restart-times " +  '"' + restart_times + '"') else ""} \
      ~{if defined(attempt) then ("--attempt " +  '"' + attempt + '"') else ""} \
      ~{if defined(wrapper_prefix) then ("--wrapper-prefix " +  '"' + wrapper_prefix + '"') else ""} \
      ~{if defined(default_remote_provider) then ("--default-remote-provider " +  '"' + default_remote_provider + '"') else ""} \
      ~{if defined(default_remote_prefix) then ("--default-remote-prefix " +  '"' + default_remote_prefix + '"') else ""} \
      ~{true="--no-shared-fs" false="" no_shared_fs} \
      ~{if defined(greediness) then ("--greediness " +  '"' + greediness + '"') else ""} \
      ~{true="--no-hooks" false="" no_hooks} \
      ~{if defined(overwrite_shell_cmd) then ("--overwrite-shellcmd " +  '"' + overwrite_shell_cmd + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{if defined(runtime_profile) then ("--runtime-profile " +  '"' + runtime_profile + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{true="--show-failed-logs" false="" show_failed_logs} \
      ~{if defined(log_handler_script) then ("--log-handler-script " +  '"' + log_handler_script + '"') else ""} \
      ~{if defined(log_service) then ("--log-service " +  '"' + log_service + '"') else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(cluster_sync) then ("--cluster-sync " +  '"' + cluster_sync + '"') else ""} \
      ~{true="--drmaa" false="" drmaa} \
      ~{if defined(cluster_config) then ("--cluster-config " +  '"' + cluster_config + '"') else ""} \
      ~{true="--immediate-submit" false="" immediate_submit} \
      ~{if defined(job_script) then ("--jobscript " +  '"' + job_script + '"') else ""} \
      ~{if defined(job_name) then ("--jobname " +  '"' + job_name + '"') else ""} \
      ~{if defined(cluster_status) then ("--cluster-status " +  '"' + cluster_status + '"') else ""} \
      ~{if defined(drmaa_log_dir) then ("--drmaa-log-dir " +  '"' + drmaa_log_dir + '"') else ""} \
      ~{true="--kubernetes" false="" ku_bernet_es} \
      ~{if defined(container_image) then ("--container-image " +  '"' + container_image + '"') else ""} \
      ~{true="--tibanna" false="" tib_anna} \
      ~{if defined(tib_anna_sfn) then ("--tibanna-sfn " +  '"' + tib_anna_sfn + '"') else ""} \
      ~{if defined(pre_command) then ("--precommand " +  '"' + pre_command + '"') else ""} \
      ~{if defined(tib_anna_config) then ("--tibanna-config " +  '"' + tib_anna_config + '"') else ""} \
      ~{true="--google-lifesciences" false="" google_life_sciences} \
      ~{if defined(google_life_sciences_regions) then ("--google-lifesciences-regions " +  '"' + google_life_sciences_regions + '"') else ""} \
      ~{if defined(google_life_sciences_location) then ("--google-lifesciences-location " +  '"' + google_life_sciences_location + '"') else ""} \
      ~{true="--google-lifesciences-keep-cache" false="" google_life_sciences_keep_cache} \
      ~{true="--use-conda" false="" use_cond_a} \
      ~{true="--list-conda-envs" false="" list_cond_a_envs} \
      ~{if defined(cond_a_prefix) then ("--conda-prefix " +  '"' + cond_a_prefix + '"') else ""} \
      ~{true="--conda-cleanup-envs" false="" cond_a_cleanup_envs} \
      ~{true="--conda-cleanup-pkgs" false="" cond_a_cleanup_pkgs} \
      ~{true="--conda-create-envs-only" false="" cond_a_create_envs_only} \
      ~{if defined(cond_a_front_end) then ("--conda-frontend " +  '"' + cond_a_front_end + '"') else ""} \
      ~{true="--use-singularity" false="" use_singularity} \
      ~{if defined(singularity_prefix) then ("--singularity-prefix " +  '"' + singularity_prefix + '"') else ""} \
      ~{if defined(singularity_args) then ("--singularity-args " +  '"' + singularity_args + '"') else ""} \
      ~{true="--use-envmodules" false="" use_env_modules}
  >>>
  parameter_meta {
    dry_run: "Do not execute anything, and display what would be done. If you have a very large workflow, use --dry-run --quiet to just print a summary of the DAG of jobs. (default: False)"
    profile: "Name of profile to use for configuring Snakemake. Snakemake will search for a corresponding folder in /etc/xdg/snakemake and /home/ubuntu/.config/snakemake. Alternatively, this can be an absolute or relative path. The profile folder has to contain a file 'config.yaml'. This file can be used to set default values for command line options in YAML format. For example, '--cluster qsub' becomes 'cluster: qsub' in the YAML file. Profiles can be obtained from https://github.com/snakemake-profiles. (default: None)"
    cache: "[RULE [RULE ...]] Store output files of given rules in a central cache given by the environment variable $SNAKEMAKE_OUTPUT_CACHE. Likewise, retrieve output files of the given rules from this cache if they have been created before (by anybody writing to the same cache), instead of actually executing the rules. Output files are identified by hashing all steps, parameters and software stack (conda envs or containers) needed to create them. (default: None)"
    snake_file: "The workflow definition in form of a snakefile.Usually, you should not need to specify this. By default, Snakemake will search for 'Snakefile', 'snakefile', 'workflow/Snakefile', 'workflow/snakefile' beneath the current working directory, in this order. Only if you definitely want a different layout, you need to use this parameter. (default: None)"
    cores: "[N], --jobs [N], -j [N] Use at most N CPU cores/jobs in parallel. If N is omitted or 'all', the limit is set to the number of available CPU cores. (default: None)"
    local_cores: "In cluster mode, use at most N cores of the host machine in parallel (default: number of CPU cores of the host). The cores are used to execute local rules. This option is ignored when not in cluster mode. (default: 8)"
    resources: "[NAME=INT [NAME=INT ...]], --res [NAME=INT [NAME=INT ...]] Define additional resources that shall constrain the scheduling analogously to threads (see above). A resource is defined as a name and an integer value. E.g. --resources mem_mb=1000. Rules can use resources by defining the resource keyword, e.g. resources: mem_mb=600. If now two rules require 600 of the resource 'mem_mb' they won't be run in parallel by the scheduler. (default: None)"
    set_threads: "[RULE=THREADS [RULE=THREADS ...]] Overwrite thread usage of rules. This allows to fine- tune workflow parallelization. In particular, this is helpful to target certain cluster nodes by e.g. shifting a rule to use more, or less threads than defined in the workflow. Thereby, THREADS has to be a positive integer, and RULE has to be the name of the rule. (default: None)"
    default_resources: "[NAME=INT [NAME=INT ...]], --default-res [NAME=INT [NAME=INT ...]] Define default values of resources for rules that do not define their own values. In addition to plain integers, python expressions over inputsize are allowed (e.g. '2*input.size_mb').When specifying this without any arguments (--default-resources), it defines 'mem_mb=max(2*input.size_mb, 1000)' 'disk_mb=max(2*input.size_mb, 1000)', i.e., default disk and mem usage is twice the input file size but at least 1GB. (default: None)"
    config: "[KEY=VALUE [KEY=VALUE ...]], -C [KEY=VALUE [KEY=VALUE ...]] Set or overwrite values in the workflow config object. The workflow config object is accessible as variable config inside the workflow. Default values can be set by providing a JSON file (see Documentation). (default: None)"
    config_files: "Specify or overwrite the config file of the workflow (see the docs). Values specified in JSON or YAML format are available in the global config dictionary inside the workflow. Multiple files overwrite each other in the given order. (default: None)"
    env_vars: "Environment variables to pass to cloud jobs. (default: None)"
    directory: "Specify working directory (relative paths in the snakefile will use this as their origin). (default: None)"
    touch: "Touch output files (mark them up to date without really changing them) instead of running their commands. This is used to pretend that the rules were executed, in order to fool future invocations of snakemake. Fails if a file does not yet exist. Note that this will only touch files that would otherwise be recreated by Snakemake (e.g. because their input files are newer). For enforcing a touch, combine this with --force, --forceall, or --forcerun. Note however that you loose the provenance information when the files have been created in realitiy. Hence, this should be used only as a last resort. (default: False)"
    keep_going: "Go on with independent jobs if a job fails. (default: False)"
    force: "Force the execution of the selected target or the first rule regardless of already created output. (default: False)"
    force_all: "Force the execution of the selected (or the first) rule and all rules it is dependent on regardless of already created output. (default: False)"
    force_run: "[TARGET [TARGET ...]], -R [TARGET [TARGET ...]] Force the re-execution or creation of the given rules or files. Use this option if you changed a rule and want to have all its output in your workflow updated. (default: None)"
    prioritize: "Tell the scheduler to assign creation of given targets (and all their dependencies) highest priority. (EXPERIMENTAL) (default: None)"
    batch: "=BATCH/BATCHES Only create the given BATCH of the input files of the given RULE. This can be used to iteratively run parts of very large workflows. Only the execution plan of the relevant part of the workflow has to be calculated, thereby speeding up DAG computation. It is recommended to provide the most suitable rule for batching when documenting a workflow. It should be some aggregating rule that would be executed only once, and has a large number of input files. For example, it can be a rule that aggregates over samples. (default: None)"
    until: "Runs the pipeline until it reaches the specified rules or files. Only runs jobs that are dependencies of the specified rule or files, does not run sibling DAGs. (default: None)"
    omit_from: "Prevent the execution or creation of the given rules or files as well as any rules or files that are downstream of these targets in the DAG. Also runs jobs in sibling DAGs that are independent of the rules or files specified here. (default: None)"
    rerun_incomplete: "Re-run all jobs the output of which is recognized as incomplete. (default: False)"
    shadow_prefix: "Specify a directory in which the 'shadow' directory is created. If not supplied, the value is set to the '.snakemake' directory relative to the working directory. (default: None)"
    report: "[FILE]       Create an HTML report with results and statistics. This can be either a .html file or a .zip file. In the former case, all results are embedded into the .html (this only works for small data). In the latter case, results are stored along with a file report.html in the zip archive. If no filename is given, an embedded report.html is the default. (default: None)"
    report_stylesheet: "Custom stylesheet to use for report. In particular, this can be used for branding the report with e.g. a custom logo, see docs. (default: None)"
    edit_notebook: "Interactively edit the notebook associated with the rule used to generate the given target file. This will start a local jupyter notebook server. Any changes to the notebook should be saved, and the server has to be stopped by closing the notebook and hitting the 'Quit' button on the jupyter dashboard. Afterwards, the updated notebook will be automatically stored in the path defined in the rule. If the notebook is not yet present, this will create an empty draft. (default: None)"
    notebook_listen: ":PORT The IP address and PORT the notebook server used for editing the notebook (--edit-notebook) will listen on. (default: localhost:8888)"
    lint: "[{text,json}]  Perform linting on the given workflow. This will print snakemake specific suggestions to improve code quality (work in progress, more lints to be added in the future). If no argument is provided, plain text output is used. (default: None)"
    export_cwl: "Compile workflow to CWL and store it in given FILE. (default: None)"
    list: "Show available rules in given Snakefile. (default: False)"
    list_target_rules: "Show available target rules in given Snakefile. (default: False)"
    dag: "Do not execute anything and print the directed acyclic graph of jobs in the dot language. Recommended use on Unix systems: snakemake --dag | dot | displayNote print statements in your Snakefile may interfere with visualization. (default: False)"
    rule_graph: "Do not execute anything and print the dependency graph of rules in the dot language. This will be less crowded than above DAG of jobs, but also show less information. Note that each rule is displayed once, hence the displayed graph will be cyclic if a rule appears in several steps of the workflow. Use this if above option leads to a DAG that is too large. Recommended use on Unix systems: snakemake --rulegraph | dot | displayNote print statements in your Snakefile may interfere with visualization. (default: False)"
    file_graph: "Do not execute anything and print the dependency graph of rules with their input and output files in the dot language. This is an intermediate solution between above DAG of jobs and the rule graph. Note that each rule is displayed once, hence the displayed graph will be cyclic if a rule appears in several steps of the workflow. Use this if above option leads to a DAG that is too large. Recommended use on Unix systems: snakemake --filegraph | dot | displayNote print statements in your Snakefile may interfere with visualization. (default: False)"
    d_three_dag: "Print the DAG in D3.js compatible JSON format. (default: False)"
    summary: "Print a summary of all files created by the workflow. The has the following columns: filename, modification time, rule version, status, plan. Thereby rule version contains the versionthe file was created with (see the version keyword of rules), and status denotes whether the file is missing, its input files are newer or if version or implementation of the rule changed since file creation. Finally the last column denotes whether the file will be updated or created during the next workflow execution. (default: False)"
    detailed_summary: "Print a summary of all files created by the workflow. The has the following columns: filename, modification time, rule version, input file(s), shell command, status, plan. Thereby rule version contains the version the file was created with (see the version keyword of rules), and status denotes whether the file is missing, its input files are newer or if version or implementation of the rule changed since file creation. The input file and shell command columns are self explanatory. Finally the last column denotes whether the file will be updated or created during the next workflow execution. (default: False)"
    archive: "Archive the workflow into the given tar archive FILE. The archive will be created such that the workflow can be re-executed on a vanilla system. The function needs conda and git to be installed. It will archive every file that is under git version control. Note that it is best practice to have the Snakefile, config files, and scripts under version control. Hence, they will be included in the archive. Further, it will add input files that are not generated by by the workflow itself and conda environments. Note that symlinks are dereferenced. Supported formats are .tar, .tar.gz, .tar.bz2 and .tar.xz. (default: None)"
    cleanup_metadata: "Cleanup the metadata of given files. That means that snakemake removes any tracked version info, and any marks that files are incomplete. (default: None)"
    cleanup_shadow: "Cleanup old shadow directories which have not been deleted due to failures or power loss. (default: False)"
    skip_script_cleanup: "Don't delete wrapper scripts used for execution (default: False)"
    unlock: "Remove a lock on the working directory. (default: False)"
    list_version_changes: "List all output files that have been created with a different version (as determined by the version keyword). (default: False)"
    list_code_changes: "List all output files for which the rule body (run or shell) have changed in the Snakefile. (default: False)"
    list_input_changes: "List all output files for which the defined input files have changed in the Snakefile (e.g. new input files were added in the rule definition or files were renamed). For listing input file modification in the filesystem, use --summary. (default: False)"
    list_params_changes: "List all output files for which the defined params have changed in the Snakefile. (default: False)"
    list_untracked: "List all files in the working directory that are not used in the workflow. This can be used e.g. for identifying leftover files. Hidden files and directories are ignored. (default: False)"
    delete_all_output: "Remove all files generated by the workflow. Use together with --dry-run to list files without actually deleting anything. Note that this will not recurse into subworkflows. Write-protected files are not removed. Nevertheless, use with care! (default: False)"
    delete_temp_output: "Remove all temporary files generated by the workflow. Use together with --dry-run to list files without actually deleting anything. Note that this will not recurse into subworkflows. (default: False)"
    bash_completion: "Output code to register bash completion for snakemake. Put the following in your .bashrc (including the accents): `snakemake --bash-completion` or issue it in an open terminal session. (default: False)"
    keep_incomplete: "Do not remove incomplete output files by failed jobs. (default: False)"
    reason: "Print the reason for each executed rule. (default: False)"
    gui: "[PORT]          Serve an HTML based user interface to the given network and port e.g. 168.129.10.15:8000. By default Snakemake is only available in the local network (default port: 8000). To make Snakemake listen to all ip addresses add the special host address 0.0.0.0 to the url (0.0.0.0:8000). This is important if Snakemake is used in a virtualised environment like Docker. If possible, a browser window is opened. (default: None)"
    print_shell_cmds: "Print out the shell commands that will be executed. (default: False)"
    debug_dag: "Print candidate and selected jobs (including their wildcards) while inferring DAG. This can help to debug unexpected DAG topology or errors. (default: False)"
    stats: "Write stats about Snakefile execution in JSON format to the given file. (default: None)"
    no_color: "Do not use a colored output. (default: False)"
    quiet: "Do not output any progress or rule information. (default: False)"
    print_compilation: "Print the python representation of the workflow. (default: False)"
    verbose: "Print debugging output. (default: False)"
    force_use_threads: "Force threads rather than processes. Helpful if shared memory (/dev/shm) is full or unavailable. (default: False)"
    allow_ambiguity: "Don't check for ambiguous rules and simply use the first if several can produce the same file. This allows the user to prioritize rules by their order in the snakefile. (default: False)"
    no_lock: "Do not lock the working directory (default: False)"
    ignore_incomplete: "Do not check for incomplete output files. (default: False)"
    latency_wait: "Wait given seconds if an output file of a job is not present after the job finished. This helps if your filesystem suffers from latency (default 5). (default: 5)"
    wait_for_files: "[FILE [FILE ...]] Wait --latency-wait seconds for these files to be present before executing the workflow. This option is used internally to handle filesystem latency in cluster environments. (default: None)"
    no_temp: "Ignore temp() declarations. This is useful when running only a part of the workflow, since temp() would lead to deletion of probably needed files by other parts of the workflow. (default: False)"
    keep_remote: "Keep local copies of remote input files. (default: False)"
    keep_target_files: "Do not adjust the paths of given target files relative to the working directory. (default: False)"
    allowed_rules: "Only consider given rules. If omitted, all rules in Snakefile are used. Note that this is intended primarily for internal use and may lead to unexpected results otherwise. (default: None)"
    max_jobs_per_second: "Maximal number of cluster/drmaa jobs per second, default is 10, fractions allowed. (default: 10)"
    max_status_checks_per_second: "Maximal number of job status checks per second, default is 10, fractions allowed. (default: 10)"
    restart_times: "Number of times to restart failing jobs (defaults to 0). (default: 0)"
    attempt: "Internal use only: define the initial value of the attempt parameter (default: 1). (default: 1)"
    wrapper_prefix: "Prefix for URL created from wrapper directive (default: https://github.com/snakemake/snakemake- wrappers/raw/). Set this to a different URL to use your fork or a local clone of the repository, e.g., use a git URL like 'git+file://path/to/your/local/clone@'. (default: https://github.com/snakemake/snakemake-wrappers/raw/)"
    default_remote_provider: "Specify default remote provider to be used for all input and output files that don't yet specify one. (default: None)"
    default_remote_prefix: "Specify prefix for default remote provider. E.g. a bucket name. (default: )"
    no_shared_fs: "Do not assume that jobs share a common file system. When this flag is activated, Snakemake will assume that the filesystem on a cluster node is not shared with other nodes. For example, this will lead to downloading remote files on each cluster node separately. Further, it won't take special measures to deal with filesystem latency issues. This option will in most cases only make sense in combination with --default-remote-provider. Further, when using --cluster you will have to also provide --cluster- status. Only activate this if you know what you are doing. (default: False)"
    greediness: "Set the greediness of scheduling. This value between 0 and 1 determines how careful jobs are selected for execution. The default value (1.0) provides the best speed and still acceptable scheduling quality. (default: None)"
    no_hooks: "Do not invoke onstart, onsuccess or onerror hooks after execution. (default: False)"
    overwrite_shell_cmd: "Provide a shell command that shall be executed instead of those given in the workflow. This is for debugging purposes only. (default: None)"
    debug: "Allow to debug rules with e.g. PDB. This flag allows to set breakpoints in run blocks. (default: False)"
    runtime_profile: "Profile Snakemake and write the output to FILE. This requires yappi to be installed. (default: None)"
    mode: "Set execution mode of Snakemake (internal use only). (default: 0)"
    show_failed_logs: "Automatically display logs of failed jobs. (default: False)"
    log_handler_script: "Provide a custom script containing a function 'def log_handler(msg):'. Snakemake will call this function for every logging output (given as a dictionary msg)allowing to e.g. send notifications in the form of e.g. slack messages or emails. (default: None)"
    log_service: "Set a specific messaging service for logging output.Snakemake will notify the service on errors and completed execution.Currently only slack is supported. (default: None)"
    cluster: "Execute snakemake rules with the given submit command, e.g. qsub. Snakemake compiles jobs into scripts that are submitted to the cluster with the given command, once all input files for a particular job are present. The submit command can be decorated to make it aware of certain job properties (name, rulename, input, output, params, wildcards, log, threads and dependencies (see the argument below)), e.g.: $ snakemake --cluster 'qsub -pe threaded {threads}'. (default: None)"
    cluster_sync: "cluster submission command will block, returning the remote exitstatus upon remote termination (for example, this should be usedif the cluster command is 'qsub -sync y' (SGE) (default: None)"
    drmaa: "[ARGS]        Execute snakemake on a cluster accessed via DRMAA, Snakemake compiles jobs into scripts that are submitted to the cluster with the given command, once all input files for a particular job are present. ARGS can be used to specify options of the underlying cluster system, thereby using the job properties name, rulename, input, output, params, wildcards, log, threads and dependencies, e.g.: --drmaa ' -pe threaded {threads}'. Note that ARGS must be given in quotes and with a leading whitespace. (default: None)"
    cluster_config: "A JSON or YAML file that defines the wildcards used in 'cluster'for specific rules, instead of having them specified in the Snakefile. For example, for rule 'job' you may define: { 'job' : { 'time' : '24:00:00' } } to specify the time for rule 'job'. You can specify more than one file. The configuration files are merged with later values overriding earlier ones. This option is deprecated in favor of using --profile, see docs. (default: [])"
    immediate_submit: "Immediately submit all jobs to the cluster instead of waiting for present input files. This will fail, unless you make the cluster aware of job dependencies, e.g. via: $ snakemake --cluster 'sbatch --dependency {dependencies}. Assuming that your submit script (here sbatch) outputs the generated job id to the first stdout line, {dependencies} will be filled with space separated job ids this job depends on. (default: False)"
    job_script: "Provide a custom job script for submission to the cluster. The default script resides as 'jobscript.sh' in the installation directory. (default: None)"
    job_name: "Provide a custom name for the jobscript that is submitted to the cluster (see --cluster). NAME is \"snakejob.{name}.{jobid}.sh\" per default. The wildcard {jobid} has to be present in the name. (default: snakejob.{name}.{jobid}.sh)"
    cluster_status: "Status command for cluster execution. This is only considered in combination with the --cluster flag. If provided, Snakemake will use the status command to determine if a job has finished successfully or failed. For this it is necessary that the submit command provided to --cluster returns the cluster job id. Then, the status command will be invoked with the job id. Snakemake expects it to return 'success' if the job was successfull, 'failed' if the job failed and 'running' if the job still runs. (default: None)"
    drmaa_log_dir: "Specify a directory in which stdout and stderr files of DRMAA jobs will be written. The value may be given as a relative path, in which case Snakemake will use the current invocation directory as the origin. If given, this will override any given '-o' and/or '-e' native specification. If not given, all DRMAA stdout and stderr files are written to the current working directory. (default: None)"
    ku_bernet_es: "[NAMESPACE] Execute workflow in a kubernetes cluster (in the cloud). NAMESPACE is the namespace you want to use for your job (if nothing specified: 'default'). Usually, this requires --default-remote-provider and --default- remote-prefix to be set to a S3 or GS bucket where your . data shall be stored. It is further advisable to activate conda integration via --use-conda. (default: None)"
    container_image: "Docker image to use, e.g., when submitting jobs to kubernetes Defaults to 'https://hub.docker.com/r/snakemake/snakemake', tagged with the same version as the currently running Snakemake instance. Note that overwriting this value is up to your responsibility. Any used image has to contain a working snakemake installation that is compatible with (or ideally the same as) the currently running version. (default: None)"
    tib_anna: "Execute workflow on AWS cloud using Tibanna. This requires --default-remote-prefix to be set to S3 bucket name and prefix (e.g. 'bucketname/subdirectory') where input is already stored and output will be sent to. Using --tibanna implies --default-resources is set as default. Optionally, use --precommand to specify any preparation command to run before snakemake command on the cloud (inside snakemake container on Tibanna VM). Also, --use-conda, --use-singularity, --config, --configfile are supported and will be carried over. (default: False)"
    tib_anna_sfn: "Name of Tibanna Unicorn step function (e.g. tibanna_unicorn_monty).This works as serverless scheduler/resource allocator and must be deployed first using tibanna cli. (e.g. tibanna deploy_unicorn --usergroup=monty --buckets=bucketname) (default: None)"
    pre_command: "Any command to execute before snakemake command on AWS cloud such as wget, git clone, unzip, etc. This is used with --tibanna.Do not include input/output download/upload commands - file transfer between S3 bucket and the run environment (container) is automatically handled by Tibanna. (default: None)"
    tib_anna_config: "Additional tibanan config e.g. --tibanna-config spot_instance=true subnet=<subnet_id> security group=<security_group_id> (default: None)"
    google_life_sciences: "Execute workflow on Google Cloud cloud using the Google Life. Science API. This requires default application credentials (json) to be created and export to the environment to use Google Cloud Storage, Compute Engine, and Life Sciences. The credential file should be exported as GOOGLE_APPLICATION_CREDENTIALS for snakemake to discover. Also, --use-conda, --use- singularity, --config, --configfile are supported and will be carried over. (default: False)"
    google_life_sciences_regions: "Specify one or more valid instance regions (defaults to US) (default: ['us-east1', 'us-west1', 'us- central1'])"
    google_life_sciences_location: "The Life Sciences API service used to schedule the jobs. E.g., us-centra1 (Iowa) and europe-west2 (London) Watch the terminal output to see all options found to be available. If not specified, defaults to the first found with a matching prefix from regions specified with --google-lifesciences-regions. (default: None)"
    google_life_sciences_keep_cache: "Cache workflows in your Google Cloud Storage Bucket specified by --default-remote-prefix/{source}/{cache}. Each workflow working directory is compressed to a .tar.gz, named by the hash of the contents, and kept in Google Cloud Storage. By default, the caches are deleted at the shutdown step of the workflow. (default: False)"
    use_cond_a: "If defined in the rule, run job in a conda environment. If this flag is not set, the conda directive is ignored. (default: False)"
    list_cond_a_envs: "List all conda environments and their location on disk. (default: False)"
    cond_a_prefix: "Specify a directory in which the 'conda' and 'conda- archive' directories are created. These are used to store conda environments and their archives, respectively. If not supplied, the value is set to the '.snakemake' directory relative to the invocation directory. If supplied, the `--use-conda` flag must also be set. The value may be given as a relative path, which will be extrapolated to the invocation directory, or as an absolute path. (default: None)"
    cond_a_cleanup_envs: "Cleanup unused conda environments. (default: False)"
    cond_a_cleanup_pkgs: "[{tarballs,cache}] Cleanup conda packages after creating environments. In case of 'tarballs' mode, will clean up all downloaded package tarballs. In case of 'cache' mode, will additionally clean up unused package caches. If mode is omitted, will default to only cleaning up the tarballs. (default: None)"
    cond_a_create_envs_only: "If specified, only creates the job-specific conda environments then exits. The `--use-conda` flag must also be set. (default: False)"
    cond_a_front_end: "Choose the conda frontend for installing environments. Caution: mamba is much faster, but still in beta test. (default: conda)"
    use_singularity: "If defined in the rule, run job within a singularity container. If this flag is not set, the singularity directive is ignored. (default: False)"
    singularity_prefix: "Specify a directory in which singularity images will be stored.If not supplied, the value is set to the '.snakemake' directory relative to the invocation directory. If supplied, the `--use-singularity` flag must also be set. The value may be given as a relative path, which will be extrapolated to the invocation directory, or as an absolute path. (default: None)"
    singularity_args: "Pass additional args to singularity. (default: )"
    use_env_modules: "If defined in the rule, run job within the given environment modules, loaded in the given order. This can be combined with --use-conda and --use- singularity, which will then be only used as a fallback for rules which don't define environment modules. (default: False)"
    target: "Targets to build. May be rules or files. (default: None)"
  }
}