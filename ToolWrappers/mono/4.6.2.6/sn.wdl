version 1.0

task Sn {
  input {
    Boolean? quiet
  }
  command <<<
    sn \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Quiet mode (minimal display)"
  }
  output {
    File out_stdout = stdout()
  }
}