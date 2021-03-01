version 1.0

task Wig2barwig {
  command <<<
    wig2barwig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}