class: CommandLineTool
id: snakemake.cwl
inputs:
- id: in_dry_run
  doc: "Do not execute anything, and display what would be\ndone. If you have a very\
    \ large workflow, use --dry-run\n--quiet to just print a summary of the DAG of\
    \ jobs.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_profile
  doc: "Name of profile to use for configuring Snakemake.\nSnakemake will search for\
    \ a corresponding folder in\n/etc/xdg/snakemake and /root/.config/snakemake.\n\
    Alternatively, this can be an absolute or relative\npath. The profile folder has\
    \ to contain a file\n'config.yaml'. This file can be used to set default\nvalues\
    \ for command line options in YAML format. For\nexample, '--cluster qsub' becomes\
    \ 'cluster: qsub' in\nthe YAML file. Profiles can be obtained from\nhttps://github.com/snakemake-profiles.\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --profile
- id: in_cache
  doc: "[RULE ...]    Store output files of given rules in a central cache\ngiven\
    \ by the environment variable\n$SNAKEMAKE_OUTPUT_CACHE. Likewise, retrieve output\n\
    files of the given rules from this cache if they have\nbeen created before (by\
    \ anybody writing to the same\ncache), instead of actually executing the rules.\n\
    Output files are identified by hashing all steps,\nparameters and software stack\
    \ (conda envs or\ncontainers) needed to create them. (default: None)"
  type: boolean?
  inputBinding:
    prefix: --cache
- id: in_snake_file
  doc: "The workflow definition in form of a\nsnakefile.Usually, you should not need\
    \ to specify\nthis. By default, Snakemake will search for\n'Snakefile', 'snakefile',\
    \ 'workflow/Snakefile',\n'workflow/snakefile' beneath the current working\ndirectory,\
    \ in this order. Only if you definitely want\na different layout, you need to\
    \ use this parameter.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --snakefile
- id: in_cores
  doc: "[N], --jobs [N], -j [N]\nUse at most N CPU cores/jobs in parallel. If N is\n\
    omitted or 'all', the limit is set to the number of\navailable CPU cores. (default:\
    \ None)"
  type: boolean?
  inputBinding:
    prefix: --cores
- id: in_local_cores
  doc: "In cluster mode, use at most N cores of the host\nmachine in parallel (default:\
    \ number of CPU cores of\nthe host). The cores are used to execute local rules.\n\
    This option is ignored when not in cluster mode.\n(default: 2)"
  type: long?
  inputBinding:
    prefix: --local-cores
- id: in_resources
  doc: "[NAME=INT ...], --res [NAME=INT ...]\nDefine additional resources that shall\
    \ constrain the\nscheduling analogously to threads (see above). A\nresource is\
    \ defined as a name and an integer value.\nE.g. --resources mem_mb=1000. Rules\
    \ can use resources\nby defining the resource keyword, e.g. resources:\nmem_mb=600.\
    \ If now two rules require 600 of the\nresource 'mem_mb' they won't be run in\
    \ parallel by the\nscheduler. (default: None)"
  type: boolean?
  inputBinding:
    prefix: --resources
- id: in_set_threads
  doc: "=THREADS [RULE=THREADS ...]\nOverwrite thread usage of rules. This allows\
    \ to fine-\ntune workflow parallelization. In particular, this is\nhelpful to\
    \ target certain cluster nodes by e.g.\nshifting a rule to use more, or less threads\
    \ than\ndefined in the workflow. Thereby, THREADS has to be a\npositive integer,\
    \ and RULE has to be the name of the\nrule. (default: None)"
  type: long?
  inputBinding:
    prefix: --set-threads
- id: in_set_scatter
  doc: "=SCATTERITEMS [NAME=SCATTERITEMS ...]\nOverwrite number of scatter items of\
    \ scattergather\nprocesses. This allows to fine-tune workflow\nparallelization.\
    \ Thereby, SCATTERITEMS has to be a\npositive integer, and NAME has to be the\
    \ name of the\nscattergather process defined via a scattergather\ndirective in\
    \ the workflow. (default: None)"
  type: long?
  inputBinding:
    prefix: --set-scatter
- id: in_default_resources
  doc: "[NAME=INT ...], --default-res [NAME=INT ...]\nDefine default values of resources\
    \ for rules that do\nnot define their own values. In addition to plain\nintegers,\
    \ python expressions over inputsize are\nallowed (e.g. '2*input.size_mb').When\
    \ specifying this\nwithout any arguments (--default-resources), it\ndefines 'mem_mb=max(2*input.size_mb,\
    \ 1000)'\n'disk_mb=max(2*input.size_mb, 1000)', i.e., default\ndisk and mem usage\
    \ is twice the input file size but at\nleast 1GB. (default: None)"
  type: boolean?
  inputBinding:
    prefix: --default-resources
- id: in_preemption_default
  doc: "A preemptible instance can be requested when using the\nGoogle Life Sciences\
    \ API. If you set a --preemption-\ndefault,all rules will be subject to the default.\n\
    Specifically, this integer is the number of restart\nattempts that will be made\
    \ given that the instance is\nkilled unexpectedly. Note that preemptible instances\n\
    have a maximum running time of 24 hours. If you want\nto set preemptible instances\
    \ for only a subset of\nrules, use --preemptible-rules instead. (default:\nNone)"
  type: long?
  inputBinding:
    prefix: --preemption-default
