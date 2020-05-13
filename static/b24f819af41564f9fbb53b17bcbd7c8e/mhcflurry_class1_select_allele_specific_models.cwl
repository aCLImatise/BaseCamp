class: CommandLineTool
id: mhcflurry_class1_select_allele_specific_models.cwl
inputs:
- id: allele
  doc: Alleles to select models for. If not specified, all alleles with enough measurements
    will be used.
  type: string[]
  inputBinding:
    prefix: --allele
- id: combined_min_models
  doc: Min number of models to select per allele when using combined selector
  type: string
  inputBinding:
    prefix: --combined-min-models
- id: combined_max_models
  doc: Max number of models to select per allele when using combined selector
  type: string
  inputBinding:
    prefix: --combined-max-models
- id: combined_min_contribution_percent
  doc: 'Use only model selectors that can contribute at least X % to the total score.
    Default: 1.0'
  type: string
  inputBinding:
    prefix: --combined-min-contribution-percent
- id: mass_spec_min_measurements
  doc: Min number of measurements required for an allele to use mass-spec model selection
  type: string
  inputBinding:
    prefix: --mass-spec-min-measurements
- id: mass_spec_min_models
  doc: Min number of models to select per allele when using mass-spec selector
  type: string
  inputBinding:
    prefix: --mass-spec-min-models
- id: mass_spec_max_models
  doc: Max number of models to select per allele when using mass-spec selector
  type: string
  inputBinding:
    prefix: --mass-spec-max-models
- id: mse_min_measurements
  doc: Min number of measurements required for an allele to use MSE model selection
  type: string
  inputBinding:
    prefix: --mse-min-measurements
- id: mse_min_models
  doc: Min number of models to select per allele when using MSE selector
  type: string
  inputBinding:
    prefix: --mse-min-models
- id: mse_max_models
  doc: Max number of models to select per allele when using MSE selector
  type: string
  inputBinding:
    prefix: --mse-max-models
- id: scoring
  doc: Scoring procedures to use in order
  type: string[]
  inputBinding:
    prefix: --scoring
- id: consensus_min_models
  doc: Min number of models to select per allele when using consensus selector
  type: string
  inputBinding:
    prefix: --consensus-min-models
- id: consensus_max_models
  doc: Max number of models to select per allele when using consensus selector
  type: string
  inputBinding:
    prefix: --consensus-max-models
- id: consensus_num_peptides_per_length
  doc: Num peptides per length to use for consensus scoring
  type: string
  inputBinding:
    prefix: --consensus-num-peptides-per-length
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
outputs: []
cwlVersion: v1.1
baseCommand:
- mhcflurry-class1-select-allele-specific-models
