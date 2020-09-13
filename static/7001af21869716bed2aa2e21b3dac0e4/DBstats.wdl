version 1.0

task DBstats {
  input {
    Boolean? nu
  }
  command <<<
    DBstats \
      ~{if (nu) then "-nu" else ""}
  >>>
  parameter_meta {
    nu: ""
  }
  output {
    File out_stdout = stdout()
  }
}