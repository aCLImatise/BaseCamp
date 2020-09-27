version 1.0

task Vcf2bedNOMEpl {
  input {
    String perl
    Int vcftwobedsixplussixdotpl
    String input_file_name
    String? cg
  }
  command <<<
    vcf2bed_NOME_pl \
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
  output {
    File out_stdout = stdout()
  }
}