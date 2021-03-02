version 1.0

task NfcoreLaunch {
  input {
    String? revision
    String? id
    Boolean? command_only
    File? params_out
    File? params_in
    Boolean? save_all
    String? url
    String pipeline_name
  }
  command <<<
    nf_core launch \
      ~{pipeline_name} \
      ~{if defined(revision) then ("--revision " +  '"' + revision + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if (command_only) then "--command-only" else ""} \
      ~{if defined(params_out) then ("--params-out " +  '"' + params_out + '"') else ""} \
      ~{if defined(params_in) then ("--params-in " +  '"' + params_in + '"') else ""} \
      ~{if (save_all) then "--save-all" else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0"
  }
  parameter_meta {
    revision: "Release/branch/SHA of the project to run (if remote)"
    id: "ID for web-gui launch parameter set"
    command_only: "Create Nextflow command with params (no params file)"
    params_out: "Path to save run parameters file"
    params_in: "Set of input run params to use from a previous run"
    save_all: "Save all parameters, even if unchanged from default"
    url: "Customise the builder URL (for development work)"
    pipeline_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}