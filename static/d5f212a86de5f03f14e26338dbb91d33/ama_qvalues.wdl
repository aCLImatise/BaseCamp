version 1.0

task Amaqvalues {
  input {
    String copyright
  }
  command <<<
    ama_qvalues \
      ~{copyright}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    copyright: "(2010) The University of Queensland"
  }
  output {
    File out_stdout = stdout()
  }
}