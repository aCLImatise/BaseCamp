#!/usr/bin/env cwl-runner

baseCommand:
- mhcflurry-class1-select-processing-models
class: CommandLineTool
cwlVersion: v1.0
id: mhcflurry-class1-select-processing-models
inputs:
- doc: 'Model selection data CSV. Expected columns: peptide, hit, fold_0, ..., fold_N'
  id: data
  inputBinding:
    prefix: --data
  type: File
- doc: Directory to read models
  id: models_dir
  inputBinding:
    prefix: --models-dir
  type: string
- doc: Directory to write selected models
  id: out_models_dir
  inputBinding:
    prefix: --out-models-dir
  type: string
- doc: Min number of models to select per fold
  id: min_models_per_fold
  inputBinding:
    prefix: --min-models-per-fold
  type: string
- doc: Max number of models to select per fold
  id: max_models_per_fold
  inputBinding:
    prefix: --max-models-per-fold
  type: string
- doc: 'Keras verbosity. Default: 0'
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
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
