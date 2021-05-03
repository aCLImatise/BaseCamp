version 1.0

task FeGeniepy {
  command <<<
    FeGenie_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/fegenie:1.0--py39r40hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}