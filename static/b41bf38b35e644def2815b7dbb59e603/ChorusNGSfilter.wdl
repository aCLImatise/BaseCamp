version 1.0

task ChorusNGSfilter {
  input {
    String jellyfishJellyfish
    String genomeGenome
    String inputInput
    String gzippedGzipped
    String threadsThreads
    String kmKmEr
    String probeProbe
    String outputOutput
    Boolean jJ
  }
  command <<<
    ChorusNGSfilter \
      ~{if defined(jellyfishJellyfish) then ("--jellyfish " +  '"' + jellyfishJellyfish + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(gzippedGzipped) then ("--gzipped " +  '"' + gzippedGzipped + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(probeProbe) then ("--probe " +  '"' + probeProbe + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-j" false="" jJ}
  >>>
}