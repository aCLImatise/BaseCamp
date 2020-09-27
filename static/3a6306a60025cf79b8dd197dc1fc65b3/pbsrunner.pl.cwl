class: CommandLineTool
id: pbsrunner.pl.cwl
inputs:
- id: in_in_file
  doc: "- Str. File of commands separated by newline.\nThe command 'wait' indicates\
    \ all previous\ncommands should finish before starting the\nnext one."
  type: boolean
  inputBinding:
    prefix: --infile
- id: in_config_file
  doc: '- Path|Undef.'
  type: boolean
  inputBinding:
    prefix: --configfile
- id: in_queue
  doc: "- Str|Undef. PBS queue for job submission.\nDefaults is none, pbs decides."
  type: boolean
  inputBinding:
    prefix: --queue
- id: in_module
  doc: "- ArrayRef. List of modules to load ex. R2,\nsamtools, etc"
  type: boolean
  inputBinding:
    prefix: --module
- id: in_after_ok
  doc: '- ArrayRef.'
  type: boolean
  inputBinding:
    prefix: --afterok
- id: in_partition
  doc: "- Str|Undef. Default=. Slurm partition to\nsubmit jobs to. Defaults to the\
    \ partition\nwith the most available nodes"
  type: boolean
  inputBinding:
    prefix: --partition
- id: in_man
  doc: '- Bool. Display man page'
  type: boolean
  inputBinding:
    prefix: --man
- id: in_wall_time
  doc: '- Str. Default=04:00:00.'
  type: boolean
  inputBinding:
    prefix: --walltime
- id: in_commands_per_node
  doc: "- Str. Default=8. Commands to run on each node.\nThis is not the same as\n\
    concurrent_commands_per_node!"
  type: boolean
  inputBinding:
    prefix: --commands_per_node
- id: in_mem
  doc: '- Str|Undef. Supply a memory limit'
  type: boolean
  inputBinding:
    prefix: --mem
- id: in_nodes_count
  doc: "- Str. Default=1. Number of nodes requested.\nYou should only use this if\
    \ submitting\nparallel jobs."
  type: boolean
  inputBinding:
    prefix: --nodes_count
- id: in_template_file
  doc: "- Str. Path to Slurm template file if you do\nnot wish to use the default"
  type: boolean
  inputBinding:
    prefix: --template_file
- id: in_nodelist
  doc: "- ArrayRef. List of nodes to submit jobs to.\nDefaults to the partition with\
    \ the most\nnodes."
  type: boolean
  inputBinding:
    prefix: --nodelist
- id: in_submit_to_slur_m
  doc: "- Bool. Default=1. Bool value whether or not to\nsubmit to slurm. If you are\
    \ looking to\ndebug your files, or this script you will\nwant to set this to zero."
  type: boolean
  inputBinding:
    prefix: --submit_to_slurm
- id: in_outdir
  doc: '- Str. Directory to write out files.'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_logdir
  doc: "- Str. Directory where logfiles are written.\nDefaults to\ncurrent_working_directory/prunner_current_d\n\
    ate_time/log1 .. log2 .. log3'"
  type: boolean
  inputBinding:
    prefix: --logdir
- id: in_serial
  doc: "- Bool. Default=0. Use this if you wish to run\neach job run one after another,\
    \ with each\njob starting only after the previous has\ncompleted successfully"
  type: boolean
  inputBinding:
    prefix: --serial
- id: in_procs
  doc: "- Int. Default=4. Total number of running jobs\nallowed at any time. The command\
    \ 'wait' can\nbe used to have a variable number of\nchildren running."
  type: boolean
  inputBinding:
    prefix: --procs
- id: in_user
  doc: "- Str. This defaults to your current user ID.\nThis can only be changed if\
    \ running as an\nadmin user"
  type: boolean
  inputBinding:
    prefix: --user
- id: in_use_threads
  doc: '- Bool. Default=0. Use threads to run jobs'
  type: boolean
  inputBinding:
    prefix: --use_threads
- id: in_job_scheduler_id
  doc: "- Str|Undef. This defaults to your current Job\nScheduler ID. Ignore this\
    \ if running on a\nsingle node"
  type: boolean
  inputBinding:
    prefix: --job_scheduler_id
- id: in_use_processes
  doc: '- Bool. Default=1. Use processes to run jobs'
  type: boolean
  inputBinding:
    prefix: --use_processes
- id: in_job_name
  doc: "- Str. Specify a job name, each job will be\nappended with its batch order"
  type: boolean
  inputBinding:
    prefix: --jobname
- id: in_show_processid
  doc: "- Bool. Default=0. Show the process ID per\nlogging message. This is useful\
    \ when\naggregating logs."
  type: boolean
  inputBinding:
    prefix: --show_processid
- id: in_use_gnu_parallel
  doc: "- Bool. Default=0. Use gnu-parallel to run jobs\nand manage threads. This\
    \ is the best option\nif you do not know how many threads your\napplication uses!"
  type: boolean
  inputBinding:
    prefix: --use_gnuparallel
- id: in_meta_str
  doc: "- Str. Default=. Meta str passed from\nHPC::Runner::Scheduler"
  type: boolean
  inputBinding:
    prefix: --metastr
- id: in_custom_command
  doc: '- Str.'
  type: boolean
  inputBinding:
    prefix: --custom_command
- id: in_dt
  doc: '- DateTime.'
  type: boolean
  inputBinding:
    prefix: --dt
- id: in_slur_m_decides
  doc: '- Bool. Default=0.'
  type: boolean
  inputBinding:
    prefix: --slurm_decides
- id: in_logname
  doc: '- Str. Default=hpcrunner_logs.'
  type: boolean
  inputBinding:
    prefix: --logname
- id: in_job_stats
  doc: '- HashRef.'
  type: boolean
  inputBinding:
    prefix: --job_stats
- id: in_process_table
  doc: '- Str.'
  type: boolean
  inputBinding:
    prefix: --process_table
- id: in_plugins
  doc: '- ArrayRef|Str. Add Plugins to your run'
  type: boolean
  inputBinding:
    prefix: --plugins
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: '- Str. Directory to write out files.'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- pbsrunner.pl
