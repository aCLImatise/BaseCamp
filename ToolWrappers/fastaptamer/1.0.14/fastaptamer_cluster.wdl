version 1.0

task FastaptamerCluster {
  input {
    String? o
    File? i
    String sequence
  }
  command <<<
    fastaptamer_cluster \
      ~{sequence} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    i: ""
    sequence: "To prevent clustering of sequences not highly sampled (and improve execution ti-"
  }
  output {
    File out_stdout = stdout()
  }
}