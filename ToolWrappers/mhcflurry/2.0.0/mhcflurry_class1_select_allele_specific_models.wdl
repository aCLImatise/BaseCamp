version 1.0

task Mhcflurryclass1selectallelespecificmodels {
  input {
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
      ~{if defined(num_jobs) then ("--num-jobs " +  '"' + num_jobs + '"') else ""} \
      ~{if defined(backend) then ("--backend " +  '"' + backend + '"') else ""} \
      ~{if defined(gpus) then ("--gpus " +  '"' + gpus + '"') else ""} \
      ~{if defined(max_workers_per_gpu) then ("--max-workers-per-gpu " +  '"' + max_workers_per_gpu + '"') else ""} \
      ~{if defined(max_tasks_per_worker) then ("--max-tasks-per-worker " +  '"' + max_tasks_per_worker + '"') else ""} \
      ~{if defined(worker_log_dir) then ("--worker-log-dir " +  '"' + worker_log_dir + '"') else ""}
  >>>
  parameter_meta {
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