version 1.0

task Scipiogff2gffpl {
  command <<<
    scipiogff2gff_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}