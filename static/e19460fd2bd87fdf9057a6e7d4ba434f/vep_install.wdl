version 1.0

task VepInstall {
  input {
    String? ensemblEnsembl
    String? ensemblEnsemblFuncGen
    String? ensemblEnsemblIo
    String? ensemblEnsemblVariation
    String? ensemblEnsemblVep
  }
  command <<<
    vep_install \
      ~{ensemblEnsembl} \
      ~{ensemblEnsemblFuncGen} \
      ~{ensemblEnsemblIo} \
      ~{ensemblEnsemblVariation} \
      ~{ensemblEnsemblVep}
  >>>
}