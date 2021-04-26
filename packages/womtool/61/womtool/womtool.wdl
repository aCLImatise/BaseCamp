version 1.0

task Womtool {
  input {
    File? inputs
    String? highlight_mode
    String? optional_inputs
    Boolean? list_dependencies
    String? jar
    String workflow_source
  }
  command <<<
    womtool \
      ~{workflow_source} \
      ~{if defined(inputs) then ("--inputs " +  '"' + inputs + '"') else ""} \
      ~{if defined(highlight_mode) then ("--highlight-mode " +  '"' + highlight_mode + '"') else ""} \
      ~{if defined(optional_inputs) then ("--optional-inputs " +  '"' + optional_inputs + '"') else ""} \
      ~{if (list_dependencies) then "--list-dependencies" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/womtool:61--hdfd78af_0"
  }
  parameter_meta {
    inputs: "Workflow inputs file."
    highlight_mode: "Highlighting mode, one of 'html', 'console' (used only with 'highlight' command)"
    optional_inputs: "If set, optional inputs are also included in the inputs set. Default is 'true' (used only with the inputs command)"
    list_dependencies: "An optional flag to list files referenced in import statements (used only with 'validate' command)"
    jar: ""
    workflow_source: "Path to workflow file."
  }
  output {
    File out_stdout = stdout()
  }
}