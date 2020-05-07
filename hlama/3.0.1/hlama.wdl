version 1.0

task Hlama {
  input {
    String tumorTumorNormal
    String pedigreePedigree
    String configConfig
    String workWorkDir
    String readsReadsBaseDir
    Boolean dontDontRunSnakeMake
    Boolean disableDisableChecks
    String numNumThreads
  }
  command <<<
    hlama \
      ~{if defined(tumorTumorNormal) then ("--tumor-normal " +  '"' + tumorTumorNormal + '"') else ""} \
      ~{if defined(pedigreePedigree) then ("--pedigree " +  '"' + pedigreePedigree + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(workWorkDir) then ("--work-dir " +  '"' + workWorkDir + '"') else ""} \
      ~{if defined(readsReadsBaseDir) then ("--reads-base-dir " +  '"' + readsReadsBaseDir + '"') else ""} \
      ~{true="--dont-run-snakemake" false="" dontDontRunSnakeMake} \
      ~{true="--disable-checks" false="" disableDisableChecks} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""}
  >>>
}