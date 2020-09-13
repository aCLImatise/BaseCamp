version 1.0

task ProteinorthoTreeBuilderCore {
  command <<<
    proteinortho_treeBuilderCore
  >>>
  output {
    File out_stdout = stdout()
  }
}