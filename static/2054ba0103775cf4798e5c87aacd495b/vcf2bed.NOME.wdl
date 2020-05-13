version 1.0

task Vcf2bed.NOME.pl {
  input {
    String? perlPerl
    String? vcf2bed6plus6plVcf2bed6plus6pl
    String? inputInputFileName
    String? cgCg
  }
  command <<<
    vcf2bed.NOME.pl \
      ~{perlPerl} \
      ~{vcf2bed6plus6plVcf2bed6plus6pl} \
      ~{inputInputFileName} \
      ~{cgCg}
  >>>
}