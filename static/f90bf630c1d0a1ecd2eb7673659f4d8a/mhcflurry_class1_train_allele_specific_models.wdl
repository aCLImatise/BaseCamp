version 1.0

task MhcflurryClass1TrainAlleleSpecificModels {
  input {
    File? data
    String? out_models_dir
    File? hyperparameters
    Array[String] alleles_train_models
    String? min_measurements_per_allele
    String? held_out_fraction_reciprocal
    String? held_out_fraction_seed
    Boolean? ignore_inequalities
    String? n_models
    String? max_epochs
    File? allele_sequences
    String? save_interval
    String? verbosity
    String? num_jobs
    String? backend
    String? gpus
    String? max_workers_per_gpu
    String? max_tasks_per_worker
    String? worker_log_dir
    String train
    String class_one
    String single
    String var_22
    String models_dot
  }
  command <<<
    mhcflurry-class1-train-allele-specific-models \
      ~{train} \
      ~{class_one} \
      ~{single} \
      ~{var_22} \
      ~{models_dot} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(out_models_dir) then ("--out-models-dir " +  '"' + out_models_dir + '"') else ""} \
      ~{if defined(hyperparameters) then ("--hyperparameters " +  '"' + hyperparameters + '"') else ""} \
      ~{if defined(alleles_train_models) then ("--allele " +  '"' + alleles_train_models + '"') else ""} \
      ~{if defined(min_measurements_per_allele) then ("--min-measurements-per-allele " +  '"' + min_measurements_per_allele + '"') else ""} \
      ~{if defined(held_out_fraction_reciprocal) then ("--held-out-fraction-reciprocal " +  '"' + held_out_fraction_reciprocal + '"') else ""} \
      ~{if defined(held_out_fraction_seed) then ("--held-out-fraction-seed " +  '"' + held_out_fraction_seed + '"') else ""} \
      ~{true="--ignore-inequalities" false="" ignore_inequalities} \
      ~{if defined(n_models) then ("--n-models " +  '"' + n_models + '"') else ""} \
      ~{if defined(max_epochs) then ("--max-epochs " +  '"' + max_epochs + '"') else ""} \
      ~{if defined(allele_sequences) then ("--allele-sequences " +  '"' + allele_sequences + '"') else ""} \
      ~{if defined(save_interval) then ("--save-interval " +  '"' + save_interval + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(num_jobs) then ("--num-jobs " +  '"' + num_jobs + '"') else ""} \
      ~{if defined(backend) then ("--backend " +  '"' + backend + '"') else ""} \
      ~{if defined(gpus) then ("--gpus " +  '"' + gpus + '"') else ""} \
      ~{if defined(max_workers_per_gpu) then ("--max-workers-per-gpu " +  '"' + max_workers_per_gpu + '"') else ""} \
      ~{if defined(max_tasks_per_worker) then ("--max-tasks-per-worker " +  '"' + max_tasks_per_worker + '"') else ""} \
      ~{if defined(worker_log_dir) then ("--worker-log-dir " +  '"' + worker_log_dir + '"') else ""}
  >>>
  parameter_meta {
    data: "Training data CSV. Expected columns: allele, peptide, measurement_value"
    out_models_dir: "Directory to write models and manifest"
    hyperparameters: "JSON or YAML of hyperparameters"
    alleles_train_models: "Alleles to train models for. If not specified, all alleles with enough measurements will be used."
    min_measurements_per_allele: "Train models for alleles with >=N measurements."
    held_out_fraction_reciprocal: "Hold out 1/N fraction of data (for e.g. subsequent model selection. For example, specify 5 to hold out 20 percent of the data."
    held_out_fraction_seed: "Seed for randomizing which measurements are held out. Only matters when --held-out-fraction is specified. Default: 0."
    ignore_inequalities: "Do not use affinity value inequalities even when present in data"
    n_models: "Ensemble size, i.e. how many models to train for each architecture. If specified here it overrides any 'n_models' specified in the hyperparameters."
    max_epochs: "Max training epochs. If specified here it overrides any 'max_epochs' specified in the hyperparameters."
    allele_sequences: "Allele sequences file. Used for computing allele similarity matrix."
    save_interval: "Write models to disk every N seconds. Only affects parallel runs; serial runs write each model to disk as it is trained."
    verbosity: "Keras verbosity. Default: 0"
    num_jobs: "Number of local processes to parallelize training over. Set to 0 for serial run. Default: 0."
    backend: "Keras backend. If not specified will use system default."
    gpus: "Number of GPUs to attempt to parallelize across. Requires running in parallel."
    max_workers_per_gpu: "Maximum number of workers to assign to a GPU. Additional tasks will run on CPU."
    max_tasks_per_worker: "Restart workers after N tasks. Workaround for tensorflow memory leaks. Requires Python >=3.2."
    worker_log_dir: "Write worker stdout and stderr logs to given directory."
    train: ""
    class_one: ""
    single: ""
    var_22: ""
    models_dot: ""
  }
}