version 1.0

task Vsubseqselect {
  command <<<
    vsubseqselect
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}