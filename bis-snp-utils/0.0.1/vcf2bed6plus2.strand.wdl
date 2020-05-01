version 1.0

task Vcf2bed6plus2.strand.pl {
  input {
    String? perlPerl
    String? vcf2bed6plus2strandplVcf2bed6plus2strandpl
    String? inputInputFileName
    String? cgCg
  }
  command <<<
    vcf2bed6plus2.strand.pl \
      ~{perlPerl} \
      ~{vcf2bed6plus2strandplVcf2bed6plus2strandpl} \
      ~{inputInputFileName} \
      ~{cgCg}
  >>>
}