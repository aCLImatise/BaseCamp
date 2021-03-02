version 1.0

task ProteinorthoTreeBuilderCore {
  command <<<
    proteinortho_treeBuilderCore
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}