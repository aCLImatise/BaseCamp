class: CommandLineTool
id: mhcflurry_class1_train_allele_specific_models.cwl
inputs:
- id: in_data
  doc: 'Training data CSV. Expected columns: allele, peptide,'
  type: File?
  inputBinding:
    prefix: --data
- id: in_hyperparameters
  doc: JSON or YAML of hyperparameters
  type: File?
  inputBinding:
    prefix: --hyperparameters
- id: in_allele
  doc: "Alleles to train models for. If not specified, all\nalleles with enough measurements\
    \ will be used."
  type: string[]
  inputBinding:
    prefix: --allele
- id: in_min_measurements_per_allele
  doc: Train models for alleles with >=N measurements.
  type: long?
  inputBinding:
    prefix: --min-measurements-per-allele
- id: in_held_out_fraction_reciprocal
  doc: "Hold out 1/N fraction of data (for e.g. subsequent\nmodel selection. For example,\
    \ specify 5 to hold out 20\npercent of the data."
  type: long?
  inputBinding:
    prefix: --held-out-fraction-reciprocal
- id: in_held_out_fraction_seed
  doc: "Seed for randomizing which measurements are held out.\nOnly matters when --held-out-fraction\
    \ is specified.\nDefault: 0."
  type: long?
  inputBinding:
    prefix: --held-out-fraction-seed
- id: in_ignore_inequalities
  doc: "Do not use affinity value inequalities even when\npresent in data"
  type: boolean?
  inputBinding:
    prefix: --ignore-inequalities
- id: in_n_models
  doc: "Ensemble size, i.e. how many models to train for each\narchitecture. If specified\
    \ here it overrides any\n'n_models' specified in the hyperparameters."
  type: long?
  inputBinding:
    prefix: --n-models
- id: in_max_epochs
  doc: "Max training epochs. If specified here it overrides\nany 'max_epochs' specified\
    \ in the hyperparameters."
  type: long?
  inputBinding:
    prefix: --max-epochs
- id: in_allele_sequences
  doc: "Allele sequences file. Used for computing allele\nsimilarity matrix."
  type: File?
  inputBinding:
    prefix: --allele-sequences
- id: in_save_interval
  doc: "Write models to disk every N seconds. Only affects\nparallel runs; serial\
    \ runs write each model to disk as\nit is trained."
  type: string?
  inputBinding:
    prefix: --save-interval
- id: in_verbosity
  doc: 'Keras verbosity. Default: 0'
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_num_jobs
  doc: "Number of local processes to parallelize training\nover. Set to 0 for serial\
    \ run. Default: 0."
  type: long?
  inputBinding:
    prefix: --num-jobs
- id: in_backend
  doc: "Keras backend. If not specified will use system\ndefault."
  type: string?
  inputBinding:
    prefix: --backend
- id: in_gpus
  doc: "Number of GPUs to attempt to parallelize across.\nRequires running in parallel."
  type: long?
  inputBinding:
    prefix: --gpus
- id: in_max_workers_per_gpu
  doc: "Maximum number of workers to assign to a GPU.\nAdditional tasks will run on\
    \ CPU."
  type: long?
  inputBinding:
    prefix: --max-workers-per-gpu
- id: in_max_tasks_per_worker
  doc: "Restart workers after N tasks. Workaround for\ntensorflow memory leaks. Requires\
    \ Python >=3.2."
  type: long?
  inputBinding:
    prefix: --max-tasks-per-worker
- id: in_worker_log_dir
  doc: "Write worker stdout and stderr logs to given\ndirectory.\n"
  type: Directory?
  inputBinding:
    prefix: --worker-log-dir
- id: in_measurement_value
  doc: --out-models-dir DIR  Directory to write models and manifest
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mhcflurry:2.0.1--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- mhcflurry-class1-train-allele-specific-models
