version 1.0

task Haplo {
  input {
    String? ensemblEnsembl
    String? ensemblEnsemblFuncGen
    String? ensemblEnsemblIo
    String? ensemblEnsemblVariation
    String? ensemblEnsemblVep
  }
  command <<<
    haplo \
      ~{ensemblEnsembl} \
      ~{ensemblEnsemblFuncGen} \
      ~{ensemblEnsemblIo} \
      ~{ensemblEnsemblVariation} \
      ~{ensemblEnsemblVep}
  >>>
}