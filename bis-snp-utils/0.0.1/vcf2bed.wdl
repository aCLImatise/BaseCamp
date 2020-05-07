version 1.0

task Vcf2bed.pl {
  input {
    String? perlPerl
    String? vcf2bedplVcf2bedpl
    String? inputInputFileName
    String? cgCg
  }
  command <<<
    vcf2bed.pl \
      ~{perlPerl} \
      ~{vcf2bedplVcf2bedpl} \
      ~{inputInputFileName} \
      ~{cgCg}
  >>>
}