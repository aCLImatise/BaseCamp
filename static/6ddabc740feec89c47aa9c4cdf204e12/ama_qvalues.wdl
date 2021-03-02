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
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    copyright: "(2010) The University of Queensland"
  }
  output {
    File out_stdout = stdout()
  }
}