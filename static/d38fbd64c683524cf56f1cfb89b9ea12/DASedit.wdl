version 1.0

task DASedit {
  input {
    Boolean? x
    Boolean? v
    Int? var_int
  }
  command <<<
    DASedit \
      ~{var_int} \
      ~{if (x) then "-x" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    x: ""
    v: ""
    var_int: ""
  }
  output {
    File out_stdout = stdout()
  }
}