version 1.0

task LavpltPspl {
  command <<<
    lavplt_ps_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}