- id: in_preemptible_rules
  doc: "A preemptible instance can be requested when using the\nGoogle Life Sciences\
    \ API. If you want to use these\ninstances for a subset of your rules, you can\
    \ use\n--preemptible-rules and then specify a list of rule\nand integer pairs,\
    \ where each integer indicates the\nnumber of restarts to use for the rule's instance\
    \ in\nthe case that the instance is terminated unexpectedly.\n--preemptible-rules\
    \ can be used in combination with\n--preemption-default, and will take priority.\
    \ Note\nthat preemptible instances have a maximum running time\nof 24. If you\
    \ want to apply a consistent number of\nretries across all your rules, use --premption-default\n\
    instead. Example: snakemake --preemption-default 10\n--preemptible-rules map_reads=3\
    \ call_variants=0\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --preemptible-rules
- id: in_config
  doc: "[KEY=VALUE ...], -C [KEY=VALUE ...]\nSet or overwrite values in the workflow\
    \ config object.\nThe workflow config object is accessible as variable\nconfig\
    \ inside the workflow. Default values can be set\nby providing a JSON file (see\
    \ Documentation).\n(default: None)"
  type: boolean?
  inputBinding:
    prefix: --config
- id: in_config_files
  doc: "Specify or overwrite the config file of the workflow\n(see the docs). Values\
    \ specified in JSON or YAML\nformat are available in the global config dictionary\n\
    inside the workflow. Multiple files overwrite each\nother in the given order.\
    \ (default: None)"
  type: File[]
  inputBinding:
    prefix: --configfiles
- id: in_env_vars
  doc: "Environment variables to pass to cloud jobs. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --envvars
- id: in_directory
  doc: "Specify working directory (relative paths in the\nsnakefile will use this\
    \ as their origin). (default:\nNone)"
  type: Directory?
  inputBinding:
    prefix: --directory
- id: in_touch
  doc: "Touch output files (mark them up to date without\nreally changing them) instead\
    \ of running their\ncommands. This is used to pretend that the rules were\nexecuted,\
    \ in order to fool future invocations of\nsnakemake. Fails if a file does not\
    \ yet exist. Note\nthat this will only touch files that would otherwise\nbe recreated\
    \ by Snakemake (e.g. because their input\nfiles are newer). For enforcing a touch,\
    \ combine this\nwith --force, --forceall, or --forcerun. Note however\nthat you\
    \ loose the provenance information when the\nfiles have been created in realitiy.\
    \ Hence, this\nshould be used only as a last resort. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --touch
- id: in_keep_going
  doc: "Go on with independent jobs if a job fails. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --keep-going
- id: in_force
  doc: "Force the execution of the selected target or the\nfirst rule regardless of\
    \ already created output.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_force_all
  doc: "Force the execution of the selected (or the first)\nrule and all rules it\
    \ is dependent on regardless of\nalready created output. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --forceall
- id: in_force_run
  doc: "[TARGET ...], -R [TARGET ...]\nForce the re-execution or creation of the given\
    \ rules\nor files. Use this option if you changed a rule and\nwant to have all\
    \ its output in your workflow updated.\n(default: None)"
  type: boolean?
  inputBinding:
    prefix: --forcerun
- id: in_prioritize
  doc: "Tell the scheduler to assign creation of given targets\n(and all their dependencies)\
    \ highest priority.\n(EXPERIMENTAL) (default: None)"
  type: string[]
  inputBinding:
    prefix: --prioritize
- id: in_batch
  doc: "=BATCH/BATCHES\nOnly create the given BATCH of the input files of the\ngiven\
    \ RULE. This can be used to iteratively run parts\nof very large workflows. Only\
    \ the execution plan of\nthe relevant part of the workflow has to be\ncalculated,\
    \ thereby speeding up DAG computation. It is\nrecommended to provide the most\
    \ suitable rule for\nbatching when documenting a workflow. It should be\nsome\
    \ aggregating rule that would be executed only\nonce, and has a large number of\
    \ input files. For\nexample, it can be a rule that aggregates over\nsamples. (default:\
    \ None)"
  type: long?
  inputBinding:
    prefix: --batch
- id: in_until
  doc: "Runs the pipeline until it reaches the specified rules\nor files. Only runs\
    \ jobs that are dependencies of the\nspecified rule or files, does not run sibling\
    \ DAGs.\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --until
- id: in_omit_from
  doc: "Prevent the execution or creation of the given rules\nor files as well as\
    \ any rules or files that are\ndownstream of these targets in the DAG. Also runs\
    \ jobs\nin sibling DAGs that are independent of the rules or\nfiles specified\
    \ here. (default: None)"
  type: string[]
  inputBinding:
    prefix: --omit-from
- id: in_rerun_incomplete
  doc: "Re-run all jobs the output of which is recognized as\nincomplete. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --rerun-incomplete
- id: in_shadow_prefix
  doc: "Specify a directory in which the 'shadow' directory is\ncreated. If not supplied,\
    \ the value is set to the\n'.snakemake' directory relative to the working\ndirectory.\
    \ (default: None)"
  type: Directory?
  inputBinding:
    prefix: --shadow-prefix
- id: in_scheduler
  doc: "[{ilp,greedy}]\nSpecifies if jobs are selected by a greedy algorithm\nor by\
    \ solving an ilp. The ilp scheduler aims to reduce\nruntime and hdd usage by best\
    \ possible use of\nresources. (default: ilp)"
  type: boolean?
  inputBinding:
    prefix: --scheduler
