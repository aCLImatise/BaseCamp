class: CommandLineTool
id: flowcraft_build.cwl
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
- id: merge_params
  doc: Merges identical parameters from multiple components into the same one. Otherwise,
    the parameters will be separated and unique to each component.
  type: boolean
  inputBinding:
    prefix: --merge-params
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
- id: component_list
  doc: Print a detailed description for all the currently available processes.
  type: boolean
  inputBinding:
    prefix: --component-list
- id: component_list_short
  doc: Print a short list of the currently available processes.
  type: boolean
  inputBinding:
    prefix: --component-list-short
- id: recipe_list
  doc: Print a short list of the currently available recipes.
  type: boolean
  inputBinding:
    prefix: --recipe-list
- id: recipe_list_short
  doc: Print a condensed list of the currently available recipes
  type: boolean
  inputBinding:
    prefix: --recipe-list-short
- id: check_recipe
  doc: Check tasks that the recipe contain and their flow. This option might be useful
    if a user wants to change some components of a given recipe, by using the -t option.
  type: boolean
  inputBinding:
    prefix: --check-recipe
- id: export_params
  doc: Only export the parameters for the provided components (via -t option) in JSON
    format to stdout. No pipeline will be generated with this option.
  type: boolean
  inputBinding:
    prefix: --export-params
- id: export_directives
  doc: Only export the directives for the provided components (via -t option) in JSON
    format to stdout. No pipeline will be generated with this option.
  type: boolean
  inputBinding:
    prefix: --export-directives
- id: fetch_tags
  doc: Allows to fetch all docker tags for the components listed with the -t flag.
  type: boolean
  inputBinding:
    prefix: --fetch-tags
outputs: []
cwlVersion: v1.1
baseCommand:
- flowcraft
- build
