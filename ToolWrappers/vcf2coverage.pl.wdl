version 1.0

task Vcf2coveragepl {
  input {
    String perl
    Int vcf_two_cover_a_edo_tpl
    String input_file_name
    String? cg
  }
  command <<<
    vcf2coverage_pl \
      ~{perl} \
      ~{vcf_two_cover_a_edo_tpl} \
      ~{input_file_name} \
      ~{cg}
  >>>
  parameter_meta {
    perl: ""
    vcf_two_cover_a_edo_tpl: ""
    input_file_name: ""
    cg: ""
  }
  output {
    File out_stdout = stdout()
  }
}