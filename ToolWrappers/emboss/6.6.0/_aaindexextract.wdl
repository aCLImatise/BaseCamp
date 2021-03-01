version 1.0

task Aaindexextract {
  command <<<
    _aaindexextract
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}