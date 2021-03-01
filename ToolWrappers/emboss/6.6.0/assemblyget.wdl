version 1.0

task Assemblyget {
  input {
    Boolean? assembly
  }
  command <<<
    assemblyget \
      ~{if (assembly) then "-assembly" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly: ": enter assembly value: Error: Unable to get reply from user - end of standard input"
  }
  output {
    File out_stdout = stdout()
  }
}