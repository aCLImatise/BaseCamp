version 1.0

task ParseGenesFromGffs {
  command <<<
    parse_genes_from_gffs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}