version 1.0

task AnviRunWorkflow {
  input {
    String? you_must_specify
    String? get_default_config
    Boolean? list_workflows
    Boolean? list_dependencies
    String? config_file
    Boolean? dry_run
    Boolean? skip_dry_run
    Boolean? save_workflow_graph
    Boolean? _additionalparams_additional
  }
  command <<<
    anvi-run-workflow \
      ~{if defined(you_must_specify) then ("--workflow " +  '"' + you_must_specify + '"') else ""} \
      ~{if defined(get_default_config) then ("--get-default-config " +  '"' + get_default_config + '"') else ""} \
      ~{true="--list-workflows" false="" list_workflows} \
      ~{true="--list-dependencies" false="" list_dependencies} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{true="--dry-run" false="" dry_run} \
      ~{true="--skip-dry-run" false="" skip_dry_run} \
      ~{true="--save-workflow-graph" false="" save_workflow_graph} \
      ~{true="-A" false="" _additionalparams_additional}
  >>>
  parameter_meta {
    you_must_specify: "You must specify a workflow name. To see a list of available workflows run --list-workflows."
    get_default_config: "Store a json formatted config file with all the default settings of the workflow. This is a good draft you could use in order to write your own config file. This config file contains all parameters that could be configured for this workflow. NOTICE: the config file is provided with default values only for parameters that are set by us in the workflow. The values for the rest of the parameters are determined by the relevant program."
    list_workflows: "Print a list of available snakemake workflows"
    list_dependencies: "Print a list of the dependencies of this workflow. You must provide a workflow name and a config file. snakemake will figure out which rules need to be run according to your config file, and according to the files available on your disk. According to the rules that need to be run, we will let you know which programs are going to be used, so that you can make sure you have all of them installed and loaded."
    config_file: "A JSON-formatted configuration file."
    dry_run: "Don't do anything real. Test everything, and stop right before wherever the developer said 'well, this is enough testing', and decided to print out results."
    skip_dry_run: "Don't do anything real. Test everything, and stop right before wherever the developer said 'well, this is enough testing', and decided to print out results."
    save_workflow_graph: "Save a graph representation of the workflow. If you are using this flag and if your system is unable to generate such graph outputs, you will hear anvi'o complaining (still, totally worth trying)."
    _additionalparams_additional: "..., --additional-params ... Additional snakemake parameters to add when running snakemake. NOTICE: --additional-params HAS TO BE THE LAST ARGUMENT THAT IS PASSED TO anvi-run-workflow, ANYTHING THAT FOLLOWS WILL BE CONSIDERED AS PART OF THE ADDITIONAL PARAMETERS THAT ARE PASSED TO SNAKEMAKE. Any parameter that is accepted by snakemake should be fair game here, but it is your responsibility to make sure that whatever you added makes sense. To see what parameters are available please refer to the snakemake documentation. For example, you could use this to set up cluster submission using --additional-params --cluster 'YOUR- CLUSTER-SUBMISSION-CMD'."
  }
}