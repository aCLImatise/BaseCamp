version 1.0

task Ribotapersh {
  command <<<
    Ribotaper_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}