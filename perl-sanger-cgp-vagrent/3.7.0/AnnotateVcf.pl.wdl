version 1.0

task AnnotateVcfpl {
  command <<<
    AnnotateVcf_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}