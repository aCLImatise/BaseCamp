version 1.0

task Vcf2fasta {
  input {
    String referenceReference
    String prefixPrefix
    String defaultDefaultPloidy
    File? fileFile
  }
  command <<<
    vcf2fasta \
      ~{fileFile} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(defaultDefaultPloidy) then ("--default-ploidy " +  '"' + defaultDefaultPloidy + '"') else ""}
  >>>
}