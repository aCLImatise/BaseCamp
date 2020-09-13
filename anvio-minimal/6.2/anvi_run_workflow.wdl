version 1.0

task Anvirunworkflow {
  input {
    String? you_must_specify
    File? get_default_config
    Boolean? list_workflows
    File? list_dependencies
    File? config_file
    Boolean? dry_run
    Boolean? skip_dry_run
    Boolean? save_workflow_graph
    Boolean? _additionalparams_additional
  }
  command <<<
    anvi_run_workflow \
      ~{if defined(you_must_specify) then ("--workflow " +  '"' + you_must_specify + '"') else ""} \
      ~{if defined(get_default_config) then ("--get-default-config " +  '"' + get_default_config + '"') else ""} \
      ~{if (list_workflows) then "--list-workflows" else ""} \
      ~{if (list_dependencies) then "--list-dependencies" else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (skip_dry_run) then "--skip-dry-run" else ""} \
      ~{if (save_workflow_graph) then "--save-workflow-graph" else ""} \
      ~{if (_additionalparams_additional) then "-A" else ""}
  >>>
  parameter_meta {
    you_must_specify: "You must specify a workflow name. To see a list of\\navailable workflows run --list-workflows."
    get_default_config: "Store a json formatted config file with all the\\ndefault settings of the workflow. This is a good draft\\nyou could use in order to write your own config file.\\nThis config file contains all parameters that could be\\nconfigured for this workflow. NOTICE: the config file\\nis provided with default values only for parameters\\nthat are set by us in the workflow. The values for the\\nrest of the parameters are determined by the relevant\\nprogram."
    list_workflows: "Print a list of available snakemake workflows"
    list_dependencies: "Print a list of the dependencies of this workflow. You\\nmust provide a workflow name and a config file.\\nsnakemake will figure out which rules need to be run\\naccording to your config file, and according to the\\nfiles available on your disk. According to the rules\\nthat need to be run, we will let you know which\\nprograms are going to be used, so that you can make\\nsure you have all of them installed and loaded."
    config_file: "A JSON-formatted configuration file."
    dry_run: "Don't do anything real. Test everything, and stop\\nright before wherever the developer said 'well, this\\nis enough testing', and decided to print out results."
    skip_dry_run: "Don't do anything real. Test everything, and stop\\nright before wherever the developer said 'well, this\\nis enough testing', and decided to print out results."
    save_workflow_graph: "Save a graph representation of the workflow. If you\\nare using this flag and if your system is unable to\\ngenerate such graph outputs, you will hear anvi'o\\ncomplaining (still, totally worth trying)."
    _additionalparams_additional: "..., --additional-params ...\\nAdditional snakemake parameters to add when running\\nsnakemake. NOTICE: --additional-params HAS TO BE THE\\nLAST ARGUMENT THAT IS PASSED TO anvi-run-workflow,\\nANYTHING THAT FOLLOWS WILL BE CONSIDERED AS PART OF\\nTHE ADDITIONAL PARAMETERS THAT ARE PASSED TO\\nSNAKEMAKE. Any parameter that is accepted by snakemake\\nshould be fair game here, but it is your\\nresponsibility to make sure that whatever you added\\nmakes sense. To see what parameters are available\\nplease refer to the snakemake documentation. For\\nexample, you could use this to set up cluster\\nsubmission using --additional-params --cluster 'YOUR-\\nCLUSTER-SUBMISSION-CMD'.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_get_default_config = "${in_get_default_config}"
    File out_list_dependencies = "${in_list_dependencies}"
  }
}