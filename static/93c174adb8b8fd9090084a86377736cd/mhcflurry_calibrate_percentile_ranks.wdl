version 1.0

task MhcflurryCalibratePercentileRanks {
  input {
    String? prediction_batch_size
    String? alleles_per_work_chunk
    String? verbosity
    String? num_jobs
    String? backend
    String? gpus
    String? max_workers_per_gpu
    String? max_tasks_per_worker
    String? worker_log_dir
    String? cluster_max_retries
    String calibrate
    String percentile
    String ranks
    String for
    String models_dot
    String runs
    String in_place_dot
  }
  command <<<
    mhcflurry-calibrate-percentile-ranks \
      ~{calibrate} \
      ~{percentile} \
      ~{ranks} \
      ~{for} \
      ~{models_dot} \
      ~{runs} \
      ~{in_place_dot} \
      ~{if defined(prediction_batch_size) then ("--prediction-batch-size " +  '"' + prediction_batch_size + '"') else ""} \
      ~{if defined(alleles_per_work_chunk) then ("--alleles-per-work-chunk " +  '"' + alleles_per_work_chunk + '"') else ""} \
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
    prediction_batch_size: "Keras batch size for predictions"
    alleles_per_work_chunk: "Number of alleles per work chunk. Default: 1."
    verbosity: "Keras verbosity. Default: 0"
    num_jobs: "Number of local processes to parallelize training over. Set to 0 for serial run. Default: 0."
    backend: "Keras backend. If not specified will use system default."
    gpus: "Number of GPUs to attempt to parallelize across. Requires running in parallel."
    max_workers_per_gpu: "Maximum number of workers to assign to a GPU. Additional tasks will run on CPU."
    max_tasks_per_worker: "Restart workers after N tasks. Workaround for tensorflow memory leaks. Requires Python >=3.2."
    worker_log_dir: "Write worker stdout and stderr logs to given directory."
    cluster_max_retries: "How many times to rerun failing jobs. Default: 3"
    calibrate: ""
    percentile: ""
    ranks: ""
    for: ""
    models_dot: ""
    runs: ""
    in_place_dot: ""
  }
}