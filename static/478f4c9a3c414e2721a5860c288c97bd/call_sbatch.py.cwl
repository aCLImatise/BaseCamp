class: CommandLineTool
id: call_sbatch.py.cwl
inputs:
- id: in_num_cpus
  doc: 'The number of CPUs to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --num-cpus
- id: in_mem
  doc: 'The amount of RAM to request (default: 10G)'
  type: long?
  inputBinding:
    prefix: --mem
- id: in_time
  doc: 'The amount of time to request (default: 0-05:59)'
  type: long?
  inputBinding:
    prefix: --time
- id: in_partitions
  doc: 'The partitions to request (default: general)'
  type: string?
  inputBinding:
    prefix: --partitions
- id: in_no_output
  doc: "If this flag is present, stdout will be redirected to\n/dev/null (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --no-output
- id: in_no_error
  doc: "If this flag is present, stderr will be redirected to\n/dev/null (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --no-error
- id: in_stdout_file
  doc: "If this is present and the --no-output flag is not\ngiven, then stdout will\
    \ be directed to this file\nrather than slurm-<job>.out (default: None)"
  type: File?
  inputBinding:
    prefix: --stdout-file
- id: in_stderr_file
  doc: "If this is present and the --no-error flag is not\ngiven, then stderr will\
    \ be directed to this file\nrather than slurm-<job>.err (default: None)"
  type: File?
  inputBinding:
    prefix: --stderr-file
- id: in_do_not_call
  doc: "If this flag is present, then the commands will not be\nexecuted (but will\
    \ be printed). (default: False)"
  type: boolean?
  inputBinding:
    prefix: --do-not-call
- id: in_use_slur_m
  doc: "If this flag is present, the program calls will be\nsubmitted to SLURM. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --use-slurm
- id: in_mail_type
  doc: "[{NONE,BEGIN,END,FAIL,REQUEUE,ALL,STAGE_OUT,TIME_LIMIT,TIME_LIMIT_90,TIME_LIMIT_80,TIME_LIMIT_50,ARRAY_TASKS}\
    \ [{NONE,BEGIN,END,FAIL,REQUEUE,ALL,STAGE_OUT,TIME_LIMIT,TIME_LIMIT_90,TIME_LIMIT_80,TIME_LIMIT_50,ARRAY_TASKS}\
    \ ...]]\nWhen to send an email notifcation of the job status.\nSee official documentation\
    \ for a description of the\nvalues. If a mail-user is not specified, this will\n\
    revert to 'None'. (default: ['FAIL', 'TIME_LIMIT'])"
  type: boolean?
  inputBinding:
    prefix: --mail-type
- id: in_mail_user
  doc: "To whom an email will be sent, in accordance with\nmail-type (default: None)\n"
  type: string?
  inputBinding:
    prefix: --mail-user
- id: in_cmd
  doc: The command to execute
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_stdout_file
  doc: "If this is present and the --no-output flag is not\ngiven, then stdout will\
    \ be directed to this file\nrather than slurm-<job>.out (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_stdout_file)
hints: []
cwlVersion: v1.1
baseCommand:
- call_sbatch.py
