version 1.0

task ProcessClusterOutput.sh {
  input {
    String? usage_message
  }
  command <<<
    process_cluster_output.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}