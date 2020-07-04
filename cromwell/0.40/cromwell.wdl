version 1.0

task Cromwell {
  input {
    String? workflow_root
    String? inputs
    String? options
    String? type
    String? type_version
    String? labels
    String? imports
    String? metadata_output
    String? host
    Boolean? jar
    String java
  }
  command <<<
    cromwell \
      ~{java} \
      ~{if defined(workflow_root) then ("--workflow-root " +  '"' + workflow_root + '"') else ""} \
      ~{if defined(inputs) then ("--inputs " +  '"' + inputs + '"') else ""} \
      ~{if defined(options) then ("--options " +  '"' + options + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(type_version) then ("--type-version " +  '"' + type_version + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(imports) then ("--imports " +  '"' + imports + '"') else ""} \
      ~{if defined(metadata_output) then ("--metadata-output " +  '"' + metadata_output + '"') else ""} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{true="-jar" false="" jar}
  >>>
  parameter_meta {
    workflow_root: "Workflow root."
    inputs: "Workflow inputs file."
    options: "Workflow options file."
    type: "Workflow type."
    type_version: "Workflow type version."
    labels: "Workflow labels file."
    imports: "A directory or zipfile to search for workflow imports."
    metadata_output: "An optional directory path to output metadata."
    host: "Cromwell server URL."
    jar: ""
    java: ""
  }
}