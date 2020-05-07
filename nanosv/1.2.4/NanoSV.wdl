version 1.0

task NanoSV {
  input {
    String threadsThreads
    String sambaSambaMba
    String configConfig
    String bedBed
    String outputOutput
    String snpSnpFile
    String? bamBam
  }
  command <<<
    NanoSV \
      ~{bamBam} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(sambaSambaMba) then ("--sambamba " +  '"' + sambaSambaMba + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(snpSnpFile) then ("--snp_file " +  '"' + snpSnpFile + '"') else ""}
  >>>
}