- id: in_wms_monitor
  doc: "[WMS_MONITOR]\nIP and port of workflow management system to monitor\nthe execution\
    \ of snakemake (e.g.\nhttp://127.0.0.1:5000) Note that if your service\nrequires\
    \ an authorization token, you must export\nWMS_MONITOR_TOKEN in the environment.\
    \ (default: None)"
  type: boolean?
  inputBinding:
    prefix: --wms-monitor
- id: in_wms_monitor_arg
  doc: "[NAME=VALUE ...]\nIf the workflow management service accepts extra\narguments,\
    \ provide. them in key value pairs with\n--wms-monitor-arg. For example, to run\
    \ an existing\nworkflow using a wms monitor, you can provide the pair\nid=12345\
    \ and the arguments will be provided to the\nendpoint to first interact with the\
    \ workflow (default:\nNone)"
  type: boolean?
  inputBinding:
    prefix: --wms-monitor-arg
- id: in_scheduler_ilp_solver
  doc: "Specifies solver to be utilized when selecting ilp-\nscheduler. (default:\
    \ COIN_CMD)"
  type: string?
  inputBinding:
    prefix: --scheduler-ilp-solver
- id: in_no_sub_workflows
  doc: "Do not evaluate or execute subworkflows. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --no-subworkflows
- id: in_groups
  doc: "Assign rules to groups (this overwrites any group\ndefinitions from the workflow).\
    \ (default: None)"
  type: string[]
  inputBinding:
    prefix: --groups
- id: in_group_components
  doc: "Set the number of connected components a group is\nallowed to span. By default,\
    \ this is 1, but this flag\nallows to extend this. This can be used to run e.g.\
    \ 3\njobs of the same rule in the same group, although they\nare not connected.\
    \ It can be helpful for putting\ntogether many small jobs or benefitting of shared\n\
    memory setups. (default: None)"
  type: string[]
  inputBinding:
    prefix: --group-components
- id: in_report
  doc: "[FILE]       Create an HTML report with results and statistics.\nThis can\
    \ be either a .html file or a .zip file. In the\nformer case, all results are\
    \ embedded into the .html\n(this only works for small data). In the latter case,\n\
    results are stored along with a file report.html in\nthe zip archive. If no filename\
    \ is given, an embedded\nreport.html is the default. (default: None)"
  type: boolean?
  inputBinding:
    prefix: --report
- id: in_report_stylesheet
  doc: "Custom stylesheet to use for report. In particular,\nthis can be used for\
    \ branding the report with e.g. a\ncustom logo, see docs. (default: None)"
  type: File?
  inputBinding:
    prefix: --report-stylesheet
- id: in_edit_notebook
  doc: "Interactively edit the notebook associated with the\nrule used to generate\
    \ the given target file. This will\nstart a local jupyter notebook server. Any\
    \ changes to\nthe notebook should be saved, and the server has to be\nstopped\
    \ by closing the notebook and hitting the 'Quit'\nbutton on the jupyter dashboard.\
    \ Afterwards, the\nupdated notebook will be automatically stored in the\npath\
    \ defined in the rule. If the notebook is not yet\npresent, this will create an\
    \ empty draft. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --edit-notebook
- id: in_notebook_listen
  doc: ":PORT\nThe IP address and PORT the notebook server used for\nediting the notebook\
    \ (--edit-notebook) will listen on.\n(default: localhost:8888)"
  type: long?
  inputBinding:
    prefix: --notebook-listen
- id: in_lint
  doc: "[{text,json}]  Perform linting on the given workflow. This will print\nsnakemake\
    \ specific suggestions to improve code quality\n(work in progress, more lints\
    \ to be added in the\nfuture). If no argument is provided, plain text output\n\
    is used. (default: None)"
  type: boolean?
  inputBinding:
    prefix: --lint
- id: in_generate_unit_tests
  doc: "[TESTPATH]\nAutomatically generate unit tests for each workflow\nrule. This\
    \ assumes that all input files of each job\nare already present. Rules without\
    \ a job with present\ninput files will be skipped (a warning will be\nissued).\
    \ For each rule, one test case will be created\nin the specified test folder (.tests/unit\
    \ by default).\nAfter successfull execution, tests can be run with\n'pytest TESTPATH'.\
    \ (default: None)"
  type: boolean?
  inputBinding:
    prefix: --generate-unit-tests
- id: in_container_ize
  doc: "Print a Dockerfile that provides an execution\nenvironment for the workflow,\
    \ including all conda\nenvironments. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --containerize
- id: in_export_cwl
  doc: "Compile workflow to CWL and store it in given FILE.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --export-cwl
- id: in_list
  doc: "Show available rules in given Snakefile. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_list_target_rules
  doc: "Show available target rules in given Snakefile.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --list-target-rules
- id: in_dag
  doc: "Do not execute anything and print the directed acyclic\ngraph of jobs in the\
    \ dot language. Recommended use on\nUnix systems: snakemake --dag | dot | displayNote\n\
    print statements in your Snakefile may interfere with\nvisualization. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --dag
- id: in_rule_graph
  doc: "Do not execute anything and print the dependency graph\nof rules in the dot\
    \ language. This will be less\ncrowded than above DAG of jobs, but also show less\n\
    information. Note that each rule is displayed once,\nhence the displayed graph\
    \ will be cyclic if a rule\nappears in several steps of the workflow. Use this\
    \ if\nabove option leads to a DAG that is too large.\nRecommended use on Unix\
    \ systems: snakemake --rulegraph\n| dot | displayNote print statements in your\
    \ Snakefile\nmay interfere with visualization. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --rulegraph
