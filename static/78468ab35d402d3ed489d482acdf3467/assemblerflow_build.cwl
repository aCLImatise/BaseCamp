class: CommandLineTool
id: assemblerflow_build.cwl
inputs:
- id: tasks
  doc: Space separated tasks of the pipeline
  type: string
  inputBinding:
    prefix: --tasks
- id: recipe
  doc: Use one of the available recipes
  type: string
  inputBinding:
    prefix: --recipe
- id: o
  doc: Name of the pipeline file
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: Provide a name for your pipeline.
  type: string
  inputBinding:
    prefix: -n
- id: pipeline_only
  doc: Write only the pipeline files and not the templates, bin, and lib folders.
  type: boolean
  inputBinding:
    prefix: --pipeline-only
- id: no_depend_ecy
  doc: Do not automatically add dependencies to the pipeline.
  type: boolean
  inputBinding:
    prefix: --no-dependecy
- id: check_pipeline
  doc: Check only the validity of the pipeline string and exit.
  type: boolean
  inputBinding:
    prefix: --check-pipeline
- id: detailed_list
  doc: Print a detailed description for all the currently available processes
  type: boolean
  inputBinding:
    prefix: --detailed-list
- id: short_list
  doc: Print a short list of the currently available processes
  type: boolean
  inputBinding:
    prefix: --short-list
outputs: []
cwlVersion: v1.1
baseCommand:
- assemblerflow
- build
