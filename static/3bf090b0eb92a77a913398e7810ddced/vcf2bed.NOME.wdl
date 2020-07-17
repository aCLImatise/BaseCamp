version 1.0

task Vcf2bed.NOME.pl {
  input {
    String perl
    String vcftwobedsixplussixdotpl
    String input_file_name
    String? cg
  }
  command <<<
    vcf2bed.NOME.pl \
      ~{perl} \
      ~{vcftwobedsixplussixdotpl} \
      ~{input_file_name} \
      ~{cg}
  >>>
  parameter_meta {
    perl: ""
    vcftwobedsixplussixdotpl: ""
    input_file_name: ""
    cg: ""
  }
}