- id: in_file_graph
  doc: "Do not execute anything and print the dependency graph\nof rules with their\
    \ input and output files in the dot\nlanguage. This is an intermediate solution\
    \ between\nabove DAG of jobs and the rule graph. Note that each\nrule is displayed\
    \ once, hence the displayed graph will\nbe cyclic if a rule appears in several\
    \ steps of the\nworkflow. Use this if above option leads to a DAG that\nis too\
    \ large. Recommended use on Unix systems:\nsnakemake --filegraph | dot | displayNote\
    \ print\nstatements in your Snakefile may interfere with\nvisualization. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --filegraph
- id: in_d_three_dag
  doc: "Print the DAG in D3.js compatible JSON format.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --d3dag
- id: in_summary
  doc: "Print a summary of all files created by the workflow.\nThe has the following\
    \ columns: filename, modification\ntime, rule version, status, plan. Thereby rule\
    \ version\ncontains the versionthe file was created with (see the\nversion keyword\
    \ of rules), and status denotes whether\nthe file is missing, its input files\
    \ are newer or if\nversion or implementation of the rule changed since\nfile creation.\
    \ Finally the last column denotes whether\nthe file will be updated or created\
    \ during the next\nworkflow execution. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --summary
- id: in_detailed_summary
  doc: "Print a summary of all files created by the workflow.\nThe has the following\
    \ columns: filename, modification\ntime, rule version, input file(s), shell command,\n\
    status, plan. Thereby rule version contains the\nversion the file was created\
    \ with (see the version\nkeyword of rules), and status denotes whether the file\n\
    is missing, its input files are newer or if version or\nimplementation of the\
    \ rule changed since file\ncreation. The input file and shell command columns\
    \ are\nself explanatory. Finally the last column denotes\nwhether the file will\
    \ be updated or created during the\nnext workflow execution. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --detailed-summary
- id: in_archive
  doc: "Archive the workflow into the given tar archive FILE.\nThe archive will be\
    \ created such that the workflow can\nbe re-executed on a vanilla system. The\
    \ function needs\nconda and git to be installed. It will archive every\nfile that\
    \ is under git version control. Note that it\nis best practice to have the Snakefile,\
    \ config files,\nand scripts under version control. Hence, they will be\nincluded\
    \ in the archive. Further, it will add input\nfiles that are not generated by\
    \ by the workflow itself\nand conda environments. Note that symlinks are\ndereferenced.\
    \ Supported formats are .tar, .tar.gz,\n.tar.bz2 and .tar.xz. (default: None)"
  type: File?
  inputBinding:
    prefix: --archive
- id: in_cleanup_metadata
  doc: "Cleanup the metadata of given files. That means that\nsnakemake removes any\
    \ tracked version info, and any\nmarks that files are incomplete. (default: None)"
  type: File[]
  inputBinding:
    prefix: --cleanup-metadata
- id: in_cleanup_shadow
  doc: "Cleanup old shadow directories which have not been\ndeleted due to failures\
    \ or power loss. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --cleanup-shadow
- id: in_skip_script_cleanup
  doc: "Don't delete wrapper scripts used for execution\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --skip-script-cleanup
- id: in_unlock
  doc: "Remove a lock on the working directory. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --unlock
- id: in_list_version_changes
  doc: "List all output files that have been created with a\ndifferent version (as\
    \ determined by the version\nkeyword). (default: False)"
  type: boolean?
  inputBinding:
    prefix: --list-version-changes
- id: in_list_code_changes
  doc: "List all output files for which the rule body (run or\nshell) have changed\
    \ in the Snakefile. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --list-code-changes
- id: in_list_input_changes
  doc: "List all output files for which the defined input\nfiles have changed in the\
    \ Snakefile (e.g. new input\nfiles were added in the rule definition or files\
    \ were\nrenamed). For listing input file modification in the\nfilesystem, use\
    \ --summary. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --list-input-changes
- id: in_list_params_changes
  doc: "List all output files for which the defined params\nhave changed in the Snakefile.\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --list-params-changes
- id: in_list_untracked
  doc: "List all files in the working directory that are not\nused in the workflow.\
    \ This can be used e.g. for\nidentifying leftover files. Hidden files and\ndirectories\
    \ are ignored. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --list-untracked
- id: in_delete_all_output
  doc: "Remove all files generated by the workflow. Use\ntogether with --dry-run to\
    \ list files without actually\ndeleting anything. Note that this will not recurse\n\
    into subworkflows. Write-protected files are not\nremoved. Nevertheless, use with\
    \ care! (default: False)"
  type: boolean?
  inputBinding:
    prefix: --delete-all-output
- id: in_delete_temp_output
  doc: "Remove all temporary files generated by the workflow.\nUse together with --dry-run\
    \ to list files without\nactually deleting anything. Note that this will not\n\
    recurse into subworkflows. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --delete-temp-output
- id: in_bash_completion
  doc: "Output code to register bash completion for snakemake.\nPut the following\
    \ in your .bashrc (including the\naccents): `snakemake --bash-completion` or issue\
    \ it in\nan open terminal session. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --bash-completion
