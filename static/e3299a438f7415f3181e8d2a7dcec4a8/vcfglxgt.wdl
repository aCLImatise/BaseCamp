version 1.0

task Vcfglxgt {
  input {
    Boolean fixFixNullGenotypes
    String? vcfVcfFile
  }
  command <<<
    vcfglxgt \
      ~{vcfVcfFile} \
      ~{true="--fix-null-genotypes" false="" fixFixNullGenotypes}
  >>>
}