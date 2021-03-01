version 1.0

task Scipiogff2gffpl {
  command <<<
    scipiogff2gff_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}