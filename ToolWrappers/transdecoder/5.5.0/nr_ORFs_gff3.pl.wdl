version 1.0

task NrORFsGff3pl {
  command <<<
    nr_ORFs_gff3_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}