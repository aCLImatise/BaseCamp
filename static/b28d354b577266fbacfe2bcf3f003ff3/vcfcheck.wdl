version 1.0

task Vcfcheck {
  input {
    Boolean fastFastAReference
    String excludeExcludeFailures
    Boolean keepKeepFailures
    String? vcfVcfFile
  }
  command <<<
    vcfcheck \
      ~{vcfVcfFile} \
      ~{true="--fasta-reference" false="" fastFastAReference} \
      ~{if defined(excludeExcludeFailures) then ("--exclude-failures " +  '"' + excludeExcludeFailures + '"') else ""} \
      ~{true="--keep-failures" false="" keepKeepFailures}
  >>>
}