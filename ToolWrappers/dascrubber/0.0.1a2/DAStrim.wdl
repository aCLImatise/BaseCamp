version 1.0

task DAStrim {
  input {
    Boolean? b
    Boolean? g
    Boolean? v
    Int var_int
  }
  command <<<
    DAStrim \
      ~{var_int} \
      ~{if (b) then "-b" else ""} \
      ~{if (g) then "-g" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    b: ""
    g: ""
    v: ""
    var_int: ""
  }
  output {
    File out_stdout = stdout()
  }
}