version 1.0

task Vcf2wigCtCoverage.pl {
  input {
    String? perlPerl
    String? vcf2wigVcf2wigCtCoveragePl
    String? inputInputFileName
    String? cgCg
  }
  command <<<
    vcf2wig_ct_coverage.pl \
      ~{perlPerl} \
      ~{vcf2wigVcf2wigCtCoveragePl} \
      ~{inputInputFileName} \
      ~{cgCg}
  >>>
}