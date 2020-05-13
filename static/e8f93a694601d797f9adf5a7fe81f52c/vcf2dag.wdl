version 1.0

task Vcf2dag {
  input {
    File referenceReference
    String? vcfVcfFile
  }
  command <<<
    vcf2dag \
      ~{vcfVcfFile} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""}
  >>>
}