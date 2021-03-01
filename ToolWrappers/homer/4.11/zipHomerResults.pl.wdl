version 1.0

task ZipHomerResultspl {
  command <<<
    zipHomerResults_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}