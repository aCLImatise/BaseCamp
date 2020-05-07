class: CommandLineTool
id: anvi_run_workflow.cwl
inputs:
- id: workflow
  doc: You must specify a workflow name. To see a list of available workflows run
    --list-workflows.
  type: string
  inputBinding:
    prefix: --workflow
- id: get_default_config
  doc: 'Store a json formatted config file with all the default settings of the workflow.
    This is a good draft you could use in order to write your own config file. This
    config file contains all parameters that could be configured for this workflow.
    NOTICE: the config file is provided with default values only for parameters that
    are set by us in the workflow. The values for the rest of the parameters are determined
    by the relevant program.'
  type: string
  inputBinding:
    prefix: --get-default-config
- id: list_workflows
  doc: Print a list of available snakemake workflows
  type: boolean
  inputBinding:
    prefix: --list-workflows
- id: list_dependencies
  doc: Print a list of the dependencies of this workflow. You must provide a workflow
    name and a config file. snakemake will figure out which rules need to be run according
    to your config file, and according to the files available on your disk. According
    to the rules that need to be run, we will let you know which programs are going
    to be used, so that you can make sure you have all of them installed and loaded.
  type: boolean
  inputBinding:
    prefix: --list-dependencies
- id: config_file
  doc: A JSON-formatted configuration file.
  type: string
  inputBinding:
    prefix: --config-file
- id: dry_run
  doc: Don't do anything real. Test everything, and stop right before wherever the
    developer said 'well, this is enough testing', and decided to print out results.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: skip_dry_run
  doc: Don't do anything real. Test everything, and stop right before wherever the
    developer said 'well, this is enough testing', and decided to print out results.
  type: boolean
  inputBinding:
    prefix: --skip-dry-run
- id: save_workflow_graph
  doc: Save a graph representation of the workflow. If you are using this flag and
    if your system is unable to generate such graph outputs, you will hear anvi'o
    complaining (still, totally worth trying).
  type: boolean
  inputBinding:
    prefix: --save-workflow-graph
- id: a
  doc: "..., --additional-params ... Additional snakemake parameters to add when running\
    \ snakemake. NOTICE: --additional-params HAS TO BE THE LAST ARGUMENT THAT IS PASSED\
    \ TO anvi-run-workflow, ANYTHING THAT FOLLOWS WILL BE CONSIDERED AS PART OF THE\
    \ ADDITIONAL PARAMETERS THAT ARE PASSED TO SNAKEMAKE. Any parameter that is accepted\
    \ by snakemake should be fair game here, but it is your responsibility to make\
    \ sure that whatever you added makes sense. To see what parameters are available\
    \ please refer to the snakemake documentation. For example, you could use this\
    \ to set up cluster submission using --additional-params --cluster 'YOUR- CLUSTER-SUBMISSION-CMD'."
  type: boolean
  inputBinding:
    prefix: -A
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-run-workflow
