class: CommandLineTool
id: mhcflurry_class1_train_processing_models.cwl
inputs:
- id: data
  doc: 'Training data CSV. Expected columns: peptide, n_flank, c_flank, hit'
  type: File
  inputBinding:
    prefix: --data
- id: out_models_dir
  doc: Directory to write models and manifest
  type: string
  inputBinding:
    prefix: --out-models-dir
- id: hyperparameters
  doc: JSON or YAML of hyperparameters
  type: File
  inputBinding:
    prefix: --hyperparameters
- id: held_out_samples
  doc: Number of experiments to hold out per fold
  type: string
  inputBinding:
    prefix: --held-out-samples
- id: num_folds
  doc: Number of training folds.
  type: string
  inputBinding:
    prefix: --num-folds
- id: num_replicates
  doc: Number of replicates per (architecture, fold) pair to train.
  type: string
  inputBinding:
    prefix: --num-replicates
- id: max_epochs
  doc: Max training epochs. If specified here it overrides any 'max_epochs' specified
    in the hyperparameters.
  type: string
  inputBinding:
    prefix: --max-epochs
- id: verbosity
  doc: 'Keras verbosity. Default: 0'
  type: string
  inputBinding:
    prefix: --verbosity
- id: debug
  doc: Launch python debugger on error
  type: boolean
  inputBinding:
    prefix: --debug
- id: continue_incomplete
  doc: Continue training models from an incomplete training run. If this is specified
    then the only required argument is --out-models-dir
  type: boolean
  inputBinding:
    prefix: --continue-incomplete
- id: only_initialize
  doc: Do not actually train models. The initialized run can be continued later with
    --continue-incomplete.
  type: boolean
  inputBinding:
    prefix: --only-initialize
- id: num_jobs
  doc: 'Number of local processes to parallelize training over. Set to 0 for serial
    run. Default: 0.'
  type: string
  inputBinding:
    prefix: --num-jobs
- id: backend
  doc: Keras backend. If not specified will use system default.
  type: string
  inputBinding:
    prefix: --backend
- id: gpus
  doc: Number of GPUs to attempt to parallelize across. Requires running in parallel.
  type: string
  inputBinding:
    prefix: --gpus
- id: max_workers_per_gpu
  doc: Maximum number of workers to assign to a GPU. Additional tasks will run on
    CPU.
  type: string
  inputBinding:
    prefix: --max-workers-per-gpu
- id: max_tasks_per_worker
  doc: Restart workers after N tasks. Workaround for tensorflow memory leaks. Requires
    Python >=3.2.
  type: string
  inputBinding:
    prefix: --max-tasks-per-worker
- id: worker_log_dir
  doc: Write worker stdout and stderr logs to given directory.
  type: string
  inputBinding:
    prefix: --worker-log-dir
- id: cluster_max_retries
  doc: 'How many times to rerun failing jobs. Default: 3'
  type: string
  inputBinding:
    prefix: --cluster-max-retries
outputs: []
cwlVersion: v1.1
baseCommand:
- mhcflurry-class1-train-processing-models
