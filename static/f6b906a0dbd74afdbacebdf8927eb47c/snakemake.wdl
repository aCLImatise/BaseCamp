version 1.0

task Snakemake {
  input {
    Boolean? dry_run
    File? profile
    Boolean? cache
    File? snake_file
    Boolean? cores
    Int? local_cores
    Boolean? resources
    Boolean? set_threads
    Boolean? default_resources
    Boolean? config
    Array[File] config_files
    Array[String] env_vars
    Directory? directory
    Boolean? touch
    Boolean? keep_going
    Boolean? force
    Boolean? force_all
    Boolean? force_run
    Array[String] prioritize
    Int? batch
    Array[String] until
    Array[String] omit_from
    Boolean? rerun_incomplete
    Directory? shadow_prefix
    Boolean? report
    File? report_stylesheet
    File? edit_notebook
    Int? notebook_listen
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
    File? latency_wait
    Boolean? wait_for_files
    Boolean? no_temp
    Boolean? keep_remote
    Boolean? keep_target_files
    Array[String] allowed_rules
    Int? max_jobs_per_second
    Int? max_status_checks_per_second
    Int? restart_times
    Int? attempt
    File? wrapper_prefix
    String? default_remote_provider
    String? default_remote_prefix
    Boolean? no_shared_fs
    Float? greediness
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
    Directory? job_script
    String? job_name
    String? cluster_status
    File? drmaa_log_dir
    Boolean? ku_bernet_es
    String? container_image
    Boolean? tib_anna
    String? tib_anna_sfn
    File? pre_command
    Array[String] tib_anna_config
    Boolean? google_life_sciences
    Array[String] google_life_sciences_regions
    Int? google_life_sciences_location
    Boolean? google_life_sciences_keep_cache
    Boolean? use_cond_a
    Boolean? list_cond_a_envs
    File? cond_a_prefix
    Boolean? cond_a_cleanup_envs
    Boolean? cond_a_cleanup_pkgs
    Boolean? cond_a_create_envs_only
    String? cond_a_front_end
    Boolean? use_singularity
    File? singularity_prefix
    String? singularity_args
    Boolean? use_env_modules
    String target
  }
  command <<<
    snakemake \
      ~{target} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if (cache) then "--cache" else ""} \
      ~{if defined(snake_file) then ("--snakefile " +  '"' + snake_file + '"') else ""} \
      ~{if (cores) then "--cores" else ""} \
      ~{if defined(local_cores) then ("--local-cores " +  '"' + local_cores + '"') else ""} \
      ~{if (resources) then "--resources" else ""} \
      ~{if (set_threads) then "--set-threads" else ""} \
      ~{if (default_resources) then "--default-resources" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if defined(config_files) then ("--configfiles " +  '"' + config_files + '"') else ""} \
      ~{if defined(env_vars) then ("--envvars " +  '"' + env_vars + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if (touch) then "--touch" else ""} \
      ~{if (keep_going) then "--keep-going" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (force_all) then "--forceall" else ""} \
      ~{if (force_run) then "--forcerun" else ""} \
      ~{if defined(prioritize) then ("--prioritize " +  '"' + prioritize + '"') else ""} \
      ~{if defined(batch) then ("--batch " +  '"' + batch + '"') else ""} \
      ~{if defined(until) then ("--until " +  '"' + until + '"') else ""} \
      ~{if defined(omit_from) then ("--omit-from " +  '"' + omit_from + '"') else ""} \
      ~{if (rerun_incomplete) then "--rerun-incomplete" else ""} \
      ~{if defined(shadow_prefix) then ("--shadow-prefix " +  '"' + shadow_prefix + '"') else ""} \
      ~{if (report) then "--report" else ""} \
      ~{if defined(report_stylesheet) then ("--report-stylesheet " +  '"' + report_stylesheet + '"') else ""} \
      ~{if defined(edit_notebook) then ("--edit-notebook " +  '"' + edit_notebook + '"') else ""} \
      ~{if defined(notebook_listen) then ("--notebook-listen " +  '"' + notebook_listen + '"') else ""} \
      ~{if (lint) then "--lint" else ""} \
      ~{if defined(export_cwl) then ("--export-cwl " +  '"' + export_cwl + '"') else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (list_target_rules) then "--list-target-rules" else ""} \
      ~{if (dag) then "--dag" else ""} \
      ~{if (rule_graph) then "--rulegraph" else ""} \
      ~{if (file_graph) then "--filegraph" else ""} \
      ~{if (d_three_dag) then "--d3dag" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (detailed_summary) then "--detailed-summary" else ""} \
      ~{if defined(archive) then ("--archive " +  '"' + archive + '"') else ""} \
      ~{if defined(cleanup_metadata) then ("--cleanup-metadata " +  '"' + cleanup_metadata + '"') else ""} \
      ~{if (cleanup_shadow) then "--cleanup-shadow" else ""} \
      ~{if (skip_script_cleanup) then "--skip-script-cleanup" else ""} \
      ~{if (unlock) then "--unlock" else ""} \
      ~{if (list_version_changes) then "--list-version-changes" else ""} \
      ~{if (list_code_changes) then "--list-code-changes" else ""} \
      ~{if (list_input_changes) then "--list-input-changes" else ""} \
      ~{if (list_params_changes) then "--list-params-changes" else ""} \
      ~{if (list_untracked) then "--list-untracked" else ""} \
      ~{if (delete_all_output) then "--delete-all-output" else ""} \
      ~{if (delete_temp_output) then "--delete-temp-output" else ""} \
      ~{if (bash_completion) then "--bash-completion" else ""} \
      ~{if (keep_incomplete) then "--keep-incomplete" else ""} \
      ~{if (reason) then "--reason" else ""} \
      ~{if (gui) then "--gui" else ""} \
      ~{if (print_shell_cmds) then "--printshellcmds" else ""} \
      ~{if (debug_dag) then "--debug-dag" else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{if (no_color) then "--nocolor" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (print_compilation) then "--print-compilation" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force_use_threads) then "--force-use-threads" else ""} \
      ~{if (allow_ambiguity) then "--allow-ambiguity" else ""} \
      ~{if (no_lock) then "--nolock" else ""} \
      ~{if (ignore_incomplete) then "--ignore-incomplete" else ""} \
      ~{if defined(latency_wait) then ("--latency-wait " +  '"' + latency_wait + '"') else ""} \
      ~{if (wait_for_files) then "--wait-for-files" else ""} \
      ~{if (no_temp) then "--notemp" else ""} \
      ~{if (keep_remote) then "--keep-remote" else ""} \
      ~{if (keep_target_files) then "--keep-target-files" else ""} \
      ~{if defined(allowed_rules) then ("--allowed-rules " +  '"' + allowed_rules + '"') else ""} \
      ~{if defined(max_jobs_per_second) then ("--max-jobs-per-second " +  '"' + max_jobs_per_second + '"') else ""} \
      ~{if defined(max_status_checks_per_second) then ("--max-status-checks-per-second " +  '"' + max_status_checks_per_second + '"') else ""} \
      ~{if defined(restart_times) then ("--restart-times " +  '"' + restart_times + '"') else ""} \
      ~{if defined(attempt) then ("--attempt " +  '"' + attempt + '"') else ""} \
      ~{if defined(wrapper_prefix) then ("--wrapper-prefix " +  '"' + wrapper_prefix + '"') else ""} \
      ~{if defined(default_remote_provider) then ("--default-remote-provider " +  '"' + default_remote_provider + '"') else ""} \
      ~{if defined(default_remote_prefix) then ("--default-remote-prefix " +  '"' + default_remote_prefix + '"') else ""} \
      ~{if (no_shared_fs) then "--no-shared-fs" else ""} \
      ~{if defined(greediness) then ("--greediness " +  '"' + greediness + '"') else ""} \
      ~{if (no_hooks) then "--no-hooks" else ""} \
      ~{if defined(overwrite_shell_cmd) then ("--overwrite-shellcmd " +  '"' + overwrite_shell_cmd + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(runtime_profile) then ("--runtime-profile " +  '"' + runtime_profile + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (show_failed_logs) then "--show-failed-logs" else ""} \
      ~{if defined(log_handler_script) then ("--log-handler-script " +  '"' + log_handler_script + '"') else ""} \
      ~{if defined(log_service) then ("--log-service " +  '"' + log_service + '"') else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(cluster_sync) then ("--cluster-sync " +  '"' + cluster_sync + '"') else ""} \
      ~{if (drmaa) then "--drmaa" else ""} \
      ~{if defined(cluster_config) then ("--cluster-config " +  '"' + cluster_config + '"') else ""} \
      ~{if (immediate_submit) then "--immediate-submit" else ""} \
      ~{if defined(job_script) then ("--jobscript " +  '"' + job_script + '"') else ""} \
      ~{if defined(job_name) then ("--jobname " +  '"' + job_name + '"') else ""} \
      ~{if defined(cluster_status) then ("--cluster-status " +  '"' + cluster_status + '"') else ""} \
      ~{if defined(drmaa_log_dir) then ("--drmaa-log-dir " +  '"' + drmaa_log_dir + '"') else ""} \
      ~{if (ku_bernet_es) then "--kubernetes" else ""} \
      ~{if defined(container_image) then ("--container-image " +  '"' + container_image + '"') else ""} \
      ~{if (tib_anna) then "--tibanna" else ""} \
      ~{if defined(tib_anna_sfn) then ("--tibanna-sfn " +  '"' + tib_anna_sfn + '"') else ""} \
      ~{if defined(pre_command) then ("--precommand " +  '"' + pre_command + '"') else ""} \
      ~{if defined(tib_anna_config) then ("--tibanna-config " +  '"' + tib_anna_config + '"') else ""} \
      ~{if (google_life_sciences) then "--google-lifesciences" else ""} \
      ~{if defined(google_life_sciences_regions) then ("--google-lifesciences-regions " +  '"' + google_life_sciences_regions + '"') else ""} \
      ~{if defined(google_life_sciences_location) then ("--google-lifesciences-location " +  '"' + google_life_sciences_location + '"') else ""} \
      ~{if (google_life_sciences_keep_cache) then "--google-lifesciences-keep-cache" else ""} \
      ~{if (use_cond_a) then "--use-conda" else ""} \
      ~{if (list_cond_a_envs) then "--list-conda-envs" else ""} \
      ~{if defined(cond_a_prefix) then ("--conda-prefix " +  '"' + cond_a_prefix + '"') else ""} \
      ~{if (cond_a_cleanup_envs) then "--conda-cleanup-envs" else ""} \
      ~{if (cond_a_cleanup_pkgs) then "--conda-cleanup-pkgs" else ""} \
      ~{if (cond_a_create_envs_only) then "--conda-create-envs-only" else ""} \
      ~{if defined(cond_a_front_end) then ("--conda-frontend " +  '"' + cond_a_front_end + '"') else ""} \
      ~{if (use_singularity) then "--use-singularity" else ""} \
      ~{if defined(singularity_prefix) then ("--singularity-prefix " +  '"' + singularity_prefix + '"') else ""} \
      ~{if defined(singularity_args) then ("--singularity-args " +  '"' + singularity_args + '"') else ""} \
      ~{if (use_env_modules) then "--use-envmodules" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dry_run: "Do not execute anything, and display what would be\\ndone. If you have a very large workflow, use --dry-run\\n--quiet to just print a summary of the DAG of jobs.\\n(default: False)"
    profile: "Name of profile to use for configuring Snakemake.\\nSnakemake will search for a corresponding folder in\\n/etc/xdg/snakemake and /root/.config/snakemake.\\nAlternatively, this can be an absolute or relative\\npath. The profile folder has to contain a file\\n'config.yaml'. This file can be used to set default\\nvalues for command line options in YAML format. For\\nexample, '--cluster qsub' becomes 'cluster: qsub' in\\nthe YAML file. Profiles can be obtained from\\nhttps://github.com/snakemake-profiles. (default: None)"
    cache: "[RULE [RULE ...]]\\nStore output files of given rules in a central cache\\ngiven by the environment variable\\n$SNAKEMAKE_OUTPUT_CACHE. Likewise, retrieve output\\nfiles of the given rules from this cache if they have\\nbeen created before (by anybody writing to the same\\ncache), instead of actually executing the rules.\\nOutput files are identified by hashing all steps,\\nparameters and software stack (conda envs or\\ncontainers) needed to create them. (default: None)"
    snake_file: "The workflow definition in form of a\\nsnakefile.Usually, you should not need to specify\\nthis. By default, Snakemake will search for\\n'Snakefile', 'snakefile', 'workflow/Snakefile',\\n'workflow/snakefile' beneath the current working\\ndirectory, in this order. Only if you definitely want\\na different layout, you need to use this parameter.\\n(default: None)"
    cores: "[N], --jobs [N], -j [N]\\nUse at most N CPU cores/jobs in parallel. If N is\\nomitted or 'all', the limit is set to the number of\\navailable CPU cores. (default: None)"
    local_cores: "In cluster mode, use at most N cores of the host\\nmachine in parallel (default: number of CPU cores of\\nthe host). The cores are used to execute local rules.\\nThis option is ignored when not in cluster mode.\\n(default: 8)"
    resources: "[NAME=INT [NAME=INT ...]], --res [NAME=INT [NAME=INT ...]]\\nDefine additional resources that shall constrain the\\nscheduling analogously to threads (see above). A\\nresource is defined as a name and an integer value.\\nE.g. --resources mem_mb=1000. Rules can use resources\\nby defining the resource keyword, e.g. resources:\\nmem_mb=600. If now two rules require 600 of the\\nresource 'mem_mb' they won't be run in parallel by the\\nscheduler. (default: None)"
    set_threads: "[RULE=THREADS [RULE=THREADS ...]]\\nOverwrite thread usage of rules. This allows to fine-\\ntune workflow parallelization. In particular, this is\\nhelpful to target certain cluster nodes by e.g.\\nshifting a rule to use more, or less threads than\\ndefined in the workflow. Thereby, THREADS has to be a\\npositive integer, and RULE has to be the name of the\\nrule. (default: None)"
    default_resources: "[NAME=INT [NAME=INT ...]], --default-res [NAME=INT [NAME=INT ...]]\\nDefine default values of resources for rules that do\\nnot define their own values. In addition to plain\\nintegers, python expressions over inputsize are\\nallowed (e.g. '2*input.size_mb').When specifying this\\nwithout any arguments (--default-resources), it\\ndefines 'mem_mb=max(2*input.size_mb, 1000)'\\n'disk_mb=max(2*input.size_mb, 1000)', i.e., default\\ndisk and mem usage is twice the input file size but at\\nleast 1GB. (default: None)"
    config: "[KEY=VALUE [KEY=VALUE ...]], -C [KEY=VALUE [KEY=VALUE ...]]\\nSet or overwrite values in the workflow config object.\\nThe workflow config object is accessible as variable\\nconfig inside the workflow. Default values can be set\\nby providing a JSON file (see Documentation).\\n(default: None)"
    config_files: "Specify or overwrite the config file of the workflow\\n(see the docs). Values specified in JSON or YAML\\nformat are available in the global config dictionary\\ninside the workflow. Multiple files overwrite each\\nother in the given order. (default: None)"
    env_vars: "Environment variables to pass to cloud jobs. (default:\\nNone)"
    directory: "Specify working directory (relative paths in the\\nsnakefile will use this as their origin). (default:\\nNone)"
    touch: "Touch output files (mark them up to date without\\nreally changing them) instead of running their\\ncommands. This is used to pretend that the rules were\\nexecuted, in order to fool future invocations of\\nsnakemake. Fails if a file does not yet exist. Note\\nthat this will only touch files that would otherwise\\nbe recreated by Snakemake (e.g. because their input\\nfiles are newer). For enforcing a touch, combine this\\nwith --force, --forceall, or --forcerun. Note however\\nthat you loose the provenance information when the\\nfiles have been created in realitiy. Hence, this\\nshould be used only as a last resort. (default: False)"
    keep_going: "Go on with independent jobs if a job fails. (default:\\nFalse)"
    force: "Force the execution of the selected target or the\\nfirst rule regardless of already created output.\\n(default: False)"
    force_all: "Force the execution of the selected (or the first)\\nrule and all rules it is dependent on regardless of\\nalready created output. (default: False)"
    force_run: "[TARGET [TARGET ...]], -R [TARGET [TARGET ...]]\\nForce the re-execution or creation of the given rules\\nor files. Use this option if you changed a rule and\\nwant to have all its output in your workflow updated.\\n(default: None)"
    prioritize: "Tell the scheduler to assign creation of given targets\\n(and all their dependencies) highest priority.\\n(EXPERIMENTAL) (default: None)"
    batch: "=BATCH/BATCHES\\nOnly create the given BATCH of the input files of the\\ngiven RULE. This can be used to iteratively run parts\\nof very large workflows. Only the execution plan of\\nthe relevant part of the workflow has to be\\ncalculated, thereby speeding up DAG computation. It is\\nrecommended to provide the most suitable rule for\\nbatching when documenting a workflow. It should be\\nsome aggregating rule that would be executed only\\nonce, and has a large number of input files. For\\nexample, it can be a rule that aggregates over\\nsamples. (default: None)"
    until: "Runs the pipeline until it reaches the specified rules\\nor files. Only runs jobs that are dependencies of the\\nspecified rule or files, does not run sibling DAGs.\\n(default: None)"
    omit_from: "Prevent the execution or creation of the given rules\\nor files as well as any rules or files that are\\ndownstream of these targets in the DAG. Also runs jobs\\nin sibling DAGs that are independent of the rules or\\nfiles specified here. (default: None)"
    rerun_incomplete: "Re-run all jobs the output of which is recognized as\\nincomplete. (default: False)"
    shadow_prefix: "Specify a directory in which the 'shadow' directory is\\ncreated. If not supplied, the value is set to the\\n'.snakemake' directory relative to the working\\ndirectory. (default: None)"
    report: "[FILE]       Create an HTML report with results and statistics.\\nThis can be either a .html file or a .zip file. In the\\nformer case, all results are embedded into the .html\\n(this only works for small data). In the latter case,\\nresults are stored along with a file report.html in\\nthe zip archive. If no filename is given, an embedded\\nreport.html is the default. (default: None)"
    report_stylesheet: "Custom stylesheet to use for report. In particular,\\nthis can be used for branding the report with e.g. a\\ncustom logo, see docs. (default: None)"
    edit_notebook: "Interactively edit the notebook associated with the\\nrule used to generate the given target file. This will\\nstart a local jupyter notebook server. Any changes to\\nthe notebook should be saved, and the server has to be\\nstopped by closing the notebook and hitting the 'Quit'\\nbutton on the jupyter dashboard. Afterwards, the\\nupdated notebook will be automatically stored in the\\npath defined in the rule. If the notebook is not yet\\npresent, this will create an empty draft. (default:\\nNone)"
    notebook_listen: ":PORT\\nThe IP address and PORT the notebook server used for\\nediting the notebook (--edit-notebook) will listen on.\\n(default: localhost:8888)"
    lint: "[{text,json}]  Perform linting on the given workflow. This will print\\nsnakemake specific suggestions to improve code quality\\n(work in progress, more lints to be added in the\\nfuture). If no argument is provided, plain text output\\nis used. (default: None)"
    export_cwl: "Compile workflow to CWL and store it in given FILE.\\n(default: None)"
    list: "Show available rules in given Snakefile. (default:\\nFalse)"
    list_target_rules: "Show available target rules in given Snakefile.\\n(default: False)"
    dag: "Do not execute anything and print the directed acyclic\\ngraph of jobs in the dot language. Recommended use on\\nUnix systems: snakemake --dag | dot | displayNote\\nprint statements in your Snakefile may interfere with\\nvisualization. (default: False)"
    rule_graph: "Do not execute anything and print the dependency graph\\nof rules in the dot language. This will be less\\ncrowded than above DAG of jobs, but also show less\\ninformation. Note that each rule is displayed once,\\nhence the displayed graph will be cyclic if a rule\\nappears in several steps of the workflow. Use this if\\nabove option leads to a DAG that is too large.\\nRecommended use on Unix systems: snakemake --rulegraph\\n| dot | displayNote print statements in your Snakefile\\nmay interfere with visualization. (default: False)"
    file_graph: "Do not execute anything and print the dependency graph\\nof rules with their input and output files in the dot\\nlanguage. This is an intermediate solution between\\nabove DAG of jobs and the rule graph. Note that each\\nrule is displayed once, hence the displayed graph will\\nbe cyclic if a rule appears in several steps of the\\nworkflow. Use this if above option leads to a DAG that\\nis too large. Recommended use on Unix systems:\\nsnakemake --filegraph | dot | displayNote print\\nstatements in your Snakefile may interfere with\\nvisualization. (default: False)"
    d_three_dag: "Print the DAG in D3.js compatible JSON format.\\n(default: False)"
    summary: "Print a summary of all files created by the workflow.\\nThe has the following columns: filename, modification\\ntime, rule version, status, plan. Thereby rule version\\ncontains the versionthe file was created with (see the\\nversion keyword of rules), and status denotes whether\\nthe file is missing, its input files are newer or if\\nversion or implementation of the rule changed since\\nfile creation. Finally the last column denotes whether\\nthe file will be updated or created during the next\\nworkflow execution. (default: False)"
    detailed_summary: "Print a summary of all files created by the workflow.\\nThe has the following columns: filename, modification\\ntime, rule version, input file(s), shell command,\\nstatus, plan. Thereby rule version contains the\\nversion the file was created with (see the version\\nkeyword of rules), and status denotes whether the file\\nis missing, its input files are newer or if version or\\nimplementation of the rule changed since file\\ncreation. The input file and shell command columns are\\nself explanatory. Finally the last column denotes\\nwhether the file will be updated or created during the\\nnext workflow execution. (default: False)"
    archive: "Archive the workflow into the given tar archive FILE.\\nThe archive will be created such that the workflow can\\nbe re-executed on a vanilla system. The function needs\\nconda and git to be installed. It will archive every\\nfile that is under git version control. Note that it\\nis best practice to have the Snakefile, config files,\\nand scripts under version control. Hence, they will be\\nincluded in the archive. Further, it will add input\\nfiles that are not generated by by the workflow itself\\nand conda environments. Note that symlinks are\\ndereferenced. Supported formats are .tar, .tar.gz,\\n.tar.bz2 and .tar.xz. (default: None)"
    cleanup_metadata: "Cleanup the metadata of given files. That means that\\nsnakemake removes any tracked version info, and any\\nmarks that files are incomplete. (default: None)"
    cleanup_shadow: "Cleanup old shadow directories which have not been\\ndeleted due to failures or power loss. (default:\\nFalse)"
    skip_script_cleanup: "Don't delete wrapper scripts used for execution\\n(default: False)"
    unlock: "Remove a lock on the working directory. (default:\\nFalse)"
    list_version_changes: "List all output files that have been created with a\\ndifferent version (as determined by the version\\nkeyword). (default: False)"
    list_code_changes: "List all output files for which the rule body (run or\\nshell) have changed in the Snakefile. (default: False)"
    list_input_changes: "List all output files for which the defined input\\nfiles have changed in the Snakefile (e.g. new input\\nfiles were added in the rule definition or files were\\nrenamed). For listing input file modification in the\\nfilesystem, use --summary. (default: False)"
    list_params_changes: "List all output files for which the defined params\\nhave changed in the Snakefile. (default: False)"
    list_untracked: "List all files in the working directory that are not\\nused in the workflow. This can be used e.g. for\\nidentifying leftover files. Hidden files and\\ndirectories are ignored. (default: False)"
    delete_all_output: "Remove all files generated by the workflow. Use\\ntogether with --dry-run to list files without actually\\ndeleting anything. Note that this will not recurse\\ninto subworkflows. Write-protected files are not\\nremoved. Nevertheless, use with care! (default: False)"
    delete_temp_output: "Remove all temporary files generated by the workflow.\\nUse together with --dry-run to list files without\\nactually deleting anything. Note that this will not\\nrecurse into subworkflows. (default: False)"
    bash_completion: "Output code to register bash completion for snakemake.\\nPut the following in your .bashrc (including the\\naccents): `snakemake --bash-completion` or issue it in\\nan open terminal session. (default: False)"
    keep_incomplete: "Do not remove incomplete output files by failed jobs.\\n(default: False)"
    reason: "Print the reason for each executed rule. (default:\\nFalse)"
    gui: "[PORT]          Serve an HTML based user interface to the given\\nnetwork and port e.g. 168.129.10.15:8000. By default\\nSnakemake is only available in the local network\\n(default port: 8000). To make Snakemake listen to all\\nip addresses add the special host address 0.0.0.0 to\\nthe url (0.0.0.0:8000). This is important if Snakemake\\nis used in a virtualised environment like Docker. If\\npossible, a browser window is opened. (default: None)"
    print_shell_cmds: "Print out the shell commands that will be executed.\\n(default: False)"
    debug_dag: "Print candidate and selected jobs (including their\\nwildcards) while inferring DAG. This can help to debug\\nunexpected DAG topology or errors. (default: False)"
    stats: "Write stats about Snakefile execution in JSON format\\nto the given file. (default: None)"
    no_color: "Do not use a colored output. (default: False)"
    quiet: "Do not output any progress or rule information.\\n(default: False)"
    print_compilation: "Print the python representation of the workflow.\\n(default: False)"
    verbose: "Print debugging output. (default: False)"
    force_use_threads: "Force threads rather than processes. Helpful if shared\\nmemory (/dev/shm) is full or unavailable. (default:\\nFalse)"
    allow_ambiguity: "Don't check for ambiguous rules and simply use the\\nfirst if several can produce the same file. This\\nallows the user to prioritize rules by their order in\\nthe snakefile. (default: False)"
    no_lock: "Do not lock the working directory (default: False)"
    ignore_incomplete: "Do not check for incomplete output files. (default:\\nFalse)"
    latency_wait: "Wait given seconds if an output file of a job is not\\npresent after the job finished. This helps if your\\nfilesystem suffers from latency (default 5). (default:\\n5)"
    wait_for_files: "[FILE [FILE ...]]\\nWait --latency-wait seconds for these files to be\\npresent before executing the workflow. This option is\\nused internally to handle filesystem latency in\\ncluster environments. (default: None)"
    no_temp: "Ignore temp() declarations. This is useful when\\nrunning only a part of the workflow, since temp()\\nwould lead to deletion of probably needed files by\\nother parts of the workflow. (default: False)"
    keep_remote: "Keep local copies of remote input files. (default:\\nFalse)"
    keep_target_files: "Do not adjust the paths of given target files relative\\nto the working directory. (default: False)"
    allowed_rules: "Only consider given rules. If omitted, all rules in\\nSnakefile are used. Note that this is intended\\nprimarily for internal use and may lead to unexpected\\nresults otherwise. (default: None)"
    max_jobs_per_second: "Maximal number of cluster/drmaa jobs per second,\\ndefault is 10, fractions allowed. (default: 10)"
    max_status_checks_per_second: "Maximal number of job status checks per second,\\ndefault is 10, fractions allowed. (default: 10)"
    restart_times: "Number of times to restart failing jobs (defaults to\\n0). (default: 0)"
    attempt: "Internal use only: define the initial value of the\\nattempt parameter (default: 1). (default: 1)"
    wrapper_prefix: "Prefix for URL created from wrapper directive\\n(default: https://github.com/snakemake/snakemake-\\nwrappers/raw/). Set this to a different URL to use\\nyour fork or a local clone of the repository, e.g.,\\nuse a git URL like\\n'git+file://path/to/your/local/clone@'. (default:\\nhttps://github.com/snakemake/snakemake-wrappers/raw/)"
    default_remote_provider: "Specify default remote provider to be used for all\\ninput and output files that don't yet specify one.\\n(default: None)"
    default_remote_prefix: "Specify prefix for default remote provider. E.g. a\\nbucket name. (default: )"
    no_shared_fs: "Do not assume that jobs share a common file system.\\nWhen this flag is activated, Snakemake will assume\\nthat the filesystem on a cluster node is not shared\\nwith other nodes. For example, this will lead to\\ndownloading remote files on each cluster node\\nseparately. Further, it won't take special measures to\\ndeal with filesystem latency issues. This option will\\nin most cases only make sense in combination with\\n--default-remote-provider. Further, when using\\n--cluster you will have to also provide --cluster-\\nstatus. Only activate this if you know what you are\\ndoing. (default: False)"
    greediness: "Set the greediness of scheduling. This value between 0\\nand 1 determines how careful jobs are selected for\\nexecution. The default value (1.0) provides the best\\nspeed and still acceptable scheduling quality.\\n(default: None)"
    no_hooks: "Do not invoke onstart, onsuccess or onerror hooks\\nafter execution. (default: False)"
    overwrite_shell_cmd: "Provide a shell command that shall be executed instead\\nof those given in the workflow. This is for debugging\\npurposes only. (default: None)"
    debug: "Allow to debug rules with e.g. PDB. This flag allows\\nto set breakpoints in run blocks. (default: False)"
    runtime_profile: "Profile Snakemake and write the output to FILE. This\\nrequires yappi to be installed. (default: None)"
    mode: "Set execution mode of Snakemake (internal use only).\\n(default: 0)"
    show_failed_logs: "Automatically display logs of failed jobs. (default:\\nFalse)"
    log_handler_script: "Provide a custom script containing a function 'def\\nlog_handler(msg):'. Snakemake will call this function\\nfor every logging output (given as a dictionary\\nmsg)allowing to e.g. send notifications in the form of\\ne.g. slack messages or emails. (default: None)"
    log_service: "Set a specific messaging service for logging\\noutput.Snakemake will notify the service on errors and\\ncompleted execution.Currently only slack is supported.\\n(default: None)"
    cluster: "Execute snakemake rules with the given submit command,\\ne.g. qsub. Snakemake compiles jobs into scripts that\\nare submitted to the cluster with the given command,\\nonce all input files for a particular job are present.\\nThe submit command can be decorated to make it aware\\nof certain job properties (name, rulename, input,\\noutput, params, wildcards, log, threads and\\ndependencies (see the argument below)), e.g.: $\\nsnakemake --cluster 'qsub -pe threaded {threads}'.\\n(default: None)"
    cluster_sync: "cluster submission command will block, returning the\\nremote exitstatus upon remote termination (for\\nexample, this should be usedif the cluster command is\\n'qsub -sync y' (SGE) (default: None)"
    drmaa: "[ARGS]        Execute snakemake on a cluster accessed via DRMAA,\\nSnakemake compiles jobs into scripts that are\\nsubmitted to the cluster with the given command, once\\nall input files for a particular job are present. ARGS\\ncan be used to specify options of the underlying\\ncluster system, thereby using the job properties name,\\nrulename, input, output, params, wildcards, log,\\nthreads and dependencies, e.g.: --drmaa ' -pe threaded\\n{threads}'. Note that ARGS must be given in quotes and\\nwith a leading whitespace. (default: None)"
    cluster_config: "A JSON or YAML file that defines the wildcards used in\\n'cluster'for specific rules, instead of having them\\nspecified in the Snakefile. For example, for rule\\n'job' you may define: { 'job' : { 'time' : '24:00:00'\\n} } to specify the time for rule 'job'. You can\\nspecify more than one file. The configuration files\\nare merged with later values overriding earlier ones.\\nThis option is deprecated in favor of using --profile,\\nsee docs. (default: [])"
    immediate_submit: "Immediately submit all jobs to the cluster instead of\\nwaiting for present input files. This will fail,\\nunless you make the cluster aware of job dependencies,\\ne.g. via: $ snakemake --cluster 'sbatch --dependency\\n{dependencies}. Assuming that your submit script (here\\nsbatch) outputs the generated job id to the first\\nstdout line, {dependencies} will be filled with space\\nseparated job ids this job depends on. (default:\\nFalse)"
    job_script: "Provide a custom job script for submission to the\\ncluster. The default script resides as 'jobscript.sh'\\nin the installation directory. (default: None)"
    job_name: "Provide a custom name for the jobscript that is\\nsubmitted to the cluster (see --cluster). NAME is\\n\\\"snakejob.{name}.{jobid}.sh\\\" per default. The wildcard\\n{jobid} has to be present in the name. (default:\\nsnakejob.{name}.{jobid}.sh)"
    cluster_status: "Status command for cluster execution. This is only\\nconsidered in combination with the --cluster flag. If\\nprovided, Snakemake will use the status command to\\ndetermine if a job has finished successfully or\\nfailed. For this it is necessary that the submit\\ncommand provided to --cluster returns the cluster job\\nid. Then, the status command will be invoked with the\\njob id. Snakemake expects it to return 'success' if\\nthe job was successfull, 'failed' if the job failed\\nand 'running' if the job still runs. (default: None)"
    drmaa_log_dir: "Specify a directory in which stdout and stderr files\\nof DRMAA jobs will be written. The value may be given\\nas a relative path, in which case Snakemake will use\\nthe current invocation directory as the origin. If\\ngiven, this will override any given '-o' and/or '-e'\\nnative specification. If not given, all DRMAA stdout\\nand stderr files are written to the current working\\ndirectory. (default: None)"
    ku_bernet_es: "[NAMESPACE]\\nExecute workflow in a kubernetes cluster (in the\\ncloud). NAMESPACE is the namespace you want to use for\\nyour job (if nothing specified: 'default'). Usually,\\nthis requires --default-remote-provider and --default-\\nremote-prefix to be set to a S3 or GS bucket where\\nyour . data shall be stored. It is further advisable\\nto activate conda integration via --use-conda.\\n(default: None)"
    container_image: "Docker image to use, e.g., when submitting jobs to\\nkubernetes Defaults to\\n'https://hub.docker.com/r/snakemake/snakemake', tagged\\nwith the same version as the currently running\\nSnakemake instance. Note that overwriting this value\\nis up to your responsibility. Any used image has to\\ncontain a working snakemake installation that is\\ncompatible with (or ideally the same as) the currently\\nrunning version. (default: None)"
    tib_anna: "Execute workflow on AWS cloud using Tibanna. This\\nrequires --default-remote-prefix to be set to S3\\nbucket name and prefix (e.g.\\n'bucketname/subdirectory') where input is already\\nstored and output will be sent to. Using --tibanna\\nimplies --default-resources is set as default.\\nOptionally, use --precommand to specify any\\npreparation command to run before snakemake command on\\nthe cloud (inside snakemake container on Tibanna VM).\\nAlso, --use-conda, --use-singularity, --config,\\n--configfile are supported and will be carried over.\\n(default: False)"
    tib_anna_sfn: "Name of Tibanna Unicorn step function (e.g.\\ntibanna_unicorn_monty).This works as serverless\\nscheduler/resource allocator and must be deployed\\nfirst using tibanna cli. (e.g. tibanna deploy_unicorn\\n--usergroup=monty --buckets=bucketname) (default:\\nNone)"
    pre_command: "Any command to execute before snakemake command on AWS\\ncloud such as wget, git clone, unzip, etc. This is\\nused with --tibanna.Do not include input/output\\ndownload/upload commands - file transfer between S3\\nbucket and the run environment (container) is\\nautomatically handled by Tibanna. (default: None)"
    tib_anna_config: "Additional tibanan config e.g. --tibanna-config\\nspot_instance=true subnet=<subnet_id> security\\ngroup=<security_group_id> (default: None)"
    google_life_sciences: "Execute workflow on Google Cloud cloud using the\\nGoogle Life. Science API. This requires default\\napplication credentials (json) to be created and\\nexport to the environment to use Google Cloud Storage,\\nCompute Engine, and Life Sciences. The credential file\\nshould be exported as GOOGLE_APPLICATION_CREDENTIALS\\nfor snakemake to discover. Also, --use-conda, --use-\\nsingularity, --config, --configfile are supported and\\nwill be carried over. (default: False)"
    google_life_sciences_regions: "Specify one or more valid instance regions (defaults\\nto US) (default: ['us-east1', 'us-west1', 'us-\\ncentral1'])"
    google_life_sciences_location: "The Life Sciences API service used to schedule the\\njobs. E.g., us-centra1 (Iowa) and europe-west2\\n(London) Watch the terminal output to see all options\\nfound to be available. If not specified, defaults to\\nthe first found with a matching prefix from regions\\nspecified with --google-lifesciences-regions.\\n(default: None)"
    google_life_sciences_keep_cache: "Cache workflows in your Google Cloud Storage Bucket\\nspecified by --default-remote-prefix/{source}/{cache}.\\nEach workflow working directory is compressed to a\\n.tar.gz, named by the hash of the contents, and kept\\nin Google Cloud Storage. By default, the caches are\\ndeleted at the shutdown step of the workflow.\\n(default: False)"
    use_cond_a: "If defined in the rule, run job in a conda\\nenvironment. If this flag is not set, the conda\\ndirective is ignored. (default: False)"
    list_cond_a_envs: "List all conda environments and their location on\\ndisk. (default: False)"
    cond_a_prefix: "Specify a directory in which the 'conda' and 'conda-\\narchive' directories are created. These are used to\\nstore conda environments and their archives,\\nrespectively. If not supplied, the value is set to the\\n'.snakemake' directory relative to the invocation\\ndirectory. If supplied, the `--use-conda` flag must\\nalso be set. The value may be given as a relative\\npath, which will be extrapolated to the invocation\\ndirectory, or as an absolute path. (default: None)"
    cond_a_cleanup_envs: "Cleanup unused conda environments. (default: False)"
    cond_a_cleanup_pkgs: "[{tarballs,cache}]\\nCleanup conda packages after creating environments. In\\ncase of 'tarballs' mode, will clean up all downloaded\\npackage tarballs. In case of 'cache' mode, will\\nadditionally clean up unused package caches. If mode\\nis omitted, will default to only cleaning up the\\ntarballs. (default: None)"
    cond_a_create_envs_only: "If specified, only creates the job-specific conda\\nenvironments then exits. The `--use-conda` flag must\\nalso be set. (default: False)"
    cond_a_front_end: "Choose the conda frontend for installing environments.\\nCaution: mamba is much faster, but still in beta test.\\n(default: conda)"
    use_singularity: "If defined in the rule, run job within a singularity\\ncontainer. If this flag is not set, the singularity\\ndirective is ignored. (default: False)"
    singularity_prefix: "Specify a directory in which singularity images will\\nbe stored.If not supplied, the value is set to the\\n'.snakemake' directory relative to the invocation\\ndirectory. If supplied, the `--use-singularity` flag\\nmust also be set. The value may be given as a relative\\npath, which will be extrapolated to the invocation\\ndirectory, or as an absolute path. (default: None)"
    singularity_args: "Pass additional args to singularity. (default: )"
    use_env_modules: "If defined in the rule, run job within the given\\nenvironment modules, loaded in the given order. This\\ncan be combined with --use-conda and --use-\\nsingularity, which will then be only used as a\\nfallback for rules which don't define environment\\nmodules. (default: False)\\n"
    target: "Targets to build. May be rules or files. (default:\\nNone)"
  }
  output {
    File out_stdout = stdout()
    File out_latency_wait = "${in_latency_wait}"
    File out_runtime_profile = "${in_runtime_profile}"
  }
}