version 1.0

task RepeatMaskerpy {
  command <<<
    RepeatMasker_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}