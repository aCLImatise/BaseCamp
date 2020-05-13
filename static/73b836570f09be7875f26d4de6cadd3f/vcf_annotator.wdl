version 1.0

task VcfAnnotator {
  input {
    String outputOutput
    String? vcfVcfFile
    String? genbankGenbankFile
  }
  command <<<
    vcf-annotator \
      ~{vcfVcfFile} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{genbankGenbankFile}
  >>>
}