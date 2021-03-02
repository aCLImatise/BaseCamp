version 1.0

task Obmm {
  input {
    String program
  }
  command <<<
    obmm \
      ~{program}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    program: "v 0.1                "
  }
  output {
    File out_stdout = stdout()
  }
}