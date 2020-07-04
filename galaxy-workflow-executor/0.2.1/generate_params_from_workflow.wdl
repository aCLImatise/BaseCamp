version 1.0

task GenerateParamsFromWorkflow.py {
  input {
    String? conf
    String? galaxy_instance
    String? output_dir
    String? workflow_to_run
    Boolean? debug
    Boolean? include_internals
  }
  command <<<
    generate_params_from_workflow.py \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(galaxy_instance) then ("--galaxy-instance " +  '"' + galaxy_instance + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(workflow_to_run) then ("--workflow " +  '"' + workflow_to_run + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--include-internals" false="" include_internals}
  >>>
  parameter_meta {
    conf: "A yaml file describing the galaxy credentials"
    galaxy_instance: "Galaxy server instance name"
    output_dir: "Path to output directory"
    workflow_to_run: "Workflow to run"
    debug: "Print debug information"
    include_internals: "Include internal parameters"
  }
}