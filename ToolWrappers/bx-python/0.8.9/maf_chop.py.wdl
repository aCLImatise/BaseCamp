version 1.0

task MafChoppy {
  command <<<
    maf_chop_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}