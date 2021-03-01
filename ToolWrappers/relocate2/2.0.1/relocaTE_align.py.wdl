version 1.0

task RelocaTEAlignpy {
  command <<<
    relocaTE_align_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}