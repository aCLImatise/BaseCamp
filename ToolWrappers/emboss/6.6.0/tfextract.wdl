version 1.0

task Tfextract {
  command <<<
    tfextract
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}