version 1.0

task Charmmlipid2amberpy {
  input {
    String? o
    String? i
    Int? c
  }
  command <<<
    charmmlipid2amber_py \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    i: ""
    c: ""
  }
  output {
    File out_stdout = stdout()
  }
}