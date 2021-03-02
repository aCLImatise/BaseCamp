version 1.0

task Mhcflurryclass1selectallelespecificmodels {
  input {
    File? data
    File? exclude_data
    Directory? models_dir
    Directory? out_models_dir
    File? out_unselected_predictions
    String? unselected_accuracy_percentile_threshold
    Int? combined_min_models
    Int? combined_max_models
    Int? combined_min_contribution_percent
    Int? mass_spec_min_measurements
    Int? mass_spec_min_models
    Int? mass_spec_max_models
    Int? mse_min_measurements
    Int? mse_min_models
    Int? mse_max_models
    Array[String] scoring
    Int? consensus_min_models
    Int? consensus_max_models
    Int? consensus_num_peptides_per_length
    String? mass_spec_regex
    Int? verbosity
    Int? num_jobs
    String? backend
    Int? gpus
    Int? max_workers_per_gpu
    Int? max_tasks_per_worker
    Directory? worker_log_dir
    String model
    String select
    Int class_one
    String single
    String allele
    String models_dot
  }
  command <<<
    mhcflurry_class1_select_allele_specific_models \
      ~{model} \
      ~{select} \
      ~{class_one} \
      ~{single} \
      ~{allele} \
      ~{models_dot} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(exclude_data) then ("--exclude-data " +  '"' + exclude_data + '"') else ""} \
      ~{if defined(models_dir) then ("--models-dir " +  '"' + models_dir + '"') else ""} \
      ~{if defined(out_models_dir) then ("--out-models-dir " +  '"' + out_models_dir + '"') else ""} \
      ~{if defined(out_unselected_predictions) then ("--out-unselected-predictions " +  '"' + out_unselected_predictions + '"') else ""} \
      ~{if defined(unselected_accuracy_percentile_threshold) then ("--unselected-accuracy-percentile-threshold " +  '"' + unselected_accuracy_percentile_threshold + '"') else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    data: "Model selection data CSV. Expected columns: allele,\\npeptide, measurement_value"
    exclude_data: "Data to EXCLUDE from model selection. Useful to\\nspecify the original training data used"
    models_dir: "Directory to read models"
    out_models_dir: "Directory to write selected models"
    out_unselected_predictions: "Write predictions for validation data using unselected\\npredictor to FILE.csv"
    unselected_accuracy_percentile_threshold: "Alleles to select models for. If not specified, all\\nalleles with enough measurements will be used."
    combined_min_models: "Min number of models to select per allele when using\\ncombined selector"
    combined_max_models: "Max number of models to select per allele when using\\ncombined selector"
    combined_min_contribution_percent: "Use only model selectors that can contribute at least\\nX % to the total score. Default: 1.0"
    mass_spec_min_measurements: "Min number of measurements required for an allele to\\nuse mass-spec model selection"
    mass_spec_min_models: "Min number of models to select per allele when using\\nmass-spec selector"
    mass_spec_max_models: "Max number of models to select per allele when using\\nmass-spec selector"
    mse_min_measurements: "Min number of measurements required for an allele to\\nuse MSE model selection"
    mse_min_models: "Min number of models to select per allele when using\\nMSE selector"
    mse_max_models: "Max number of models to select per allele when using\\nMSE selector"
    scoring: "Scoring procedures to use in order"
    consensus_min_models: "Min number of models to select per allele when using\\nconsensus selector"
    consensus_max_models: "Max number of models to select per allele when using\\nconsensus selector"
    consensus_num_peptides_per_length: "Num peptides per length to use for consensus scoring"
    mass_spec_regex: "Regular expression for mass-spec data. Runs on\\nmeasurement_source col.Default: mass[- ]spec."
    verbosity: "Keras verbosity. Default: 0"
    num_jobs: "Number of local processes to parallelize training\\nover. Set to 0 for serial run. Default: 0."
    backend: "Keras backend. If not specified will use system\\ndefault."
    gpus: "Number of GPUs to attempt to parallelize across.\\nRequires running in parallel."
    max_workers_per_gpu: "Maximum number of workers to assign to a GPU.\\nAdditional tasks will run on CPU."
    max_tasks_per_worker: "Restart workers after N tasks. Workaround for\\ntensorflow memory leaks. Requires Python >=3.2."
    worker_log_dir: "Write worker stdout and stderr logs to given\\ndirectory.\\n"
    model: ""
    select: ""
    class_one: ""
    single: ""
    allele: ""
    models_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}