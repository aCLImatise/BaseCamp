version 1.0

task KnockknockIndices {
  input {
    String knock_knock
  }
  command <<<
    knock_knock indices \
      ~{knock_knock}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    knock_knock: ""
  }
  output {
    File out_stdout = stdout()
  }
}