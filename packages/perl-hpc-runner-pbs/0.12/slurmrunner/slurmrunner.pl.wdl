version 1.0

task Slurmrunnerpl {
  input {
    Boolean? in_file
    Boolean? config_file
    Boolean? module
    Boolean? after_ok
    Boolean? man
    Boolean? commands_per_node
    Boolean? nodes_count
    Boolean? partition
    Boolean? nodelist
    Boolean? submit_to_slur_m
    Directory? outdir
    Boolean? template_file
    Boolean? serial
    Boolean? logdir
    Boolean? user
    Boolean? procs
    Boolean? job_scheduler_id
    Boolean? use_threads
    Boolean? use_processes
    Boolean? job_name
    Boolean? use_gnu_parallel
    Boolean? show_processid
    Boolean? custom_command
    Boolean? meta_str
    Boolean? dt
    Boolean? slur_m_decides
    Boolean? logname
    Boolean? job_stats
    Boolean? process_table
    Boolean? plugins
  }
  command <<<
    slurmrunner_pl \
      ~{if (in_file) then "--infile" else ""} \
      ~{if (config_file) then "--configfile" else ""} \
      ~{if (module) then "--module" else ""} \
      ~{if (after_ok) then "--afterok" else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (commands_per_node) then "--commands_per_node" else ""} \
      ~{if (nodes_count) then "--nodes_count" else ""} \
      ~{if (partition) then "--partition" else ""} \
      ~{if (nodelist) then "--nodelist" else ""} \
      ~{if (submit_to_slur_m) then "--submit_to_slurm" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (template_file) then "--template_file" else ""} \
      ~{if (serial) then "--serial" else ""} \
      ~{if (logdir) then "--logdir" else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if (procs) then "--procs" else ""} \
      ~{if (job_scheduler_id) then "--job_scheduler_id" else ""} \
      ~{if (use_threads) then "--use_threads" else ""} \
      ~{if (use_processes) then "--use_processes" else ""} \
      ~{if (job_name) then "--jobname" else ""} \
      ~{if (use_gnu_parallel) then "--use_gnuparallel" else ""} \
      ~{if (show_processid) then "--show_processid" else ""} \
      ~{if (custom_command) then "--custom_command" else ""} \
      ~{if (meta_str) then "--metastr" else ""} \
      ~{if (dt) then "--dt" else ""} \
      ~{if (slur_m_decides) then "--slurm_decides" else ""} \
      ~{if (logname) then "--logname" else ""} \
      ~{if (job_stats) then "--job_stats" else ""} \
      ~{if (process_table) then "--process_table" else ""} \
      ~{if (plugins) then "--plugins" else ""}
  >>>
  parameter_meta {
    in_file: "- Str. File of commands separated by newline.\\nThe command 'wait' indicates all previous\\ncommands should finish before starting the\\nnext one."
    config_file: "- Path|Undef."
    module: "- ArrayRef. List of modules to load ex. R2,\\nsamtools, etc"
    after_ok: "- ArrayRef."
    man: "- Bool. Display man page"
    commands_per_node: "- Str. Default=8. Commands to run on each node.\\nThis is not the same as\\nconcurrent_commands_per_node!"
    nodes_count: "- Str. Default=1. Number of nodes requested.\\nYou should only use this if submitting\\nparallel jobs."
    partition: "- Str. Default=. Slurm partition to submit jobs\\nto. Defaults to the partition with the most\\navailable nodes"
    nodelist: "- ArrayRef. List of nodes to submit jobs to.\\nDefaults to the partition with the most\\nnodes."
    submit_to_slur_m: "- Bool. Default=1. Bool value whether or not to\\nsubmit to slurm. If you are looking to\\ndebug your files, or this script you will\\nwant to set this to zero."
    outdir: "- Str. Directory to write out files."
    template_file: "- Str. Path to Slurm template file if you do\\nnot wish to use the default"
    serial: "- Bool. Default=0. Use this if you wish to run\\neach job run one after another, with each\\njob starting only after the previous has\\ncompleted successfully"
    logdir: "- Str. Directory where logfiles are written.\\nDefaults to\\ncurrent_working_directory/prunner_current_d\\nate_time/log1 .. log2 .. log3'"
    user: "- Str. This defaults to your current user ID.\\nThis can only be changed if running as an\\nadmin user"
    procs: "- Int. Default=4. Total number of running jobs\\nallowed at any time. The command 'wait' can\\nbe used to have a variable number of\\nchildren running."
    job_scheduler_id: "- Str|Undef. This defaults to your current Job\\nScheduler ID. Ignore this if running on a\\nsingle node"
    use_threads: "- Bool. Default=0. Use threads to run jobs"
    use_processes: "- Bool. Default=1. Use processes to run jobs"
    job_name: "- Str. Specify a job name, each job will be\\nappended with its batch order"
    use_gnu_parallel: "- Bool. Default=0. Use gnu-parallel to run jobs\\nand manage threads. This is the best option\\nif you do not know how many threads your\\napplication uses!"
    show_processid: "- Bool. Default=0. Show the process ID per\\nlogging message. This is useful when\\naggregating logs."
    custom_command: "- Str."
    meta_str: "- Str. Default=. Meta str passed from\\nHPC::Runner::Scheduler"
    dt: "- DateTime."
    slur_m_decides: "- Bool. Default=0."
    logname: "- Str. Default=hpcrunner_logs."
    job_stats: "- HashRef."
    process_table: "- Str."
    plugins: "- ArrayRef|Str. Add Plugins to your run"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}