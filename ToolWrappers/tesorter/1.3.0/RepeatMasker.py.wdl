version 1.0

task RepeatMaskerpy {
  command <<<
    RepeatMasker_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/tesorter:1.3.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}