version 1.0

task PpaniniCluster2genes {
  input {
    String? i
    String? o
    Boolean? json
  }
  command <<<
    ppanini_cluster2genes \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="--json" false="" json}
  >>>
  parameter_meta {
    i: ""
    o: ""
    json: ""
  }
}