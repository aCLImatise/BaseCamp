version 1.0

task Jaspextract {
  command <<<
    jaspextract
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}