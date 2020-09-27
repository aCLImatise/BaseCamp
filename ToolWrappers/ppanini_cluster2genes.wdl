version 1.0

task PpaniniCluster2genes {
  input {
    Boolean? json
    String? o
    String? i
  }
  command <<<
    ppanini_cluster2genes \
      ~{if (json) then "--json" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    json: ""
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}