version 1.0

task Jdeprscan {
  input {
    Int? release
  }
  command <<<
    jdeprscan \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    release: "|7|8|9|10|11"
  }
  output {
    File out_stdout = stdout()
  }
}