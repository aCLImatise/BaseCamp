version 1.0

task SequenceGetpy {
  command <<<
    sequenceGet_py
  >>>
  output {
    File out_stdout = stdout()
  }
}