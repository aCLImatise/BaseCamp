version 1.0

task Cmfinderpl {
  command <<<
    cmfinder_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}