version 1.0

task CdhitCluster.sh {
  input {
    String? usage_message
  }
  command <<<
    cdhit_cluster.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}