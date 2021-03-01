version 1.0

task Sgaastatpy {
  command <<<
    sga_astat_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}