- id: in_keep_incomplete
  doc: "Do not remove incomplete output files by failed jobs.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --keep-incomplete
- id: in_drop_metadata
  doc: "Drop metadata file tracking information after job\nfinishes. Provenance-information\
    \ based reports (e.g.\n--report and the --list_x_changes functions) will be\n\
    empty or incomplete. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --drop-metadata
- id: in_reason
  doc: "Print the reason for each executed rule. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --reason
- id: in_gui
  doc: "[PORT]          Serve an HTML based user interface to the given\nnetwork and\
    \ port e.g. 168.129.10.15:8000. By default\nSnakemake is only available in the\
    \ local network\n(default port: 8000). To make Snakemake listen to all\nip addresses\
    \ add the special host address 0.0.0.0 to\nthe url (0.0.0.0:8000). This is important\
    \ if Snakemake\nis used in a virtualised environment like Docker. If\npossible,\
    \ a browser window is opened. (default: None)"
  type: boolean?
  inputBinding:
    prefix: --gui
- id: in_print_shell_cmds
  doc: "Print out the shell commands that will be executed.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --printshellcmds
- id: in_debug_dag
  doc: "Print candidate and selected jobs (including their\nwildcards) while inferring\
    \ DAG. This can help to debug\nunexpected DAG topology or errors. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --debug-dag
- id: in_stats
  doc: "Write stats about Snakefile execution in JSON format\nto the given file. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --stats
- id: in_no_color
  doc: 'Do not use a colored output. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --nocolor
- id: in_quiet
  doc: "Do not output any progress or rule information.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_print_compilation
  doc: "Print the python representation of the workflow.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --print-compilation
- id: in_verbose
  doc: 'Print debugging output. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_force_use_threads
  doc: "Force threads rather than processes. Helpful if shared\nmemory (/dev/shm)\
    \ is full or unavailable. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --force-use-threads
- id: in_allow_ambiguity
  doc: "Don't check for ambiguous rules and simply use the\nfirst if several can produce\
    \ the same file. This\nallows the user to prioritize rules by their order in\n\
    the snakefile. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --allow-ambiguity
- id: in_no_lock
  doc: 'Do not lock the working directory (default: False)'
  type: boolean?
  inputBinding:
    prefix: --nolock
- id: in_ignore_incomplete
  doc: "Do not check for incomplete output files. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --ignore-incomplete
- id: in_max_inventory_time
  doc: "Spend at most SECONDS seconds to create a file\ninventory for the working\
    \ directory. The inventory\nvastly speeds up file modification and existence\n\
    checks when computing which jobs need to be executed.\nHowever, creating the inventory\
    \ itself can be slow,\ne.g. on network file systems. Hence, we do not spend\n\
    more than a given amount of time and fall back to\nindividual checks for the rest.\
    \ (default: 20)"
  type: long?
  inputBinding:
    prefix: --max-inventory-time
- id: in_latency_wait
  doc: "Wait given seconds if an output file of a job is not\npresent after the job\
    \ finished. This helps if your\nfilesystem suffers from latency (default 5). (default:\n\
    5)"
  type: File?
  inputBinding:
    prefix: --latency-wait
- id: in_wait_for_files
  doc: "[FILE ...]\nWait --latency-wait seconds for these files to be\npresent before\
    \ executing the workflow. This option is\nused internally to handle filesystem\
    \ latency in\ncluster environments. (default: None)"
  type: boolean?
  inputBinding:
    prefix: --wait-for-files
- id: in_no_temp
  doc: "Ignore temp() declarations. This is useful when\nrunning only a part of the\
    \ workflow, since temp()\nwould lead to deletion of probably needed files by\n\
    other parts of the workflow. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --notemp
- id: in_keep_remote
  doc: "Keep local copies of remote input files. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --keep-remote
- id: in_keep_target_files
  doc: "Do not adjust the paths of given target files relative\nto the working directory.\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --keep-target-files
- id: in_allowed_rules
  doc: "Only consider given rules. If omitted, all rules in\nSnakefile are used. Note\
    \ that this is intended\nprimarily for internal use and may lead to unexpected\n\
    results otherwise. (default: None)"
  type: string[]
  inputBinding:
    prefix: --allowed-rules
- id: in_max_jobs_per_second
  doc: "Maximal number of cluster/drmaa jobs per second,\ndefault is 10, fractions\
    \ allowed. (default: 10)"
  type: long?
  inputBinding:
    prefix: --max-jobs-per-second
- id: in_max_status_checks_per_second
  doc: "Maximal number of job status checks per second,\ndefault is 10, fractions\
    \ allowed. (default: 10)"
  type: long?
  inputBinding:
    prefix: --max-status-checks-per-second
- id: in_restart_times
  doc: "Number of times to restart failing jobs (defaults to\n0). (default: 0)"
  type: long?
  inputBinding:
    prefix: --restart-times
- id: in_attempt
  doc: "Internal use only: define the initial value of the\nattempt parameter (default:\
    \ 1). (default: 1)"
  type: long?
  inputBinding:
    prefix: --attempt
- id: in_wrapper_prefix
  doc: "Prefix for URL created from wrapper directive\n(default: https://github.com/snakemake/snakemake-\n\
    wrappers/raw/). Set this to a different URL to use\nyour fork or a local clone\
    \ of the repository, e.g.,\nuse a git URL like\n'git+file://path/to/your/local/clone@'.\
    \ (default:\nhttps://github.com/snakemake/snakemake-wrappers/raw/)"
  type: File?
  inputBinding:
    prefix: --wrapper-prefix
