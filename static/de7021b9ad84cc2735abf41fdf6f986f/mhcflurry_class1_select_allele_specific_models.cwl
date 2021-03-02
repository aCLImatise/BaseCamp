class: CommandLineTool
id: mhcflurry_class1_select_allele_specific_models.cwl
inputs:
- id: in_data
  doc: "Model selection data CSV. Expected columns: allele,\npeptide, measurement_value"
  type: File?
  inputBinding:
    prefix: --data
- id: in_exclude_data
  doc: "Data to EXCLUDE from model selection. Useful to\nspecify the original training\
    \ data used"
  type: File?
  inputBinding:
    prefix: --exclude-data
- id: in_models_dir
  doc: Directory to read models
  type: Directory?
  inputBinding:
    prefix: --models-dir
- id: in_out_models_dir
  doc: Directory to write selected models
  type: Directory?
  inputBinding:
    prefix: --out-models-dir
- id: in_out_unselected_predictions
  doc: "Write predictions for validation data using unselected\npredictor to FILE.csv"
  type: File?
  inputBinding:
    prefix: --out-unselected-predictions
- id: in_unselected_accuracy_percentile_threshold
  doc: "Alleles to select models for. If not specified, all\nalleles with enough measurements\
    \ will be used."
  type: string?
  inputBinding:
    prefix: --unselected-accuracy-percentile-threshold
- id: in_combined_min_models
  doc: "Min number of models to select per allele when using\ncombined selector"
  type: long?
  inputBinding:
    prefix: --combined-min-models
- id: in_combined_max_models
  doc: "Max number of models to select per allele when using\ncombined selector"
  type: long?
  inputBinding:
    prefix: --combined-max-models
- id: in_combined_min_contribution_percent
  doc: "Use only model selectors that can contribute at least\nX % to the total score.\
    \ Default: 1.0"
  type: long?
  inputBinding:
    prefix: --combined-min-contribution-percent
- id: in_mass_spec_min_measurements
  doc: "Min number of measurements required for an allele to\nuse mass-spec model\
    \ selection"
  type: long?
  inputBinding:
    prefix: --mass-spec-min-measurements
- id: in_mass_spec_min_models
  doc: "Min number of models to select per allele when using\nmass-spec selector"
  type: long?
  inputBinding:
    prefix: --mass-spec-min-models
- id: in_mass_spec_max_models
  doc: "Max number of models to select per allele when using\nmass-spec selector"
  type: long?
  inputBinding:
    prefix: --mass-spec-max-models
- id: in_mse_min_measurements
  doc: "Min number of measurements required for an allele to\nuse MSE model selection"
  type: long?
  inputBinding:
    prefix: --mse-min-measurements
- id: in_mse_min_models
  doc: "Min number of models to select per allele when using\nMSE selector"
  type: long?
  inputBinding:
    prefix: --mse-min-models
- id: in_mse_max_models
  doc: "Max number of models to select per allele when using\nMSE selector"
  type: long?
  inputBinding:
    prefix: --mse-max-models
- id: in_scoring
  doc: Scoring procedures to use in order
  type: string[]
  inputBinding:
    prefix: --scoring
- id: in_consensus_min_models
  doc: "Min number of models to select per allele when using\nconsensus selector"
  type: long?
  inputBinding:
    prefix: --consensus-min-models
- id: in_consensus_max_models
  doc: "Max number of models to select per allele when using\nconsensus selector"
  type: long?
  inputBinding:
    prefix: --consensus-max-models
- id: in_consensus_num_peptides_per_length
  doc: Num peptides per length to use for consensus scoring
  type: long?
  inputBinding:
    prefix: --consensus-num-peptides-per-length
- id: in_mass_spec_regex
  doc: "Regular expression for mass-spec data. Runs on\nmeasurement_source col.Default:\
    \ mass[- ]spec."
  type: string?
  inputBinding:
    prefix: --mass-spec-regex
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
- id: in_model
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_select
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_class_one
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_single
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_allele
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_models_dot
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mhcflurry-class1-select-allele-specific-models
