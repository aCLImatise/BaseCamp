class: CommandLineTool
id: mhcflurry_class1_select_allele_specific_models.cwl
inputs:
- id: in_num_jobs
  doc: "Number of local processes to parallelize training\nover. Set to 0 for serial\
    \ run. Default: 0."
  type: long
  inputBinding:
    prefix: --num-jobs
- id: in_backend
  doc: "Keras backend. If not specified will use system\ndefault."
  type: string
  inputBinding:
    prefix: --backend
- id: in_gpus
  doc: "Number of GPUs to attempt to parallelize across.\nRequires running in parallel."
  type: long
  inputBinding:
    prefix: --gpus
- id: in_max_workers_per_gpu
  doc: "Maximum number of workers to assign to a GPU.\nAdditional tasks will run on\
    \ CPU."
  type: long
  inputBinding:
    prefix: --max-workers-per-gpu
- id: in_max_tasks_per_worker
  doc: "Restart workers after N tasks. Workaround for\ntensorflow memory leaks. Requires\
    \ Python >=3.2."
  type: long
  inputBinding:
    prefix: --max-tasks-per-worker
- id: in_worker_log_dir
  doc: "Write worker stdout and stderr logs to given\ndirectory.\n"
  type: Directory
  inputBinding:
    prefix: --worker-log-dir
- id: in_model
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_select
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_class_one
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_single
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_allele
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_models_dot
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mhcflurry-class1-select-allele-specific-models
