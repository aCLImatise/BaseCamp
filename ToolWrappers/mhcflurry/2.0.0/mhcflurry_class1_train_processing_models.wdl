version 1.0

task Mhcflurryclass1trainprocessingmodels {
  input {
    File? data
    Directory? out_models_dir
    File? hyperparameters
    Int? held_out_samples
    Int? num_folds
    Int? num_replicates
    Int? verbosity
    Boolean? debug
    Boolean? continue_incomplete
    Boolean? only_initialize
    Int? num_jobs
    String? backend
    Int? gpus
    Int? max_workers_per_gpu
    Int? max_tasks_per_worker
    Directory? worker_log_dir
    String train_dot
  }
  command <<<
    mhcflurry_class1_train_processing_models \
      ~{train_dot} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(out_models_dir) then ("--out-models-dir " +  '"' + out_models_dir + '"') else ""} \
      ~{if defined(hyperparameters) then ("--hyperparameters " +  '"' + hyperparameters + '"') else ""} \
      ~{if defined(held_out_samples) then ("--held-out-samples " +  '"' + held_out_samples + '"') else ""} \
      ~{if defined(num_folds) then ("--num-folds " +  '"' + num_folds + '"') else ""} \
      ~{if defined(num_replicates) then ("--num-replicates " +  '"' + num_replicates + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (continue_incomplete) then "--continue-incomplete" else ""} \
      ~{if (only_initialize) then "--only-initialize" else ""} \
      ~{if defined(num_jobs) then ("--num-jobs " +  '"' + num_jobs + '"') else ""} \
      ~{if defined(backend) then ("--backend " +  '"' + backend + '"') else ""} \
      ~{if defined(gpus) then ("--gpus " +  '"' + gpus + '"') else ""} \
      ~{if defined(max_workers_per_gpu) then ("--max-workers-per-gpu " +  '"' + max_workers_per_gpu + '"') else ""} \
      ~{if defined(max_tasks_per_worker) then ("--max-tasks-per-worker " +  '"' + max_tasks_per_worker + '"') else ""} \
      ~{if defined(worker_log_dir) then ("--worker-log-dir " +  '"' + worker_log_dir + '"') else ""}
  >>>
  parameter_meta {
    data: "Training data CSV. Expected columns: peptide, n_flank,\\nc_flank, hit"
    out_models_dir: "Directory to write models and manifest"
    hyperparameters: "JSON or YAML of hyperparameters"
    held_out_samples: "Number of experiments to hold out per fold"
    num_folds: "Number of training folds."
    num_replicates: "Number of replicates per (architecture, fold) pair to"
    verbosity: "Keras verbosity. Default: 0"
    debug: "Launch python debugger on error"
    continue_incomplete: "Continue training models from an incomplete training\\nrun. If this is specified then the only required\\nargument is --out-models-dir"
    only_initialize: "Do not actually train models. The initialized run can\\nbe continued later with --continue-incomplete."
    num_jobs: "Number of local processes to parallelize training\\nover. Set to 0 for serial run. Default: 0."
    backend: "Keras backend. If not specified will use system\\ndefault."
    gpus: "Number of GPUs to attempt to parallelize across.\\nRequires running in parallel."
    max_workers_per_gpu: "Maximum number of workers to assign to a GPU.\\nAdditional tasks will run on CPU."
    max_tasks_per_worker: "Restart workers after N tasks. Workaround for\\ntensorflow memory leaks. Requires Python >=3.2."
    worker_log_dir: "Write worker stdout and stderr logs to given\\ndirectory."
    train_dot: "--max-epochs N        Max training epochs. If specified here it overrides"
  }
  output {
    File out_stdout = stdout()
  }
}