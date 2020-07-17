version 1.0

task RunGalaxyWorkflow.py {
  input {
    String? conf
    String? galaxy_instance
    String? yaml_inputs_path
    String? output_dir
    String? history
    String? workflow_to_run
    String? parameters
    Boolean? parameters_yaml
    Boolean? debug
    String? allowed_errors
    String? state_file
    Boolean? keep_histories
    Boolean? keep_workflow
    Boolean? publish
    Boolean? accessible
  }
  command <<<
    run_galaxy_workflow.py \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(galaxy_instance) then ("--galaxy-instance " +  '"' + galaxy_instance + '"') else ""} \
      ~{if defined(yaml_inputs_path) then ("--yaml-inputs-path " +  '"' + yaml_inputs_path + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(history) then ("--history " +  '"' + history + '"') else ""} \
      ~{if defined(workflow_to_run) then ("--workflow " +  '"' + workflow_to_run + '"') else ""} \
      ~{if defined(parameters) then ("--parameters " +  '"' + parameters + '"') else ""} \
      ~{true="--parameters-yaml" false="" parameters_yaml} \
      ~{true="--debug" false="" debug} \
      ~{if defined(allowed_errors) then ("--allowed-errors " +  '"' + allowed_errors + '"') else ""} \
      ~{if defined(state_file) then ("--state-file " +  '"' + state_file + '"') else ""} \
      ~{true="--keep-histories" false="" keep_histories} \
      ~{true="--keep-workflow" false="" keep_workflow} \
      ~{true="--publish" false="" publish} \
      ~{true="--accessible" false="" accessible}
  >>>
  parameter_meta {
    conf: "A yaml file describing the galaxy credentials"
    galaxy_instance: "Galaxy server instance name"
    yaml_inputs_path: "Path to Yaml detailing inputs"
    output_dir: "Path to output directory"
    history: "Name of the history to create"
    workflow_to_run: "Workflow to run"
    parameters: "parameters file, by default json"
    parameters_yaml: "read parameters file as yaml instead of json"
    debug: "Print debug information"
    allowed_errors: "Yaml file with allowed steps that can have errors."
    state_file: "Path to read and save the execution state file."
    keep_histories: "Keeps histories created, they will be purged if not."
    keep_workflow: "Keeps workflow created, it will be purged if not."
    publish: "Keep result history and make it public/accesible."
    accessible: "Keep result history and make it accessible via link only."
  }
}