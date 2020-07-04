version 1.0

task FastaptamerCluster {
  input {
    String? i
    String? o
  }
  command <<<
    fastaptamer_cluster \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
  }
}