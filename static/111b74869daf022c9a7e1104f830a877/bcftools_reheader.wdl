version 1.0

task BcftoolsReheader {
  input {
    File faiFai
    File headerHeader
    File outputOutput
    File samplesSamples
    Int threadsThreads
    String? optionsOptions
    String? inInVcfGz
  }
  command <<<
    bcftools reheader \
      ~{optionsOptions} \
      ~{if defined(faiFai) then ("--fai " +  '"' + faiFai + '"') else ""} \
      ~{if defined(headerHeader) then ("--header " +  '"' + headerHeader + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{inInVcfGz}
  >>>
}