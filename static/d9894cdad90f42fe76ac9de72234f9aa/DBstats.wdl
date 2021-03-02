version 1.0

task DBstats {
  input {
    Boolean? nu
  }
  command <<<
    DBstats \
      ~{if (nu) then "-nu" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nu: ""
  }
  output {
    File out_stdout = stdout()
  }
}