version 1.0

task Ps2epsiFile2ps {
  command <<<
    ps2epsi file2_ps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}