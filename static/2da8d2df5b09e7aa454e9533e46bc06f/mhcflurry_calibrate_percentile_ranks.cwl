class: CommandLineTool
id: mhcflurry_calibrate_percentile_ranks.cwl
inputs:
- id: prediction_batch_size
  doc: Keras batch size for predictions
  type: string
  inputBinding:
    prefix: --prediction-batch-size
- id: alleles_per_work_chunk
  doc: 'Number of alleles per work chunk. Default: 1.'
  type: string
  inputBinding:
    prefix: --alleles-per-work-chunk
- id: verbosity
  doc: 'Keras verbosity. Default: 0'
  type: string
  inputBinding:
    prefix: --verbosity
- id: num_jobs
  doc: 'Number of local processes to parallelize training over. Set to 0 for serial
    run. Default: 0.'
  type: string
  inputBinding:
    prefix: --num-jobs
- id: backend
  doc: Keras backend. If not specified will use system default.
  type: string
  inputBinding:
    prefix: --backend
- id: gpus
  doc: Number of GPUs to attempt to parallelize across. Requires running in parallel.
  type: string
  inputBinding:
    prefix: --gpus
- id: max_workers_per_gpu
  doc: Maximum number of workers to assign to a GPU. Additional tasks will run on
    CPU.
  type: string
  inputBinding:
    prefix: --max-workers-per-gpu
- id: max_tasks_per_worker
  doc: Restart workers after N tasks. Workaround for tensorflow memory leaks. Requires
    Python >=3.2.
  type: string
  inputBinding:
    prefix: --max-tasks-per-worker
- id: worker_log_dir
  doc: Write worker stdout and stderr logs to given directory.
  type: string
  inputBinding:
    prefix: --worker-log-dir
- id: cluster_max_retries
  doc: 'How many times to rerun failing jobs. Default: 3'
  type: string
  inputBinding:
    prefix: --cluster-max-retries
outputs: []
cwlVersion: v1.1
baseCommand:
- mhcflurry-calibrate-percentile-ranks
