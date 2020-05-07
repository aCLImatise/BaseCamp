class: CommandLineTool
id: mhcflurry_class1_select_pan_allele_models.cwl
inputs:
- id: data
  doc: 'Model selection data CSV. Expected columns: allele, peptide, measurement_value'
  type: File
  inputBinding:
    prefix: --data
- id: models_dir
  doc: Directory to read models
  type: string
  inputBinding:
    prefix: --models-dir
- id: out_models_dir
  doc: Directory to write selected models
  type: string
  inputBinding:
    prefix: --out-models-dir
- id: min_models_per_fold
  doc: Min number of models to select per fold
  type: string
  inputBinding:
    prefix: --min-models-per-fold
- id: max_models_per_fold
  doc: Max number of models to select per fold
  type: string
  inputBinding:
    prefix: --max-models-per-fold
- id: mass_spec_regex
  doc: 'Regular expression for mass-spec data. Runs on measurement_source col.Default:
    mass[- ]spec.'
  type: string
  inputBinding:
    prefix: --mass-spec-regex
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
- id: cluster_max_retries
  doc: 'How many times to rerun failing jobs. Default: 3'
  type: string
  inputBinding:
    prefix: --cluster-max-retries
outputs: []
cwlVersion: v1.1
baseCommand:
- mhcflurry-class1-select-pan-allele-models
