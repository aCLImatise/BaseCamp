#!/usr/bin/env cwl-runner

baseCommand:
- mhcflurry-calibrate-percentile-ranks
class: CommandLineTool
cwlVersion: v1.0
id: mhcflurry-calibrate-percentile-ranks
inputs:
- doc: Keras batch size for predictions
  id: prediction_batch_size
  inputBinding:
    prefix: --prediction-batch-size
  type: string
- doc: 'Number of alleles per work chunk. Default: 1.'
  id: alleles_per_work_chunk
  inputBinding:
    prefix: --alleles-per-work-chunk
  type: string
- doc: 'Keras verbosity. Default: 0'
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
- doc: 'Number of local processes to parallelize training over. Set to 0 for serial
    run. Default: 0.'
  id: num_jobs
  inputBinding:
    prefix: --num-jobs
  type: string
- doc: Keras backend. If not specified will use system default.
  id: backend
  inputBinding:
    prefix: --backend
  type: string
- doc: Number of GPUs to attempt to parallelize across. Requires running in parallel.
  id: gpus
  inputBinding:
    prefix: --gpus
  type: string
- doc: Maximum number of workers to assign to a GPU. Additional tasks will run on
    CPU.
  id: max_workers_per_gpu
  inputBinding:
    prefix: --max-workers-per-gpu
  type: string
- doc: Restart workers after N tasks. Workaround for tensorflow memory leaks. Requires
    Python >=3.2.
  id: max_tasks_per_worker
  inputBinding:
    prefix: --max-tasks-per-worker
  type: string
- doc: Write worker stdout and stderr logs to given directory.
  id: worker_log_dir
  inputBinding:
    prefix: --worker-log-dir
  type: string
- doc: 'How many times to rerun failing jobs. Default: 3'
  id: cluster_max_retries
  inputBinding:
    prefix: --cluster-max-retries
  type: string
