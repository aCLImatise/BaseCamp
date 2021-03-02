version 1.0

task Cromwell {
  input {
    String? workflow_root
    File? inputs
    File? options
    String? type
    String? type_version
    File? labels
    Directory? imports
    File? metadata_output
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
      ~{if (jar) then "-jar" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
    File out_metadata_output = "${in_metadata_output}"
  }
}