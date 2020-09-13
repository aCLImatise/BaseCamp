version 1.0

task DBsplit {
  input {
    Boolean? x
    Boolean? a
    Int? var_int
  }
  command <<<
    DBsplit \
      ~{var_int} \
      ~{if (x) then "-x" else ""} \
      ~{if (a) then "-a" else ""}
  >>>
  parameter_meta {
    x: ""
    a: ""
    var_int: ""
  }
  output {
    File out_stdout = stdout()
  }
}