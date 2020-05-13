version 1.0

task MocaFindMotifs {
  input {
    String bedBedFile
    String ocOc
    String configurationConfiguration
    Int slopSlopLength
    Int flankFlankMotif
    Int nNMotif
    Int coresCores
    String genomeGenomeBuild
    Boolean showShowProgress
  }
  command <<<
    moca find_motifs \
      ~{if defined(bedBedFile) then ("--bedfile " +  '"' + bedBedFile + '"') else ""} \
      ~{if defined(ocOc) then ("--oc " +  '"' + ocOc + '"') else ""} \
      ~{if defined(configurationConfiguration) then ("--configuration " +  '"' + configurationConfiguration + '"') else ""} \
      ~{if defined(slopSlopLength) then ("--slop-length " +  '"' + slopSlopLength + '"') else ""} \
      ~{if defined(flankFlankMotif) then ("--flank-motif " +  '"' + flankFlankMotif + '"') else ""} \
      ~{if defined(nNMotif) then ("--n-motif " +  '"' + nNMotif + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(genomeGenomeBuild) then ("--genome-build " +  '"' + genomeGenomeBuild + '"') else ""} \
      ~{true="--show-progress" false="" showShowProgress}
  >>>
}