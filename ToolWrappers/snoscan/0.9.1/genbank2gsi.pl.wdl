version 1.0

task Genbank2gsipl {
  command <<<
    genbank2gsi_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}