- id: in_default_remote_provider
  doc: "Specify default remote provider to be used for all\ninput and output files\
    \ that don't yet specify one.\n(default: None)"
  type: string?
  inputBinding:
    prefix: --default-remote-provider
- id: in_default_remote_prefix
  doc: "Specify prefix for default remote provider. E.g. a\nbucket name. (default:\
    \ )"
  type: string?
  inputBinding:
    prefix: --default-remote-prefix
- id: in_no_shared_fs
  doc: "Do not assume that jobs share a common file system.\nWhen this flag is activated,\
    \ Snakemake will assume\nthat the filesystem on a cluster node is not shared\n\
    with other nodes. For example, this will lead to\ndownloading remote files on\
    \ each cluster node\nseparately. Further, it won't take special measures to\n\
    deal with filesystem latency issues. This option will\nin most cases only make\
    \ sense in combination with\n--default-remote-provider. Further, when using\n\
    --cluster you will have to also provide --cluster-\nstatus. Only activate this\
    \ if you know what you are\ndoing. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-shared-fs
- id: in_greediness
  doc: "Set the greediness of scheduling. This value between 0\nand 1 determines how\
    \ careful jobs are selected for\nexecution. The default value (1.0) provides the\
    \ best\nspeed and still acceptable scheduling quality.\n(default: None)"
  type: double?
  inputBinding:
    prefix: --greediness
- id: in_no_hooks
  doc: "Do not invoke onstart, onsuccess or onerror hooks\nafter execution. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --no-hooks
- id: in_overwrite_shell_cmd
  doc: "Provide a shell command that shall be executed instead\nof those given in\
    \ the workflow. This is for debugging\npurposes only. (default: None)"
  type: string?
  inputBinding:
    prefix: --overwrite-shellcmd
- id: in_debug
  doc: "Allow to debug rules with e.g. PDB. This flag allows\nto set breakpoints in\
    \ run blocks. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_runtime_profile
  doc: "Profile Snakemake and write the output to FILE. This\nrequires yappi to be\
    \ installed. (default: None)"
  type: File?
  inputBinding:
    prefix: --runtime-profile
- id: in_mode
  doc: "Set execution mode of Snakemake (internal use only).\n(default: 0)"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_show_failed_logs
  doc: "Automatically display logs of failed jobs. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --show-failed-logs
- id: in_log_handler_script
  doc: "Provide a custom script containing a function 'def\nlog_handler(msg):'. Snakemake\
    \ will call this function\nfor every logging output (given as a dictionary\nmsg)allowing\
    \ to e.g. send notifications in the form of\ne.g. slack messages or emails. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --log-handler-script
- id: in_log_service
  doc: "Set a specific messaging service for logging\noutput.Snakemake will notify\
    \ the service on errors and\ncompleted execution.Currently slack and workflow\n\
    management system (wms) are supported. (default: None)"
  type: string?
  inputBinding:
    prefix: --log-service
- id: in_cluster
  doc: "Execute snakemake rules with the given submit command,\ne.g. qsub. Snakemake\
    \ compiles jobs into scripts that\nare submitted to the cluster with the given\
    \ command,\nonce all input files for a particular job are present.\nThe submit\
    \ command can be decorated to make it aware\nof certain job properties (name,\
    \ rulename, input,\noutput, params, wildcards, log, threads and\ndependencies\
    \ (see the argument below)), e.g.: $\nsnakemake --cluster 'qsub -pe threaded {threads}'.\n\
    (default: None)"
  type: string?
  inputBinding:
    prefix: --cluster
- id: in_cluster_sync
  doc: "cluster submission command will block, returning the\nremote exitstatus upon\
    \ remote termination (for\nexample, this should be usedif the cluster command\
    \ is\n'qsub -sync y' (SGE) (default: None)"
  type: string?
  inputBinding:
    prefix: --cluster-sync
- id: in_drmaa
  doc: "[ARGS]        Execute snakemake on a cluster accessed via DRMAA,\nSnakemake\
    \ compiles jobs into scripts that are\nsubmitted to the cluster with the given\
    \ command, once\nall input files for a particular job are present. ARGS\ncan be\
    \ used to specify options of the underlying\ncluster system, thereby using the\
    \ job properties name,\nrulename, input, output, params, wildcards, log,\nthreads\
    \ and dependencies, e.g.: --drmaa ' -pe threaded\n{threads}'. Note that ARGS must\
    \ be given in quotes and\nwith a leading whitespace. (default: None)"
  type: boolean?
  inputBinding:
    prefix: --drmaa
- id: in_cluster_config
  doc: "A JSON or YAML file that defines the wildcards used in\n'cluster'for specific\
    \ rules, instead of having them\nspecified in the Snakefile. For example, for\
    \ rule\n'job' you may define: { 'job' : { 'time' : '24:00:00'\n} } to specify\
    \ the time for rule 'job'. You can\nspecify more than one file. The configuration\
    \ files\nare merged with later values overriding earlier ones.\nThis option is\
    \ deprecated in favor of using --profile,\nsee docs. (default: [])"
  type: File?
  inputBinding:
    prefix: --cluster-config
