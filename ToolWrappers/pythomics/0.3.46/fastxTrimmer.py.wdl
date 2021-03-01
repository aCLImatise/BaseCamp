version 1.0

task FastxTrimmerpy {
  command <<<
    fastxTrimmer_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}