version 1.0

task FilterKeepOtusBySamplepy {
  input {
    Boolean? o
    String? k
    String? i
  }
  command <<<
    filter_keep_otus_by_sample_py \
      ~{if (o) then "-o" else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    k: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}