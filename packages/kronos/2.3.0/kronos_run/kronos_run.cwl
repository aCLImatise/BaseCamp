class: CommandLineTool
id: kronos_run.cwl
inputs:
- id: in_job_scheduler
  doc: job scheduler used to manage jobs on the cluster
  type: string
  inputBinding:
    prefix: --job_scheduler
- id: in_components_dir
  doc: path to components_dir
  type: File
  inputBinding:
    prefix: --components_dir
- id: in_drmaa_library_path
  doc: path of drmaa library
  type: File
  inputBinding:
    prefix: --drmaa_library_path
- id: in_pipeline_name
  doc: pipeline name
  type: string
  inputBinding:
    prefix: --pipeline_name
- id: in_input_samples
  doc: path to the input samples file
  type: File
  inputBinding:
    prefix: --input_samples
- id: in_num_jobs
  doc: maximum number of simultaneous jobs per pipeline
  type: long
  inputBinding:
    prefix: --num_jobs
- id: in_kronos_pipeline
  doc: path to kronos-made pipeline script.
  type: File
  inputBinding:
    prefix: --kronos_pipeline
- id: in_num_pipelines
  doc: maximum number of simultaneous running pipelines
  type: long
  inputBinding:
    prefix: --num_pipelines
- id: in_python_installation
  doc: path to python executable
  type: File
  inputBinding:
    prefix: --python_installation
- id: in_qsub_options
  doc: "native qsub specifications for the cluster in a single\nstring"
  type: string
  inputBinding:
    prefix: --qsub_options
- id: in_run_id
  doc: pipeline run id
  type: string
  inputBinding:
    prefix: --run_id
- id: in_setup_file
  doc: path to the setup file
  type: File
  inputBinding:
    prefix: --setup_file
- id: in_working_dir
  doc: path to the working_dir
  type: File
  inputBinding:
    prefix: --working_dir
- id: in_config_file
  doc: path to the config_file.yaml
  type: File
  inputBinding:
    prefix: --config_file
- id: in_no_prefix
  doc: "switch off the prefix that is added to all the output\nfiles.\n"
  type: boolean
  inputBinding:
    prefix: --no_prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kronos
- run
