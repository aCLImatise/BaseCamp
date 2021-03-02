version 1.0

task Gth2gtfpl {
  command <<<
    gth2gtf_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}