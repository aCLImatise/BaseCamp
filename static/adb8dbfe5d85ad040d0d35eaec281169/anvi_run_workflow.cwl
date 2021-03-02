class: CommandLineTool
id: anvi_run_workflow.cwl
inputs:
- id: in_workflow
  doc: "You must specify a workflow name. To see a list of\navailable workflows run\
    \ --list-workflows."
  type: string?
  inputBinding:
    prefix: --workflow
- id: in_get_default_config
  doc: "Store a json formatted config file with all the\ndefault settings of the workflow.\
    \ This is a good draft\nyou could use in order to write your own config file.\n\
    This config file contains all parameters that could be\nconfigured for this workflow.\
    \ NOTICE: the config file\nis provided with default values only for parameters\n\
    that are set by us in the workflow. The values for the\nrest of the parameters\
    \ are determined by the relevant\nprogram."
  type: File?
  inputBinding:
    prefix: --get-default-config
- id: in_list_workflows
  doc: Print a list of available snakemake workflows
  type: boolean?
  inputBinding:
    prefix: --list-workflows
- id: in_list_dependencies
  doc: "Print a list of the dependencies of this workflow. You\nmust provide a workflow\
    \ name and a config file.\nsnakemake will figure out which rules need to be run\n\
    according to your config file, and according to the\nfiles available on your disk.\
    \ According to the rules\nthat need to be run, we will let you know which\nprograms\
    \ are going to be used, so that you can make\nsure you have all of them installed\
    \ and loaded."
  type: File?
  inputBinding:
    prefix: --list-dependencies
- id: in_config_file
  doc: A JSON-formatted configuration file.
  type: File?
  inputBinding:
    prefix: --config-file
- id: in_dry_run
  doc: "Don't do anything real. Test everything, and stop\nright before wherever the\
    \ developer said 'well, this\nis enough testing', and decided to print out results."
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_skip_dry_run
  doc: "Don't do anything real. Test everything, and stop\nright before wherever the\
    \ developer said 'well, this\nis enough testing', and decided to print out results."
  type: boolean?
  inputBinding:
    prefix: --skip-dry-run
- id: in_save_workflow_graph
  doc: "Save a graph representation of the workflow. If you\nare using this flag and\
    \ if your system is unable to\ngenerate such graph outputs, you will hear anvi'o\n\
    complaining (still, totally worth trying)."
  type: boolean?
  inputBinding:
    prefix: --save-workflow-graph
- id: in__additionalparams_additional
  doc: "..., --additional-params ...\nAdditional snakemake parameters to add when\
    \ running\nsnakemake. NOTICE: --additional-params HAS TO BE THE\nLAST ARGUMENT\
    \ THAT IS PASSED TO anvi-run-workflow,\nANYTHING THAT FOLLOWS WILL BE CONSIDERED\
    \ AS PART OF\nTHE ADDITIONAL PARAMETERS THAT ARE PASSED TO\nSNAKEMAKE. Any parameter\
    \ that is accepted by snakemake\nshould be fair game here, but it is your\nresponsibility\
    \ to make sure that whatever you added\nmakes sense. To see what parameters are\
    \ available\nplease refer to the snakemake documentation. For\nexample, you could\
    \ use this to set up cluster\nsubmission using --additional-params --cluster 'YOUR-\n\
    CLUSTER-SUBMISSION-CMD'.\n"
  type: boolean?
  inputBinding:
    prefix: -A
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_get_default_config
  doc: "Store a json formatted config file with all the\ndefault settings of the workflow.\
    \ This is a good draft\nyou could use in order to write your own config file.\n\
    This config file contains all parameters that could be\nconfigured for this workflow.\
    \ NOTICE: the config file\nis provided with default values only for parameters\n\
    that are set by us in the workflow. The values for the\nrest of the parameters\
    \ are determined by the relevant\nprogram."
  type: File?
  outputBinding:
    glob: $(inputs.in_get_default_config)
- id: out_list_dependencies
  doc: "Print a list of the dependencies of this workflow. You\nmust provide a workflow\
    \ name and a config file.\nsnakemake will figure out which rules need to be run\n\
    according to your config file, and according to the\nfiles available on your disk.\
    \ According to the rules\nthat need to be run, we will let you know which\nprograms\
    \ are going to be used, so that you can make\nsure you have all of them installed\
    \ and loaded."
  type: File?
  outputBinding:
    glob: $(inputs.in_list_dependencies)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-run-workflow
