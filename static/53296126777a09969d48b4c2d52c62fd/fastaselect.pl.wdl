version 1.0

task Fastaselectpl {
  command <<<
    fastaselect_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}