- id: in_immediate_submit
  doc: "Immediately submit all jobs to the cluster instead of\nwaiting for present\
    \ input files. This will fail,\nunless you make the cluster aware of job dependencies,\n\
    e.g. via: $ snakemake --cluster 'sbatch --dependency\n{dependencies}. Assuming\
    \ that your submit script (here\nsbatch) outputs the generated job id to the first\n\
    stdout line, {dependencies} will be filled with space\nseparated job ids this\
    \ job depends on. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --immediate-submit
- id: in_job_script
  doc: "Provide a custom job script for submission to the\ncluster. The default script\
    \ resides as 'jobscript.sh'\nin the installation directory. (default: None)"
  type: Directory?
  inputBinding:
    prefix: --jobscript
- id: in_job_name
  doc: "Provide a custom name for the jobscript that is\nsubmitted to the cluster\
    \ (see --cluster). NAME is\n\"snakejob.{name}.{jobid}.sh\" per default. The wildcard\n\
    {jobid} has to be present in the name. (default:\nsnakejob.{name}.{jobid}.sh)"
  type: string?
  inputBinding:
    prefix: --jobname
- id: in_cluster_status
  doc: "Status command for cluster execution. This is only\nconsidered in combination\
    \ with the --cluster flag. If\nprovided, Snakemake will use the status command\
    \ to\ndetermine if a job has finished successfully or\nfailed. For this it is\
    \ necessary that the submit\ncommand provided to --cluster returns the cluster\
    \ job\nid. Then, the status command will be invoked with the\njob id. Snakemake\
    \ expects it to return 'success' if\nthe job was successfull, 'failed' if the\
    \ job failed\nand 'running' if the job still runs. (default: None)"
  type: string?
  inputBinding:
    prefix: --cluster-status
- id: in_drmaa_log_dir
  doc: "Specify a directory in which stdout and stderr files\nof DRMAA jobs will be\
    \ written. The value may be given\nas a relative path, in which case Snakemake\
    \ will use\nthe current invocation directory as the origin. If\ngiven, this will\
    \ override any given '-o' and/or '-e'\nnative specification. If not given, all\
    \ DRMAA stdout\nand stderr files are written to the current working\ndirectory.\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --drmaa-log-dir
- id: in_ku_bernet_es
  doc: "[NAMESPACE]\nExecute workflow in a kubernetes cluster (in the\ncloud). NAMESPACE\
    \ is the namespace you want to use for\nyour job (if nothing specified: 'default').\
    \ Usually,\nthis requires --default-remote-provider and --default-\nremote-prefix\
    \ to be set to a S3 or GS bucket where\nyour . data shall be stored. It is further\
    \ advisable\nto activate conda integration via --use-conda.\n(default: None)"
  type: boolean?
  inputBinding:
    prefix: --kubernetes
- id: in_container_image
  doc: "Docker image to use, e.g., when submitting jobs to\nkubernetes Defaults to\n\
    'https://hub.docker.com/r/snakemake/snakemake', tagged\nwith the same version\
    \ as the currently running\nSnakemake instance. Note that overwriting this value\n\
    is up to your responsibility. Any used image has to\ncontain a working snakemake\
    \ installation that is\ncompatible with (or ideally the same as) the currently\n\
    running version. (default: None)"
  type: string?
  inputBinding:
    prefix: --container-image
- id: in_tib_anna
  doc: "Execute workflow on AWS cloud using Tibanna. This\nrequires --default-remote-prefix\
    \ to be set to S3\nbucket name and prefix (e.g.\n'bucketname/subdirectory') where\
    \ input is already\nstored and output will be sent to. Using --tibanna\nimplies\
    \ --default-resources is set as default.\nOptionally, use --precommand to specify\
    \ any\npreparation command to run before snakemake command on\nthe cloud (inside\
    \ snakemake container on Tibanna VM).\nAlso, --use-conda, --use-singularity, --config,\n\
    --configfile are supported and will be carried over.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --tibanna
- id: in_tib_anna_sfn
  doc: "Name of Tibanna Unicorn step function (e.g.\ntibanna_unicorn_monty).This works\
    \ as serverless\nscheduler/resource allocator and must be deployed\nfirst using\
    \ tibanna cli. (e.g. tibanna deploy_unicorn\n--usergroup=monty --buckets=bucketname)\
    \ (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --tibanna-sfn
- id: in_pre_command
  doc: "Any command to execute before snakemake command on AWS\ncloud such as wget,\
    \ git clone, unzip, etc. This is\nused with --tibanna.Do not include input/output\n\
    download/upload commands - file transfer between S3\nbucket and the run environment\
    \ (container) is\nautomatically handled by Tibanna. (default: None)"
  type: File?
  inputBinding:
    prefix: --precommand
- id: in_tib_anna_config
  doc: "Additional tibanna config e.g. --tibanna-config\nspot_instance=true subnet=<subnet_id>\
    \ security\ngroup=<security_group_id> (default: None)"
  type: string[]
  inputBinding:
    prefix: --tibanna-config
- id: in_google_life_sciences
  doc: "Execute workflow on Google Cloud cloud using the\nGoogle Life. Science API.\
    \ This requires default\napplication credentials (json) to be created and\nexport\
    \ to the environment to use Google Cloud Storage,\nCompute Engine, and Life Sciences.\
    \ The credential file\nshould be exported as GOOGLE_APPLICATION_CREDENTIALS\n\
    for snakemake to discover. Also, --use-conda, --use-\nsingularity, --config, --configfile\
    \ are supported and\nwill be carried over. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --google-lifesciences
