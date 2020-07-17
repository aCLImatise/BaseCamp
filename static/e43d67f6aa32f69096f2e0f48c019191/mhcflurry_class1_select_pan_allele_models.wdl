version 1.0

task MhcflurryClass1SelectPanAlleleModels {
  input {
    File? data
    String? models_dir
    String? out_models_dir
    String? min_models_per_fold
    String? max_models_per_fold
    String? mass_spec_regex
    String? verbosity
    String? num_jobs
    String? backend
    String? gpus
    String? max_workers_per_gpu
    String? max_tasks_per_worker
    String? worker_log_dir
    String? cluster_max_retries
    String model
    String select
    String class_one
    String pan_allele
    String models_dot
  }
  command <<<
    mhcflurry-class1-select-pan-allele-models \
      ~{model} \
      ~{select} \
      ~{class_one} \
      ~{pan_allele} \
      ~{models_dot} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(models_dir) then ("--models-dir " +  '"' + models_dir + '"') else ""} \
      ~{if defined(out_models_dir) then ("--out-models-dir " +  '"' + out_models_dir + '"') else ""} \
      ~{if defined(min_models_per_fold) then ("--min-models-per-fold " +  '"' + min_models_per_fold + '"') else ""} \
      ~{if defined(max_models_per_fold) then ("--max-models-per-fold " +  '"' + max_models_per_fold + '"') else ""} \
      ~{if defined(mass_spec_regex) then ("--mass-spec-regex " +  '"' + mass_spec_regex + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(num_jobs) then ("--num-jobs " +  '"' + num_jobs + '"') else ""} \
      ~{if defined(backend) then ("--backend " +  '"' + backend + '"') else ""} \
      ~{if defined(gpus) then ("--gpus " +  '"' + gpus + '"') else ""} \
      ~{if defined(max_workers_per_gpu) then ("--max-workers-per-gpu " +  '"' + max_workers_per_gpu + '"') else ""} \
      ~{if defined(max_tasks_per_worker) then ("--max-tasks-per-worker " +  '"' + max_tasks_per_worker + '"') else ""} \
      ~{if defined(worker_log_dir) then ("--worker-log-dir " +  '"' + worker_log_dir + '"') else ""} \
      ~{if defined(cluster_max_retries) then ("--cluster-max-retries " +  '"' + cluster_max_retries + '"') else ""}
  >>>
  parameter_meta {
    data: "Model selection data CSV. Expected columns: allele, peptide, measurement_value"
    models_dir: "Directory to read models"
    out_models_dir: "Directory to write selected models"
    min_models_per_fold: "Min number of models to select per fold"
    max_models_per_fold: "Max number of models to select per fold"
    mass_spec_regex: "Regular expression for mass-spec data. Runs on measurement_source col.Default: mass[- ]spec."
    verbosity: "Keras verbosity. Default: 0"
    num_jobs: "Number of local processes to parallelize training over. Set to 0 for serial run. Default: 0."
    backend: "Keras backend. If not specified will use system default."
    gpus: "Number of GPUs to attempt to parallelize across. Requires running in parallel."
    max_workers_per_gpu: "Maximum number of workers to assign to a GPU. Additional tasks will run on CPU."
    max_tasks_per_worker: "Restart workers after N tasks. Workaround for tensorflow memory leaks. Requires Python >=3.2."
    worker_log_dir: "Write worker stdout and stderr logs to given directory."
    cluster_max_retries: "How many times to rerun failing jobs. Default: 3"
    model: ""
    select: ""
    class_one: ""
    pan_allele: ""
    models_dot: ""
  }
}