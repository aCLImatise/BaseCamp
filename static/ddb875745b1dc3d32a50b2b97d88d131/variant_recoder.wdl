version 1.0

task VariantRecoder {
  input {
    String? ensemblEnsembl
    String? ensemblEnsemblFuncGen
    String? ensemblEnsemblIo
    String? ensemblEnsemblVariation
    String? ensemblEnsemblVep
  }
  command <<<
    variant_recoder \
      ~{ensemblEnsembl} \
      ~{ensemblEnsemblFuncGen} \
      ~{ensemblEnsemblIo} \
      ~{ensemblEnsemblVariation} \
      ~{ensemblEnsemblVep}
  >>>
}