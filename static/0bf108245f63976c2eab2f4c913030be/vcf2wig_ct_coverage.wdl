version 1.0

task Vcf2wigCtCoverage.pl {
  input {
    String input_file_name
    String? cg
  }
  command <<<
    vcf2wig_ct_coverage.pl \
      ~{input_file_name} \
      ~{cg}
  >>>
  parameter_meta {
    input_file_name: ""
    cg: ""
  }
}