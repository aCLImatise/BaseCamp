version 1.0

task TermCombinationLibpy {
  command <<<
    termCombinationLib_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/orsum:1.0.0--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}