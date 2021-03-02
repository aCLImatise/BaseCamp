version 1.0

task SequenceGetpy {
  command <<<
    sequenceGet_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}