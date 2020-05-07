version 1.0

task GimmeDiff {
  input {
    String pfmPfmFile
    Boolean cC
    Int enrichmentEnrichment
    Int frequencyFrequency
    String genomeGenome
    String? faFaFiles
    String? bgfBgfAFile
    String? pngPngFile
  }
  command <<<
    gimme diff \
      ~{faFaFiles} \
      ~{if defined(pfmPfmFile) then ("--pfmfile " +  '"' + pfmPfmFile + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{if defined(enrichmentEnrichment) then ("--enrichment " +  '"' + enrichmentEnrichment + '"') else ""} \
      ~{if defined(frequencyFrequency) then ("--frequency " +  '"' + frequencyFrequency + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{bgfBgfAFile} \
      ~{pngPngFile}
  >>>
}