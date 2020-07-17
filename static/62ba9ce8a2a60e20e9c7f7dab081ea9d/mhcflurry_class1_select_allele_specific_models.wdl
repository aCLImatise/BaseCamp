version 1.0

task MhcflurryClass1SelectAlleleSpecificModels {
  input {
    Array[String] alleles_select_models
    String? combined_min_models
    String? combined_max_models
    String? combined_min_contribution_percent
    String? mass_spec_min_measurements
    String? mass_spec_min_models
    String? mass_spec_max_models
    String? mse_min_measurements
    String? mse_min_models
    String? mse_max_models
    Array[String] scoring
    String? consensus_min_models
    String? consensus_max_models
    String? consensus_num_peptides_per_length
    String? mass_spec_regex
    String? verbosity
    String? num_jobs
    String? backend
    String? gpus
    String? max_workers_per_gpu
    String? max_tasks_per_worker
    String? worker_log_dir
    String model
    String select
    String class_one
    String single
    String var_26
    String models_dot
  }
  command <<<
    mhcflurry-class1-select-allele-specific-models \
      ~{model} \
      ~{select} \
      ~{class_one} \
      ~{single} \
      ~{var_26} \
      ~{models_dot} \
      ~{if defined(alleles_select_models) then ("--allele " +  '"' + alleles_select_models + '"') else ""} \
      ~{if defined(combined_min_models) then ("--combined-min-models " +  '"' + combined_min_models + '"') else ""} \
      ~{if defined(combined_max_models) then ("--combined-max-models " +  '"' + combined_max_models + '"') else ""} \
      ~{if defined(combined_min_contribution_percent) then ("--combined-min-contribution-percent " +  '"' + combined_min_contribution_percent + '"') else ""} \
      ~{if defined(mass_spec_min_measurements) then ("--mass-spec-min-measurements " +  '"' + mass_spec_min_measurements + '"') else ""} \
      ~{if defined(mass_spec_min_models) then ("--mass-spec-min-models " +  '"' + mass_spec_min_models + '"') else ""} \
      ~{if defined(mass_spec_max_models) then ("--mass-spec-max-models " +  '"' + mass_spec_max_models + '"') else ""} \
      ~{if defined(mse_min_measurements) then ("--mse-min-measurements " +  '"' + mse_min_measurements + '"') else ""} \
      ~{if defined(mse_min_models) then ("--mse-min-models " +  '"' + mse_min_models + '"') else ""} \
      ~{if defined(mse_max_models) then ("--mse-max-models " +  '"' + mse_max_models + '"') else ""} \
      ~{if defined(scoring) then ("--scoring " +  '"' + scoring + '"') else ""} \
      ~{if defined(consensus_min_models) then ("--consensus-min-models " +  '"' + consensus_min_models + '"') else ""} \
      ~{if defined(consensus_max_models) then ("--consensus-max-models " +  '"' + consensus_max_models + '"') else ""} \
      ~{if defined(consensus_num_peptides_per_length) then ("--consensus-num-peptides-per-length " +  '"' + consensus_num_peptides_per_length + '"') else ""} \
      ~{if defined(mass_spec_regex) then ("--mass-spec-regex " +  '"' + mass_spec_regex + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(num_jobs) then ("--num-jobs " +  '"' + num_jobs + '"') else ""} \
      ~{if defined(backend) then ("--backend " +  '"' + backend + '"') else ""} \
      ~{if defined(gpus) then ("--gpus " +  '"' + gpus + '"') else ""} \
      ~{if defined(max_workers_per_gpu) then ("--max-workers-per-gpu " +  '"' + max_workers_per_gpu + '"') else ""} \
      ~{if defined(max_tasks_per_worker) then ("--max-tasks-per-worker " +  '"' + max_tasks_per_worker + '"') else ""} \
      ~{if defined(worker_log_dir) then ("--worker-log-dir " +  '"' + worker_log_dir + '"') else ""}
  >>>
  parameter_meta {
    alleles_select_models: "Alleles to select models for. If not specified, all alleles with enough measurements will be used."
    combined_min_models: "Min number of models to select per allele when using combined selector"
    combined_max_models: "Max number of models to select per allele when using combined selector"
    combined_min_contribution_percent: "Use only model selectors that can contribute at least X % to the total score. Default: 1.0"
    mass_spec_min_measurements: "Min number of measurements required for an allele to use mass-spec model selection"
    mass_spec_min_models: "Min number of models to select per allele when using mass-spec selector"
    mass_spec_max_models: "Max number of models to select per allele when using mass-spec selector"
    mse_min_measurements: "Min number of measurements required for an allele to use MSE model selection"
    mse_min_models: "Min number of models to select per allele when using MSE selector"
    mse_max_models: "Max number of models to select per allele when using MSE selector"
    scoring: "Scoring procedures to use in order"
    consensus_min_models: "Min number of models to select per allele when using consensus selector"
    consensus_max_models: "Max number of models to select per allele when using consensus selector"
    consensus_num_peptides_per_length: "Num peptides per length to use for consensus scoring"
    mass_spec_regex: "Regular expression for mass-spec data. Runs on measurement_source col.Default: mass[- ]spec."
    verbosity: "Keras verbosity. Default: 0"
    num_jobs: "Number of local processes to parallelize training over. Set to 0 for serial run. Default: 0."
    backend: "Keras backend. If not specified will use system default."
    gpus: "Number of GPUs to attempt to parallelize across. Requires running in parallel."
    max_workers_per_gpu: "Maximum number of workers to assign to a GPU. Additional tasks will run on CPU."
    max_tasks_per_worker: "Restart workers after N tasks. Workaround for tensorflow memory leaks. Requires Python >=3.2."
    worker_log_dir: "Write worker stdout and stderr logs to given directory."
    model: ""
    select: ""
    class_one: ""
    single: ""
    var_26: ""
    models_dot: ""
  }
}