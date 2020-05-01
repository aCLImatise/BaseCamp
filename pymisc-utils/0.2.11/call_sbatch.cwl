#!/usr/bin/env cwl-runner

baseCommand:
- call_sbatch.py
class: CommandLineTool
cwlVersion: v1.0
id: call_sbatch.py
inputs:
- doc: The command to execute
  id: cmd
  inputBinding:
    position: 0
  type: string
- doc: 'The number of CPUs to use (default: 1)'
  id: num_cpus
  inputBinding:
    prefix: --num-cpus
  type: string
- doc: 'The amount of RAM to request (default: 10G)'
  id: mem
  inputBinding:
    prefix: --mem
  type: string
- doc: 'The amount of time to request (default: 0-05:59)'
  id: time
  inputBinding:
    prefix: --time
  type: string
- doc: 'The partitions to request (default: general)'
  id: partitions
  inputBinding:
    prefix: --partitions
  type: string
- doc: 'If this flag is present, stdout will be redirected to /dev/null (default:
    False)'
  id: no_output
  inputBinding:
    prefix: --no-output
  type: boolean
- doc: 'If this flag is present, stderr will be redirected to /dev/null (default:
    False)'
  id: no_error
  inputBinding:
    prefix: --no-error
  type: boolean
- doc: 'If this is present and the --no-output flag is not given, then stdout will
    be directed to this file rather than slurm-<job>.out (default: None)'
  id: stdout_file
  inputBinding:
    prefix: --stdout-file
  type: string
- doc: 'If this is present and the --no-error flag is not given, then stderr will
    be directed to this file rather than slurm-<job>.err (default: None)'
  id: stderr_file
  inputBinding:
    prefix: --stderr-file
  type: string
- doc: 'If this flag is present, then the commands will not be executed (but will
    be printed). (default: False)'
  id: do_not_call
  inputBinding:
    prefix: --do-not-call
  type: boolean
- doc: 'If this flag is present, the program calls will be submitted to SLURM. (default:
    False)'
  id: use_slur_m
  inputBinding:
    prefix: --use-slurm
  type: boolean
- doc: "[{NONE,BEGIN,END,FAIL,REQUEUE,ALL,STAGE_OUT,TIME_LIMIT,TIME_LIMIT_90,TIME_LIMIT_80,TIME_LIMIT_50,ARRAY_TASKS}\
    \ [{NONE,BEGIN,END,FAIL,REQUEUE,ALL,STAGE_OUT,TIME_LIMIT,TIME_LIMIT_90,TIME_LIMIT_80,TIME_LIMIT_50,ARRAY_TASKS}\
    \ ...]] When to send an email notifcation of the job status. See official documentation\
    \ for a description of the values. If a mail-user is not specified, this will\
    \ revert to 'None'. (default: ['FAIL', 'TIME_LIMIT'])"
  id: mail_type
  inputBinding:
    prefix: --mail-type
  type: boolean
- doc: 'To whom an email will be sent, in accordance with mail-type (default: None)'
  id: mail_user
  inputBinding:
    prefix: --mail-user
  type: string
