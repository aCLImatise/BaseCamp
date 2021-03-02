version 1.0

task FilterEdgesByCluster {
  input {
    File? clusters
    Boolean? b
    String? an_k
    String bank_name
  }
  command <<<
    FilterEdgesByCluster \
      ~{an_k} \
      ~{bank_name} \
      ~{if defined(clusters) then ("-clusters " +  '"' + clusters + '"') else ""} \
      ~{if (b) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    clusters: ""
    b: ""
    an_k: ""
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}