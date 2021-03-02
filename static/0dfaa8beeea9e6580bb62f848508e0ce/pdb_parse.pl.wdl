version 1.0

task PdbParsepl {
  command <<<
    pdb_parse_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}