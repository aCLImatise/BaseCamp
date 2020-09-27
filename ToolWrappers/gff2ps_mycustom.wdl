version 1.0

task Gff2psMycustom {
  command <<<
    gff2ps_mycustom
  >>>
  output {
    File out_stdout = stdout()
  }
}