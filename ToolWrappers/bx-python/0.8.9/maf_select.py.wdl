version 1.0

task MafSelectpy {
  command <<<
    maf_select_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}