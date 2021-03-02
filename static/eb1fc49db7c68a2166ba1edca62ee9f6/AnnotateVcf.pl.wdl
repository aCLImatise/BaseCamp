version 1.0

task AnnotateVcfpl {
  command <<<
    AnnotateVcf_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}