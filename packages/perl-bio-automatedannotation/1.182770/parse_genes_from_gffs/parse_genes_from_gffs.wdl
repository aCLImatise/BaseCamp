version 1.0

task ParseGenesFromGffs {
  command <<<
    parse_genes_from_gffs
  >>>
  output {
    File out_stdout = stdout()
  }
}