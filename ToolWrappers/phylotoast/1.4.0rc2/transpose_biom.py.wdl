version 1.0

task TransposeBiompy {
  input {
    Boolean? o
    String? c
    String? m
    String? i
  }
  command <<<
    transpose_biom_py \
      ~{if (o) then "-o" else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    c: ""
    m: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}