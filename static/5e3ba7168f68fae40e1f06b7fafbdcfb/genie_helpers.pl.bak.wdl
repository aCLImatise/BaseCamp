version 1.0

task GenieHelpersplbak {
  command <<<
    genie_helpers_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}