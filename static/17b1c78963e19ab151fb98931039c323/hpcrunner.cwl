class: CommandLineTool
id: hpcrunner.pl_submit_jobs.cwl
inputs:
- id: help
  doc: Prints this usage information
  type: string
  inputBinding:
    position: 0
- id: n_tasks_per_node
  doc: --ntasks-per-node switch in slurm. total concurrent tasks on a node. [Default:"1";
    Integer]
  type: boolean
  inputBinding:
    prefix: --ntasks_per_node
- id: nodes_count
  doc: Number of nodes requested. You should only use this if submitting parallel
    jobs. [Default:"1"; Integer ]
  type: boolean
  inputBinding:
    prefix: --nodes_count
- id: module
  doc: List of modules to load ex. R2, samtools, etc [ Multiple; Split by ","]
  type: boolean
  inputBinding:
    prefix: --module
- id: partition
  doc: Slurm partition to submit jobs to.
  type: boolean
  inputBinding:
    prefix: --partition
- id: account
  doc: '--account switch in slurm. '
  type: boolean
  inputBinding:
    prefix: --account
- id: use_batches
  doc: Switch to use batches. The default is to use job arrays. Warning! This was
    the default way of submitting before 3.0, but is not well supported. [ Flag]
  type: boolean
  inputBinding:
    prefix: --use_batches
- id: serial
  doc: Use this if you wish to run each job run one after another, with each job starting
    only after the previous has completed successfully [Flag]
  type: boolean
  inputBinding:
    prefix: --serial
- id: wall_time
  doc: '[Default:"00:20:00"]'
  type: boolean
  inputBinding:
    prefix: --walltime
- id: max_array_size
  doc: '[Default:"200"; Integer]'
  type: boolean
  inputBinding:
    prefix: --max_array_size
- id: n_tasks
  doc: --ntasks switch in slurm. This is equal to the number of concurrent tasks on
    each node * the number of nodes, not the total number of tasks [ Default:"1";
    Integer]
  type: boolean
  inputBinding:
    prefix: --ntasks
- id: mem
  doc: Supply a memory limit [Default:"10GB"]
  type: boolean
  inputBinding:
    prefix: --mem
- id: cond_a_env
  doc: Conda env to activate.
  type: boolean
  inputBinding:
    prefix: --conda_env
- id: after_ok
  doc: afterok switch in slurm. --afterok 123,134 will tell slurm to start this job
    after 123,134 have exited successfully [Multiple; Split by ","]
  type: boolean
  inputBinding:
    prefix: --afterok
- id: user
  doc: This defaults to your current user ID. This can only be changed if running
    as an admin user
  type: boolean
  inputBinding:
    prefix: --user
- id: cpus_per_task
  doc: --cpus-per-task switch in slurm [Default:"4"; Integer]
  type: boolean
  inputBinding:
    prefix: --cpus_per_task
- id: job_name
  doc: Specify a job name, each job will be appended with its batch order [Default:"hpcjob_001"]
  type: boolean
  inputBinding:
    prefix: --jobname
- id: commands_per_node
  doc: Commands to run on each node. If you have a low number of jobs you can submit
    at a time you want this number much higher.  [Default:"1"; Integer]
  type: boolean
  inputBinding:
    prefix: --commands_per_node
- id: dry_run
  doc: Do a dry run - do not submit to the scheduler. [ Flag]
  type: boolean
  inputBinding:
    prefix: --dry_run
outputs: []
cwlVersion: v1.1
baseCommand:
- hpcrunner.pl
- submit_jobs
