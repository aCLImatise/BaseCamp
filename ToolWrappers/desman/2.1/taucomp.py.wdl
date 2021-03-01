version 1.0

task Taucomppy {
  command <<<
    taucomp_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}