class: CommandLineTool
id: mhcflurry_class1_train_allele_specific_models.cwl
inputs:
- id: data
  doc: 'Training data CSV. Expected columns: allele, peptide, measurement_value'
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
- id: allele
  doc: Alleles to train models for. If not specified, all alleles with enough measurements
    will be used.
  type: string[]
  inputBinding:
    prefix: --allele
- id: min_measurements_per_allele
  doc: Train models for alleles with >=N measurements.
  type: string
  inputBinding:
    prefix: --min-measurements-per-allele
- id: held_out_fraction_reciprocal
  doc: Hold out 1/N fraction of data (for e.g. subsequent model selection. For example,
    specify 5 to hold out 20 percent of the data.
  type: string
  inputBinding:
    prefix: --held-out-fraction-reciprocal
- id: held_out_fraction_seed
  doc: 'Seed for randomizing which measurements are held out. Only matters when --held-out-fraction
    is specified. Default: 0.'
  type: string
  inputBinding:
    prefix: --held-out-fraction-seed
- id: ignore_inequalities
  doc: Do not use affinity value inequalities even when present in data
  type: boolean
  inputBinding:
    prefix: --ignore-inequalities
- id: n_models
  doc: Ensemble size, i.e. how many models to train for each architecture. If specified
    here it overrides any 'n_models' specified in the hyperparameters.
  type: string
  inputBinding:
    prefix: --n-models
- id: max_epochs
  doc: Max training epochs. If specified here it overrides any 'max_epochs' specified
    in the hyperparameters.
  type: string
  inputBinding:
    prefix: --max-epochs
- id: allele_sequences
  doc: Allele sequences file. Used for computing allele similarity matrix.
  type: File
  inputBinding:
    prefix: --allele-sequences
- id: save_interval
  doc: Write models to disk every N seconds. Only affects parallel runs; serial runs
    write each model to disk as it is trained.
  type: string
  inputBinding:
    prefix: --save-interval
- id: verbosity
  doc: 'Keras verbosity. Default: 0'
  type: string
  inputBinding:
    prefix: --verbosity
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
outputs: []
cwlVersion: v1.1
baseCommand:
- mhcflurry-class1-train-allele-specific-models
