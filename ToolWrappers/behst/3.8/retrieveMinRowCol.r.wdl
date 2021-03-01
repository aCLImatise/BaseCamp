version 1.0

task RetrieveMinRowColr {
  command <<<
    retrieveMinRowCol_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}