class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hpcrunner.pl_submit_jobs.cwl
inputs:
- id: account
  doc: '--account switch in slurm. '
  type: boolean
  inputBinding:
    prefix: --account
- id: after_ok
  doc: afterok switch in slurm. --afterok 123,134 will tell slurm to start this job
    after 123,134 have exited successfully [Multiple; Split by ","]
  type: boolean
  inputBinding:
    prefix: --afterok
- id: cpus_per_task
  doc: --cpus-per-task switch in slurm [Default:"4"; Integer]
  type: boolean
  inputBinding:
    prefix: --cpus_per_task
- id: partition
  doc: Slurm partition to submit jobs to.
  type: boolean
  inputBinding:
    prefix: --partition
- id: serial
  doc: Use this if you wish to run each job run one after another, with each job starting
    only after the previous has completed successfully [Flag]
  type: boolean
  inputBinding:
    prefix: --serial
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
- id: nodes_count
  doc: Number of nodes requested. You should only use this if submitting parallel
    jobs. [Default:"1"; Integer ]
  type: boolean
  inputBinding:
    prefix: --nodes_count
- id: dry_run
  doc: Do a dry run - do not submit to the scheduler. [ Flag]
  type: boolean
  inputBinding:
    prefix: --dry_run
- id: help
  doc: Prints this usage information
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hpcrunner.pl
- submit_jobs
