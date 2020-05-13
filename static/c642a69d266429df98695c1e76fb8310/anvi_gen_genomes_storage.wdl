version 1.0

task AnviGenGenomesStorage {
  input {
    File externalExternalGenomes
    File internalInternalGenomes
    String geneGeneCaller
    String outputOutputFile
  }
  command <<<
    anvi-gen-genomes-storage \
      ~{if defined(externalExternalGenomes) then ("--external-genomes " +  '"' + externalExternalGenomes + '"') else ""} \
      ~{if defined(internalInternalGenomes) then ("--internal-genomes " +  '"' + internalInternalGenomes + '"') else ""} \
      ~{if defined(geneGeneCaller) then ("--gene-caller " +  '"' + geneGeneCaller + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}