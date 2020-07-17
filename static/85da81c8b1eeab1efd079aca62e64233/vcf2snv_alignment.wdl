version 1.0

task Vcf2snvAlignment.pl {
  input {
    String? consolidate_vcf
  }
  command <<<
    vcf2snv_alignment.pl \
      ~{if defined(consolidate_vcf) then ("--consolidate_vcf " +  '"' + consolidate_vcf + '"') else ""}
  >>>
  parameter_meta {
    consolidate_vcf: ""
  }
}