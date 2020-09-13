class: CommandLineTool
id: ../../../mhcflurry_class1_train_pan_allele_models.cwl
inputs:
- id: in_data
  doc: 'Training data CSV. Expected columns: allele, peptide,'
  type: File
  inputBinding:
    prefix: --data
- id: in_out_models_dir
  doc: Directory to write models and manifest
  type: Directory
  inputBinding:
    prefix: --out-models-dir
- id: in_hyperparameters
  doc: JSON or YAML of hyperparameters
  type: File
  inputBinding:
    prefix: --hyperparameters
- id: in_held_out_measurements_per_allele_fraction_and_max
  doc: "X\nFraction of measurements per allele to hold out, and\nmaximum number"
  type: long
  inputBinding:
    prefix: --held-out-measurements-per-allele-fraction-and-max
- id: in_ignore_inequalities
  doc: "Do not use affinity value inequalities even when\npresent in data"
  type: boolean
  inputBinding:
    prefix: --ignore-inequalities
- id: in_num_folds
  doc: Number of training folds.
  type: long
  inputBinding:
    prefix: --num-folds
- id: in_num_replicates
  doc: Number of replicates per (architecture, fold) pair to
  type: long
  inputBinding:
    prefix: --num-replicates
- id: in_allele_sequences
  doc: Allele sequences file.
  type: File
  inputBinding:
    prefix: --allele-sequences
- id: in_verbosity
  doc: 'Keras verbosity. Default: 0'
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_debug
  doc: Launch python debugger on error
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_continue_incomplete
  doc: "Continue training models from an incomplete training\nrun. If this is specified\
    \ then the only required\nargument is --out-models-dir"
  type: boolean
  inputBinding:
    prefix: --continue-incomplete
- id: in_only_initialize
  doc: "Do not actually train models. The initialized run can\nbe continued later\
    \ with --continue-incomplete."
  type: boolean
  inputBinding:
    prefix: --only-initialize
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
  doc: "Write worker stdout and stderr logs to given\ndirectory."
  type: Directory
  inputBinding:
    prefix: --worker-log-dir
- id: in_cluster_parallelism
  doc: ''
  type: boolean
  inputBinding:
    prefix: --cluster-parallelism
- id: in_cluster_submit_command
  doc: 'Default: sh'
  type: string
  inputBinding:
    prefix: --cluster-submit-command
- id: in_cluster_results_workdir
  doc: 'Default: ./cluster-workdir'
  type: string
  inputBinding:
    prefix: --cluster-results-workdir
- id: in_additional_complete_file
  doc: "Additional file to monitor for job completion.\nDefault: STDERR"
  type: File
  inputBinding:
    prefix: --additional-complete-file
- id: in_cluster_script_prefix_path
  doc: ''
  type: File
  inputBinding:
    prefix: --cluster-script-prefix-path
- id: in_cluster_max_retries
  doc: "How many times to rerun failing jobs. Default: 3\n"
  type: long
  inputBinding:
    prefix: --cluster-max-retries
- id: in_measurement_value
  doc: --pretrain-data FILE.csv
  type: string
  inputBinding:
    position: 0
- id: in_train_dot
  doc: --max-epochs N        Max training epochs. If specified here it overrides
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mhcflurry-class1-train-pan-allele-models
