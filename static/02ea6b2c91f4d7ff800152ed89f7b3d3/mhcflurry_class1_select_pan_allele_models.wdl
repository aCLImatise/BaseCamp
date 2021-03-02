version 1.0

task Mhcflurryclass1selectpanallelemodels {
  input {
    File? data
    Directory? models_dir
    Directory? out_models_dir
    Int? min_models_per_fold
    Int? max_models_per_fold
    String? mass_spec_regex
    Int? verbosity
    Int? num_jobs
    String? backend
    Int? gpus
    Int? max_workers_per_gpu
    Int? max_tasks_per_worker
    Directory? worker_log_dir
    String? cluster_submit_command
    String? cluster_results_workdir
    File? additional_complete_file
    File? cluster_script_prefix_path
    String model
    String select
    Int class_one
    String pan_allele
    String models_dot
  }
  command <<<
    mhcflurry_class1_select_pan_allele_models \
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
      ~{if defined(cluster_submit_command) then ("--cluster-submit-command " +  '"' + cluster_submit_command + '"') else ""} \
      ~{if defined(cluster_results_workdir) then ("--cluster-results-workdir " +  '"' + cluster_results_workdir + '"') else ""} \
      ~{if defined(additional_complete_file) then ("--additional-complete-file " +  '"' + additional_complete_file + '"') else ""} \
      ~{if defined(cluster_script_prefix_path) then ("--cluster-script-prefix-path " +  '"' + cluster_script_prefix_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data: "Model selection data CSV. Expected columns: allele,\\npeptide, measurement_value"
    models_dir: "Directory to read models"
    out_models_dir: "Directory to write selected models"
    min_models_per_fold: "Min number of models to select per fold"
    max_models_per_fold: "Max number of models to select per fold"
    mass_spec_regex: "Regular expression for mass-spec data. Runs on\\nmeasurement_source col.Default: mass[- ]spec."
    verbosity: "Keras verbosity. Default: 0"
    num_jobs: "Number of local processes to parallelize training\\nover. Set to 0 for serial run. Default: 0."
    backend: "Keras backend. If not specified will use system\\ndefault."
    gpus: "Number of GPUs to attempt to parallelize across.\\nRequires running in parallel."
    max_workers_per_gpu: "Maximum number of workers to assign to a GPU.\\nAdditional tasks will run on CPU."
    max_tasks_per_worker: "Restart workers after N tasks. Workaround for\\ntensorflow memory leaks. Requires Python >=3.2."
    worker_log_dir: "Write worker stdout and stderr logs to given\\ndirectory."
    cluster_submit_command: "Default: sh"
    cluster_results_workdir: "Default: ./cluster-workdir"
    additional_complete_file: "Additional file to monitor for job completion.\\nDefault: STDERR"
    cluster_script_prefix_path: "How many times to rerun failing jobs. Default: 3\\n"
    model: ""
    select: ""
    class_one: ""
    pan_allele: ""
    models_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}