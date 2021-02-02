version 1.0

task FastxTrimmerpy {
  command <<<
    fastxTrimmer_py
  >>>
  output {
    File out_stdout = stdout()
  }
}