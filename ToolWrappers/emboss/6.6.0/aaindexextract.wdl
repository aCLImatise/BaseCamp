version 1.0

task Aaindexextract {
  command <<<
    aaindexextract
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}