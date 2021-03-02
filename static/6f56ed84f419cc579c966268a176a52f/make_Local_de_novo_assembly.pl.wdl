version 1.0

task MakeLocalDeNovoAssemblypl {
  command <<<
    make_Local_de_novo_assembly_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}