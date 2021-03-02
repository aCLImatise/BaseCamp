version 1.0

task GenerateParamsFromWorkflowpy {
  input {
    File? conf
    String? galaxy_instance
    File? output_dir
    String? workflow_to_run
    Boolean? debug
    Boolean? include_internals
  }
  command <<<
    generate_params_from_workflow_py \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(galaxy_instance) then ("--galaxy-instance " +  '"' + galaxy_instance + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(workflow_to_run) then ("--workflow " +  '"' + workflow_to_run + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (include_internals) then "--include-internals" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-workflow-executor:0.2.4--pyh3252c3a_0"
  }
  parameter_meta {
    conf: "A yaml file describing the galaxy credentials"
    galaxy_instance: "Galaxy server instance name"
    output_dir: "Path to output directory"
    workflow_to_run: "Workflow to run"
    debug: "Print debug information"
    include_internals: "Include internal parameters"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}