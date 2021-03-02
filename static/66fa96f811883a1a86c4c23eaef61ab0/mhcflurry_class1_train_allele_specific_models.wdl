version 1.0

task Mhcflurryclass1trainallelespecificmodels {
  input {
    File? data
    File? hyperparameters
    Array[String] allele
    Int? min_measurements_per_allele
    Int? held_out_fraction_reciprocal
    Int? held_out_fraction_seed
    Boolean? ignore_inequalities
    Int? n_models
    Int? max_epochs
    File? allele_sequences
    String? save_interval
    Int? verbosity
    Int? num_jobs
    String? backend
    Int? gpus
    Int? max_workers_per_gpu
    Int? max_tasks_per_worker
    Directory? worker_log_dir
    String measurement_value
  }
  command <<<
    mhcflurry_class1_train_allele_specific_models \
      ~{measurement_value} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(hyperparameters) then ("--hyperparameters " +  '"' + hyperparameters + '"') else ""} \
      ~{if defined(allele) then ("--allele " +  '"' + allele + '"') else ""} \
      ~{if defined(min_measurements_per_allele) then ("--min-measurements-per-allele " +  '"' + min_measurements_per_allele + '"') else ""} \
      ~{if defined(held_out_fraction_reciprocal) then ("--held-out-fraction-reciprocal " +  '"' + held_out_fraction_reciprocal + '"') else ""} \
      ~{if defined(held_out_fraction_seed) then ("--held-out-fraction-seed " +  '"' + held_out_fraction_seed + '"') else ""} \
      ~{if (ignore_inequalities) then "--ignore-inequalities" else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    data: "Training data CSV. Expected columns: allele, peptide,"
    hyperparameters: "JSON or YAML of hyperparameters"
    allele: "Alleles to train models for. If not specified, all\\nalleles with enough measurements will be used."
    min_measurements_per_allele: "Train models for alleles with >=N measurements."
    held_out_fraction_reciprocal: "Hold out 1/N fraction of data (for e.g. subsequent\\nmodel selection. For example, specify 5 to hold out 20\\npercent of the data."
    held_out_fraction_seed: "Seed for randomizing which measurements are held out.\\nOnly matters when --held-out-fraction is specified.\\nDefault: 0."
    ignore_inequalities: "Do not use affinity value inequalities even when\\npresent in data"
    n_models: "Ensemble size, i.e. how many models to train for each\\narchitecture. If specified here it overrides any\\n'n_models' specified in the hyperparameters."
    max_epochs: "Max training epochs. If specified here it overrides\\nany 'max_epochs' specified in the hyperparameters."
    allele_sequences: "Allele sequences file. Used for computing allele\\nsimilarity matrix."
    save_interval: "Write models to disk every N seconds. Only affects\\nparallel runs; serial runs write each model to disk as\\nit is trained."
    verbosity: "Keras verbosity. Default: 0"
    num_jobs: "Number of local processes to parallelize training\\nover. Set to 0 for serial run. Default: 0."
    backend: "Keras backend. If not specified will use system\\ndefault."
    gpus: "Number of GPUs to attempt to parallelize across.\\nRequires running in parallel."
    max_workers_per_gpu: "Maximum number of workers to assign to a GPU.\\nAdditional tasks will run on CPU."
    max_tasks_per_worker: "Restart workers after N tasks. Workaround for\\ntensorflow memory leaks. Requires Python >=3.2."
    worker_log_dir: "Write worker stdout and stderr logs to given\\ndirectory.\\n"
    measurement_value: "--out-models-dir DIR  Directory to write models and manifest"
  }
  output {
    File out_stdout = stdout()
  }
}