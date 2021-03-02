version 1.0

task DASqv {
  input {
    Boolean? c
    Boolean? h
    Boolean? v
    Int? var_int
  }
  command <<<
    DASqv \
      ~{var_int} \
      ~{if (c) then "-c" else ""} \
      ~{if (h) then "-H" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    c: ""
    h: ""
    v: ""
    var_int: ""
  }
  output {
    File out_stdout = stdout()
  }
}