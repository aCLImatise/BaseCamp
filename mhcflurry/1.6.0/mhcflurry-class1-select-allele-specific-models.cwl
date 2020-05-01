#!/usr/bin/env cwl-runner

baseCommand:
- mhcflurry-class1-select-allele-specific-models
class: CommandLineTool
cwlVersion: v1.0
id: mhcflurry-class1-select-allele-specific-models
inputs:
- doc: Alleles to select models for. If not specified, all alleles with enough measurements
    will be used.
  id: allele
  inputBinding:
    prefix: --allele
  type:
    items: string
    type: array
- doc: Min number of models to select per allele when using combined selector
  id: combined_min_models
  inputBinding:
    prefix: --combined-min-models
  type: string
- doc: Max number of models to select per allele when using combined selector
  id: combined_max_models
  inputBinding:
    prefix: --combined-max-models
  type: string
- doc: 'Use only model selectors that can contribute at least X % to the total score.
    Default: 1.0'
  id: combined_min_contribution_percent
  inputBinding:
    prefix: --combined-min-contribution-percent
  type: string
- doc: Min number of measurements required for an allele to use mass-spec model selection
  id: mass_spec_min_measurements
  inputBinding:
    prefix: --mass-spec-min-measurements
  type: string
- doc: Min number of models to select per allele when using mass-spec selector
  id: mass_spec_min_models
  inputBinding:
    prefix: --mass-spec-min-models
  type: string
- doc: Max number of models to select per allele when using mass-spec selector
  id: mass_spec_max_models
  inputBinding:
    prefix: --mass-spec-max-models
  type: string
- doc: Min number of measurements required for an allele to use MSE model selection
  id: mse_min_measurements
  inputBinding:
    prefix: --mse-min-measurements
  type: string
- doc: Min number of models to select per allele when using MSE selector
  id: mse_min_models
  inputBinding:
    prefix: --mse-min-models
  type: string
- doc: Max number of models to select per allele when using MSE selector
  id: mse_max_models
  inputBinding:
    prefix: --mse-max-models
  type: string
- doc: Scoring procedures to use in order
  id: scoring
  inputBinding:
    prefix: --scoring
  type:
    items: string
    type: array
- doc: Min number of models to select per allele when using consensus selector
  id: consensus_min_models
  inputBinding:
    prefix: --consensus-min-models
  type: string
- doc: Max number of models to select per allele when using consensus selector
  id: consensus_max_models
  inputBinding:
    prefix: --consensus-max-models
  type: string
- doc: Num peptides per length to use for consensus scoring
  id: consensus_num_peptides_per_length
  inputBinding:
    prefix: --consensus-num-peptides-per-length
  type: string
- doc: 'Regular expression for mass-spec data. Runs on measurement_source col.Default:
    mass[- ]spec.'
  id: mass_spec_regex
  inputBinding:
    prefix: --mass-spec-regex
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
