version 1.0

task _genbank2gsipl {
  command <<<
    __genbank2gsi_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}