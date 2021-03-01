version 1.0

task Mcx {
  input {
    String mode
    String? files
  }
  command <<<
    mcx \
      ~{mode} \
      ~{files}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}