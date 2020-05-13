version 1.0

task Vcfqual2info {
  input {
    String? keyKey
    String? vcfVcfFile
  }
  command <<<
    vcfqual2info \
      ~{keyKey} \
      ~{vcfVcfFile}
  >>>
}