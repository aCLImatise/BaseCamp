version 1.0

task Vcfgeno2haplo {
  input {
    File referenceReference
    String windowWindowSize
    Boolean onlyOnlyVariants
    String? vcfVcfFile
  }
  command <<<
    vcfgeno2haplo \
      ~{vcfVcfFile} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{true="--only-variants" false="" onlyOnlyVariants}
  >>>
}