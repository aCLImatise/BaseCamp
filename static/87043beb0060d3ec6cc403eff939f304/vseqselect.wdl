version 1.0

task Vseqselect {
  command <<<
    vseqselect
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}