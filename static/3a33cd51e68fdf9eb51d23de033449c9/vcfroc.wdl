version 1.0

task Vcfroc {
  input {
    File truthTruthVcf
    String windowWindowSize
    Boolean complexComplex
    File referenceReference
    String? vcfVcfFile
  }
  command <<<
    vcfroc \
      ~{vcfVcfFile} \
      ~{if defined(truthTruthVcf) then ("--truth-vcf " +  '"' + truthTruthVcf + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{true="--complex" false="" complexComplex} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""}
  >>>
}