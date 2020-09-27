class: CommandLineTool
id: assemblerflow_build.cwl
inputs:
- id: in_tasks
  doc: Space separated tasks of the pipeline
  type: string
  inputBinding:
    prefix: --tasks
- id: in_recipe
  doc: Use one of the available recipes
  type: string
  inputBinding:
    prefix: --recipe
- id: in_name_pipeline_file
  doc: Name of the pipeline file
  type: File
  inputBinding:
    prefix: -o
- id: in_provide_name_pipeline
  doc: Provide a name for your pipeline.
  type: string
  inputBinding:
    prefix: -n
- id: in_pipeline_only
  doc: "Write only the pipeline files and not the templates,\nbin, and lib folders."
  type: boolean
  inputBinding:
    prefix: --pipeline-only
- id: in_no_depend_ecy
  doc: Do not automatically add dependencies to the pipeline.
  type: boolean
  inputBinding:
    prefix: --no-dependecy
- id: in_check_pipeline
  doc: Check only the validity of the pipeline string and
  type: boolean
  inputBinding:
    prefix: --check-pipeline
- id: in_short_list
  doc: "Print a short list of the currently available\nprocesses\n"
  type: boolean
  inputBinding:
    prefix: --short-list
- id: in_exit_dot
  doc: -L, --detailed-list   Print a detailed description for all the currently
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- assemblerflow
- build
