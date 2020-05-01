#!/usr/bin/env cwl-runner

baseCommand:
- mhcflurry-class1-train-allele-specific-models
class: CommandLineTool
cwlVersion: v1.0
id: mhcflurry-class1-train-allele-specific-models
inputs:
- doc: 'Training data CSV. Expected columns: allele, peptide, measurement_value'
  id: data
  inputBinding:
    prefix: --data
  type: File
- doc: Directory to write models and manifest
  id: out_models_dir
  inputBinding:
    prefix: --out-models-dir
  type: string
- doc: JSON or YAML of hyperparameters
  id: hyperparameters
  inputBinding:
    prefix: --hyperparameters
  type: File
- doc: Alleles to train models for. If not specified, all alleles with enough measurements
    will be used.
  id: allele
  inputBinding:
    prefix: --allele
  type:
    items: string
    type: array
- doc: Train models for alleles with >=N measurements.
  id: min_measurements_per_allele
  inputBinding:
    prefix: --min-measurements-per-allele
  type: string
- doc: Hold out 1/N fraction of data (for e.g. subsequent model selection. For example,
    specify 5 to hold out 20 percent of the data.
  id: held_out_fraction_reciprocal
  inputBinding:
    prefix: --held-out-fraction-reciprocal
  type: string
- doc: 'Seed for randomizing which measurements are held out. Only matters when --held-out-fraction
    is specified. Default: 0.'
  id: held_out_fraction_seed
  inputBinding:
    prefix: --held-out-fraction-seed
  type: string
- doc: Do not use affinity value inequalities even when present in data
  id: ignore_inequalities
  inputBinding:
    prefix: --ignore-inequalities
  type: boolean
- doc: Ensemble size, i.e. how many models to train for each architecture. If specified
    here it overrides any 'n_models' specified in the hyperparameters.
  id: n_models
  inputBinding:
    prefix: --n-models
  type: string
- doc: Max training epochs. If specified here it overrides any 'max_epochs' specified
    in the hyperparameters.
  id: max_epochs
  inputBinding:
    prefix: --max-epochs
  type: string
- doc: Allele sequences file. Used for computing allele similarity matrix.
  id: allele_sequences
  inputBinding:
    prefix: --allele-sequences
  type: File
- doc: Write models to disk every N seconds. Only affects parallel runs; serial runs
    write each model to disk as it is trained.
  id: save_interval
  inputBinding:
    prefix: --save-interval
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
