version 1.0

task Slurmrunnerrsyslogpl {
  input {
    Boolean? in_file
    Boolean? module
    Boolean? after_ok
    Boolean? cpus_per_task
    Boolean? man
    Boolean? commands_per_node
    Boolean? nodes_count
    Boolean? partition
    Boolean? nodelist
    Boolean? submit_to_slur_m
    Boolean? template_file
    Directory? outdir
    Boolean? serial
    Boolean? logdir
    Boolean? procs
    Boolean? user
    Boolean? use_threads
    Boolean? job_scheduler_id
    Boolean? job_name
    Boolean? use_processes
    Boolean? show_processid
    Boolean? use_gnu_parallel
    Boolean? meta_str
    Boolean? custom_command
    Boolean? dt
    Boolean? logname
    Boolean? slur_m_decides
    Boolean? process_table
    Boolean? job_stats
    Boolean? plugins
  }
  command <<<
    slurmrunnerrsyslog_pl \
      ~{if (in_file) then "--infile" else ""} \
      ~{if (module) then "--module" else ""} \
      ~{if (after_ok) then "--afterok" else ""} \
      ~{if (cpus_per_task) then "--cpus_per_task" else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (commands_per_node) then "--commands_per_node" else ""} \
      ~{if (nodes_count) then "--nodes_count" else ""} \
      ~{if (partition) then "--partition" else ""} \
      ~{if (nodelist) then "--nodelist" else ""} \
      ~{if (submit_to_slur_m) then "--submit_to_slurm" else ""} \
      ~{if (template_file) then "--template_file" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (serial) then "--serial" else ""} \
      ~{if (logdir) then "--logdir" else ""} \
      ~{if (procs) then "--procs" else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if (use_threads) then "--use_threads" else ""} \
      ~{if (job_scheduler_id) then "--job_scheduler_id" else ""} \
      ~{if (job_name) then "--jobname" else ""} \
      ~{if (use_processes) then "--use_processes" else ""} \
      ~{if (show_processid) then "--show_processid" else ""} \
      ~{if (use_gnu_parallel) then "--use_gnuparallel" else ""} \
      ~{if (meta_str) then "--metastr" else ""} \
      ~{if (custom_command) then "--custom_command" else ""} \
      ~{if (dt) then "--dt" else ""} \
      ~{if (logname) then "--logname" else ""} \
      ~{if (slur_m_decides) then "--slurm_decides" else ""} \
      ~{if (process_table) then "--process_table" else ""} \
      ~{if (job_stats) then "--job_stats" else ""} \
      ~{if (plugins) then "--plugins" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: "- Str. File of commands separated by newline.\\nThe command 'wait' indicates all previous\\ncommands should finish before starting the\\nnext one."
    module: "- ArrayRef. List of modules to load ex. R2,\\nsamtools, etc"
    after_ok: "- ArrayRef."
    cpus_per_task: "- Str. Default=4."
    man: "- Bool. Display man page"
    commands_per_node: "- Str. Default=8. Commands to run on each node.\\nThis is not the same as\\nconcurrent_commands_per_node!"
    nodes_count: "- Str. Default=1. Number of nodes requested.\\nYou should only use this if submitting\\nparallel jobs."
    partition: "- Str. Default=. Slurm partition to submit jobs\\nto. Defaults to the partition with the most\\navailable nodes"
    nodelist: "- ArrayRef. List of nodes to submit jobs to.\\nDefaults to the partition with the most\\nnodes."
    submit_to_slur_m: "- Bool. Default=1. Bool value whether or not to\\nsubmit to slurm. If you are looking to\\ndebug your files, or this script you will\\nwant to set this to zero."
    template_file: "- Str. Path to Slurm template file if you do\\nnot wish to use the default"
    outdir: "- Str. Directory to write out files."
    serial: "- Bool. Default=0. Use this if you wish to run\\neach job run one after another, with each\\njob starting only after the previous has\\ncompleted successfully"
    logdir: "- Str. Directory where logfiles are written.\\nDefaults to\\ncurrent_working_directory/prunner_current_d\\nate_time/log1 .. log2 .. log3'"
    procs: "- Int. Default=4. Total number of running jobs\\nallowed at any time. The command 'wait' can\\nbe used to have a variable number of\\nchildren running."
    user: "- Str. This defaults to your current user ID.\\nThis can only be changed if running as an\\nadmin user"
    use_threads: "- Bool. Default=0. Use threads to run jobs"
    job_scheduler_id: "- Str|Undef. This defaults to your current Job\\nScheduler ID. Ignore this if running on a\\nsingle node"
    job_name: "- Str. Specify a job name, each job will be\\nappended with its batch order"
    use_processes: "- Bool. Default=1. Use processes to run jobs"
    show_processid: "- Bool. Default=0. Show the process ID per\\nlogging message. This is useful when\\naggregating logs."
    use_gnu_parallel: "- Bool. Default=0. Use gnu-parallel to run jobs\\nand manage threads. This is the best option\\nif you do not know how many threads your\\napplication uses!"
    meta_str: "- Str. Default=. Meta str passed from\\nHPC::Runner::Scheduler"
    custom_command: "- Str."
    dt: "- DateTime."
    logname: "- Str. Default=hpcrunner_logs."
    slur_m_decides: "- Bool. Default=0."
    process_table: "- Str."
    job_stats: "- HashRef."
    plugins: "- ArrayRef|Str. Add Plugins to your run"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}