version 1.0

task OrthomclDumpPairsFiles {
  input {
    Boolean inparalogInparalog
    String? configConfigFile
  }
  command <<<
    orthomclDumpPairsFiles \
      ~{configConfigFile} \
      ~{true="- InParalog" false="" inparalogInparalog}
  >>>
}