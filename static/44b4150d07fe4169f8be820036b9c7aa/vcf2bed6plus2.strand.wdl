version 1.0

task Vcf2bed6plus2.strand.pl {
  input {
    String input_file_name
    String? cg
  }
  command <<<
    vcf2bed6plus2.strand.pl \
      ~{input_file_name} \
      ~{cg}
  >>>
  parameter_meta {
    input_file_name: ""
    cg: ""
  }
}