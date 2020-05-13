version 1.0

task Novasplice {
  input {
    String vcfVcf
    String zippedZippedVcf
    String referenceReference
    String zippedZippedReference
    String bedBed
    String chrChrLens
    String percentPercent
    String outputOutput
    Int intermediateIntermediate
    String tempTemp
    String libraryLibraryName
  }
  command <<<
    novasplice \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(zippedZippedVcf) then ("--zippedvcf " +  '"' + zippedZippedVcf + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(zippedZippedReference) then ("--zippedreference " +  '"' + zippedZippedReference + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(chrChrLens) then ("--chrlens " +  '"' + chrChrLens + '"') else ""} \
      ~{if defined(percentPercent) then ("--percent " +  '"' + percentPercent + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(intermediateIntermediate) then ("--intermediate " +  '"' + intermediateIntermediate + '"') else ""} \
      ~{if defined(tempTemp) then ("--temp " +  '"' + tempTemp + '"') else ""} \
      ~{if defined(libraryLibraryName) then ("--libraryname " +  '"' + libraryLibraryName + '"') else ""}
  >>>
}