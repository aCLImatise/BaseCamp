version 1.0

task PruneOtuspy {
  input {
    String? t
    String? i
  }
  command <<<
    prune_otus_py \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}