- id: in_google_life_sciences_regions
  doc: "Specify one or more valid instance regions (defaults\nto US) (default: ['us-east1',\
    \ 'us-west1', 'us-\ncentral1'])"
  type: string[]
  inputBinding:
    prefix: --google-lifesciences-regions
- id: in_google_life_sciences_location
  doc: "The Life Sciences API service used to schedule the\njobs. E.g., us-centra1\
    \ (Iowa) and europe-west2\n(London) Watch the terminal output to see all options\n\
    found to be available. If not specified, defaults to\nthe first found with a matching\
    \ prefix from regions\nspecified with --google-lifesciences-regions.\n(default:\
    \ None)"
  type: long?
  inputBinding:
    prefix: --google-lifesciences-location
- id: in_google_life_sciences_keep_cache
  doc: "Cache workflows in your Google Cloud Storage Bucket\nspecified by --default-remote-prefix/{source}/{cache}.\n\
    Each workflow working directory is compressed to a\n.tar.gz, named by the hash\
    \ of the contents, and kept\nin Google Cloud Storage. By default, the caches are\n\
    deleted at the shutdown step of the workflow.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --google-lifesciences-keep-cache
- id: in_tes
  doc: "Send workflow tasks to GA4GH TES server specified by\nurl. (default: None)"
  type: long?
  inputBinding:
    prefix: --tes
- id: in_use_cond_a
  doc: "If defined in the rule, run job in a conda\nenvironment. If this flag is not\
    \ set, the conda\ndirective is ignored. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --use-conda
- id: in_cond_a_not_block_search_path_env_vars
  doc: "Do not block environment variables that modify the\nsearch path (R_LIBS, PYTHONPATH,\
    \ PERL5LIB, PERLLIB)\nwhen using conda environments. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --conda-not-block-search-path-envvars
- id: in_list_cond_a_envs
  doc: "List all conda environments and their location on\ndisk. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --list-conda-envs
- id: in_cond_a_prefix
  doc: "Specify a directory in which the 'conda' and 'conda-\narchive' directories\
    \ are created. These are used to\nstore conda environments and their archives,\n\
    respectively. If not supplied, the value is set to the\n'.snakemake' directory\
    \ relative to the invocation\ndirectory. If supplied, the `--use-conda` flag must\n\
    also be set. The value may be given as a relative\npath, which will be extrapolated\
    \ to the invocation\ndirectory, or as an absolute path. The value can also\nbe\
    \ provided via the environment variable\n$SNAKEMAKE_CONDA_PREFIX. (default: None)"
  type: File?
  inputBinding:
    prefix: --conda-prefix
- id: in_cond_a_cleanup_envs
  doc: 'Cleanup unused conda environments. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --conda-cleanup-envs
- id: in_cond_a_cleanup_pkgs
  doc: "[{tarballs,cache}]\nCleanup conda packages after creating environments. In\n\
    case of 'tarballs' mode, will clean up all downloaded\npackage tarballs. In case\
    \ of 'cache' mode, will\nadditionally clean up unused package caches. If mode\n\
    is omitted, will default to only cleaning up the\ntarballs. (default: None)"
  type: boolean?
  inputBinding:
    prefix: --conda-cleanup-pkgs
- id: in_cond_a_create_envs_only
  doc: "If specified, only creates the job-specific conda\nenvironments then exits.\
    \ The `--use-conda` flag must\nalso be set. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --conda-create-envs-only
- id: in_cond_a_front_end
  doc: "Choose the conda frontend for installing environments.\nMamba is much faster\
    \ and highly recommended. (default:\nconda)"
  type: string?
  inputBinding:
    prefix: --conda-frontend
- id: in_use_singularity
  doc: "If defined in the rule, run job within a singularity\ncontainer. If this flag\
    \ is not set, the singularity\ndirective is ignored. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --use-singularity
- id: in_singularity_prefix
  doc: "Specify a directory in which singularity images will\nbe stored.If not supplied,\
    \ the value is set to the\n'.snakemake' directory relative to the invocation\n\
    directory. If supplied, the `--use-singularity` flag\nmust also be set. The value\
    \ may be given as a relative\npath, which will be extrapolated to the invocation\n\
    directory, or as an absolute path. (default: None)"
  type: File?
  inputBinding:
    prefix: --singularity-prefix
- id: in_singularity_args
  doc: 'Pass additional args to singularity. (default: )'
  type: string?
  inputBinding:
    prefix: --singularity-args
- id: in_use_env_modules
  doc: "If defined in the rule, run job within the given\nenvironment modules, loaded\
    \ in the given order. This\ncan be combined with --use-conda and --use-\nsingularity,\
    \ which will then be only used as a\nfallback for rules which don't define environment\n\
    modules. (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --use-envmodules
- id: in_target
  doc: "Targets to build. May be rules or files. (default:\nNone)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_latency_wait
  doc: "Wait given seconds if an output file of a job is not\npresent after the job\
    \ finished. This helps if your\nfilesystem suffers from latency (default 5). (default:\n\
    5)"
  type: File?
  outputBinding:
    glob: $(inputs.in_latency_wait)
- id: out_runtime_profile
  doc: "Profile Snakemake and write the output to FILE. This\nrequires yappi to be\
    \ installed. (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_runtime_profile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/snakemake-minimal:6.0.2--py_0
cwlVersion: v1.1
baseCommand:
- snakemake
