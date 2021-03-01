version 1.0

task Fastahardmask {
  command <<<
    fastahardmask
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}