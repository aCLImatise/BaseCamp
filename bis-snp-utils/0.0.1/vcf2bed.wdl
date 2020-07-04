version 1.0

task Vcf2bed.pl {
  input {
    String input_file_name
    String? cg
  }
  command <<<
    vcf2bed.pl \
      ~{input_file_name} \
      ~{cg}
  >>>
  parameter_meta {
    input_file_name: ""
    cg: ""
  }
}