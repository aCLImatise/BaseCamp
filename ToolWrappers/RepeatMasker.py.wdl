version 1.0

task RepeatMaskerpy {
  command <<<
    RepeatMasker_py
  >>>
  output {
    File out_stdout = stdout()
  }
}