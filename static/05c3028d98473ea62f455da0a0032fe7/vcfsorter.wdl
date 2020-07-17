version 1.0

task Vcfsorter.pl {
  input {
    String genome_dot_dict
    String my_vcf
  }
  command <<<
    vcfsorter.pl \
      ~{genome_dot_dict} \
      ~{my_vcf}
  >>>
  parameter_meta {
    genome_dot_dict: ""
    my_vcf: ""
  }
}