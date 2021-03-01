version 1.0

task Cegma2gffpl {
  command <<<
    cegma2gff_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}