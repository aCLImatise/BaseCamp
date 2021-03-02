class: CommandLineTool
id: mhcflurry_class1_select_processing_models.cwl
inputs:
- id: in_data
  doc: "Model selection data CSV. Expected columns: peptide,\nhit, fold_0, ..., fold_N"
  type: File?
  inputBinding:
    prefix: --data
- id: in_models_dir
  doc: Directory to read models
  type: Directory?
  inputBinding:
    prefix: --models-dir
- id: in_out_models_dir
  doc: Directory to write selected models
  type: Directory?
  inputBinding:
    prefix: --out-models-dir
- id: in_min_models_per_fold
  doc: Min number of models to select per fold
  type: long?
  inputBinding:
    prefix: --min-models-per-fold
- id: in_max_models_per_fold
  doc: Max number of models to select per fold
  type: long?
  inputBinding:
    prefix: --max-models-per-fold
- id: in_verbosity
  doc: 'Keras verbosity. Default: 0'
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_num_jobs
  doc: "Number of local processes to parallelize training\nover. Set to 0 for serial\
    \ run. Default: 0."
  type: long?
  inputBinding:
    prefix: --num-jobs
- id: in_backend
  doc: "Keras backend. If not specified will use system\ndefault."
  type: string?
  inputBinding:
    prefix: --backend
- id: in_gpus
  doc: "Number of GPUs to attempt to parallelize across.\nRequires running in parallel."
  type: long?
  inputBinding:
    prefix: --gpus
- id: in_max_workers_per_gpu
  doc: "Maximum number of workers to assign to a GPU.\nAdditional tasks will run on\
    \ CPU."
  type: long?
  inputBinding:
    prefix: --max-workers-per-gpu
- id: in_max_tasks_per_worker
  doc: "Restart workers after N tasks. Workaround for\ntensorflow memory leaks. Requires\
    \ Python >=3.2."
  type: long?
  inputBinding:
    prefix: --max-tasks-per-worker
- id: in_worker_log_dir
  doc: "Write worker stdout and stderr logs to given\ndirectory."
  type: Directory?
  inputBinding:
    prefix: --worker-log-dir
- id: in_cluster_submit_command
  doc: 'Default: sh'
  type: string?
  inputBinding:
    prefix: --cluster-submit-command
- id: in_cluster_results_workdir
  doc: 'Default: ./cluster-workdir'
  type: string?
  inputBinding:
    prefix: --cluster-results-workdir
- id: in_additional_complete_file
  doc: "Additional file to monitor for job completion.\nDefault: STDERR"
  type: File?
  inputBinding:
    prefix: --additional-complete-file
- id: in_cluster_script_prefix_path
  doc: "How many times to rerun failing jobs. Default: 3\n"
  type: File?
  inputBinding:
    prefix: --cluster-script-prefix-path
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
- id: in_antigen
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_processing
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_models_dot
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mhcflurry:2.0.1--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- mhcflurry-class1-select-processing-models
