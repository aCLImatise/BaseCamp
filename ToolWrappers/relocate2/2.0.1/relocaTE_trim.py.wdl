version 1.0

task RelocaTETrimpy {
  command <<<
    relocaTE_trim_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}