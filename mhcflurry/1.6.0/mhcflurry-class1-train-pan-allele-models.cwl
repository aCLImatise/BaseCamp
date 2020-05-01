#!/usr/bin/env cwl-runner

baseCommand:
- mhcflurry-class1-train-pan-allele-models
class: CommandLineTool
cwlVersion: v1.0
id: mhcflurry-class1-train-pan-allele-models
inputs:
- doc: Do not use affinity value inequalities even when present in data
  id: ignore_inequalities
  inputBinding:
    prefix: --ignore-inequalities
  type: boolean
- doc: Number of training folds.
  id: num_folds
  inputBinding:
    prefix: --num-folds
  type: string
- doc: Number of replicates per (architecture, fold) pair to train.
  id: num_replicates
  inputBinding:
    prefix: --num-replicates
  type: string
- doc: Max training epochs. If specified here it overrides any 'max_epochs' specified
    in the hyperparameters.
  id: max_epochs
  inputBinding:
    prefix: --max-epochs
  type: string
- doc: Allele sequences file.
  id: allele_sequences
  inputBinding:
    prefix: --allele-sequences
  type: File
- doc: 'Keras verbosity. Default: 0'
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
- doc: Launch python debugger on error
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Continue training models from an incomplete training run. If this is specified
    then the only required argument is --out-models-dir
  id: continue_incomplete
  inputBinding:
    prefix: --continue-incomplete
  type: boolean
- doc: Do not actually train models. The initialized run can be continued later with
    --continue-incomplete.
  id: only_initialize
  inputBinding:
    prefix: --only-initialize
  type: boolean
- doc: 'Number of local processes to parallelize training over. Set to 0 for serial
    run. Default: 0.'
  id: num_jobs
  inputBinding:
    prefix: --num-jobs
  type: string
- doc: Keras backend. If not specified will use system default.
  id: backend
  inputBinding:
    prefix: --backend
  type: string
- doc: Number of GPUs to attempt to parallelize across. Requires running in parallel.
  id: gpus
  inputBinding:
    prefix: --gpus
  type: string
- doc: Maximum number of workers to assign to a GPU. Additional tasks will run on
    CPU.
  id: max_workers_per_gpu
  inputBinding:
    prefix: --max-workers-per-gpu
  type: string
- doc: Restart workers after N tasks. Workaround for tensorflow memory leaks. Requires
    Python >=3.2.
  id: max_tasks_per_worker
  inputBinding:
    prefix: --max-tasks-per-worker
  type: string
- doc: Write worker stdout and stderr logs to given directory.
  id: worker_log_dir
  inputBinding:
    prefix: --worker-log-dir
  type: string
- doc: 'How many times to rerun failing jobs. Default: 3'
  id: cluster_max_retries
  inputBinding:
    prefix: --cluster-max-retries
  type: string
