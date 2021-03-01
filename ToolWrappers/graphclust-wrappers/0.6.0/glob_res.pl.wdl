version 1.0

task GlobRespl {
  command <<<
    glob_res_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}