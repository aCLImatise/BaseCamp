version 1.0

task FilterEdgesByCluster {
  input {
    Boolean? b
    File? clusters
    String? an_k
    String bank_name
  }
  command <<<
    FilterEdgesByCluster \
      ~{an_k} \
      ~{bank_name} \
      ~{true="-b" false="" b} \
      ~{if defined(clusters) then ("-clusters " +  '"' + clusters + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    clusters: ""
    an_k: ""
    bank_name: ""
  }
}