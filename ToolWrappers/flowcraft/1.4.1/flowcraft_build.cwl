class: CommandLineTool
id: flowcraft_build.cwl
inputs:
- id: in_tasks
  doc: Space separated tasks of the pipeline
  type: string?
  inputBinding:
    prefix: --tasks
- id: in_recipe
  doc: Use one of the available recipes
  type: string?
  inputBinding:
    prefix: --recipe
- id: in_name_pipeline_file
  doc: Name of the pipeline file
  type: File?
  inputBinding:
    prefix: -o
- id: in_provide_name_your
  doc: Provide a name for your pipeline.
  type: string?
  inputBinding:
    prefix: -n
- id: in_merge_params
  doc: "Merges identical parameters from multiple components\ninto the same one. Otherwise,\
    \ the parameters will be\nseparated and unique to each component."
  type: boolean?
  inputBinding:
    prefix: --merge-params
- id: in_pipeline_only
  doc: "Write only the pipeline files and not the templates,\nbin, and lib folders."
  type: boolean?
  inputBinding:
    prefix: --pipeline-only
- id: in_no_depend_ecy
  doc: Do not automatically add dependencies to the pipeline.
  type: boolean?
  inputBinding:
    prefix: --no-dependecy
- id: in_check_pipeline
  doc: Check only the validity of the pipeline string and
  type: boolean?
  inputBinding:
    prefix: --check-pipeline
- id: in_component_list_short
  doc: "Print a short list of the currently available\nprocesses."
  type: boolean?
  inputBinding:
    prefix: --component-list-short
- id: in_recipe_list
  doc: Print a short list of the currently available recipes.
  type: boolean?
  inputBinding:
    prefix: --recipe-list
- id: in_recipe_list_short
  doc: Print a condensed list of the currently available
  type: boolean?
  inputBinding:
    prefix: --recipe-list-short
- id: in_export_directives
  doc: "Only export the directives for the provided components\n(via -t option) in\
    \ JSON format to stdout. No pipeline\nwill be generated with this option."
  type: boolean?
  inputBinding:
    prefix: --export-directives
- id: in_fetch_tags
  doc: "Allows to fetch all docker tags for the components\nlisted with the -t flag.\n"
  type: boolean?
  inputBinding:
    prefix: --fetch-tags
- id: in_exit_dot
  doc: -L, --component-list  Print a detailed description for all the currently
  type: string
  inputBinding:
    position: 0
- id: in_recipes
  doc: -cr, --check-recipe   Check tasks that the recipe contain and their flow.
  type: string
  inputBinding:
    position: 0
- id: in_option_dot
  doc: --export-params       Only export the parameters for the provided components
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- flowcraft
- build
