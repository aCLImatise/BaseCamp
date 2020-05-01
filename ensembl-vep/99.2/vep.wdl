version 1.0

task Vep {
  input {
    String? ensemblEnsembl
    String? ensemblEnsemblFuncGen
    String? ensemblEnsemblIo
    String? ensemblEnsemblVariation
    String? ensemblEnsemblVep
  }
  command <<<
    vep \
      ~{ensemblEnsembl} \
      ~{ensemblEnsemblFuncGen} \
      ~{ensemblEnsemblIo} \
      ~{ensemblEnsemblVariation} \
      ~{ensemblEnsemblVep}
  >>>
}