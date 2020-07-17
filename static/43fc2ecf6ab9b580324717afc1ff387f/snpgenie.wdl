version 1.0

task Snpgenie.pl {
  input {
    Boolean? workdir
    String? vcf_format
  }
  command <<<
    snpgenie.pl \
      ~{true="--workdir" false="" workdir} \
      ~{if defined(vcf_format) then ("--vcfformat " +  '"' + vcf_format + '"') else ""}
  >>>
  parameter_meta {
    workdir: "=/home/kimura/HPV/SNPs/ --outdir=/home/kimura/HPV/SNPs/diversity/ > SNPGenie_HPV.out"
    vcf_format: "=/home/ohta/human/data/ --outdir=SNPGenie_Results"
  }
}