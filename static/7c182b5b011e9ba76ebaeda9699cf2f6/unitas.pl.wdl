version 1.0

task Unitaspl {
  input {
    Int? refseq
    String o_xx_do_to
    String xxx
    String xxxx_x_dot
    String xxx_xxx_oo_xxxx_xxx_xxx_xxx_xxx_xxx_xxx_xxx_xoooooodotdotdotxxxx
    String options_dot
    String www_dot_small_rna_group_dot_uni_mainz_dot_de
    Float www_dot_small_rna_group_dot_uni_mainz_dot_de_slash_software_slash_unit_as_documentation_one_dot_six_dot_one_dot_pdf
  }
  command <<<
    unitas_pl \
      ~{o_xx_do_to} \
      ~{xxx} \
      ~{xxxx_x_dot} \
      ~{xxx_xxx_oo_xxxx_xxx_xxx_xxx_xxx_xxx_xxx_xxx_xoooooodotdotdotxxxx} \
      ~{options_dot} \
      ~{www_dot_small_rna_group_dot_uni_mainz_dot_de} \
      ~{www_dot_small_rna_group_dot_uni_mainz_dot_de_slash_software_slash_unit_as_documentation_one_dot_six_dot_one_dot_pdf} \
      ~{if defined(refseq) then ("-refseq " +  '"' + refseq + '"') else ""}
  >>>
  parameter_meta {
    refseq: "[-refseq sequence_2.fas ...]"
    o_xx_do_to: ".XXXX"
    xxx: ".oXXXXXXXX. .XXXXo"
    xxxx_x_dot: ".oXXXXoo..                 ...oXXXXXXXXXXXXXXXXXX\\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXo'''\\nXXXXXXXXXXXXXXX------------------XXXXXXXXXXXX'"
    xxx_xxx_oo_xxxx_xxx_xxx_xxx_xxx_xxx_xxx_xxx_xoooooodotdotdotxxxx: ".XXXX'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'''XXXXXXXXXXXXXXX''"
    options_dot: "### How to cite unitas ###"
    www_dot_small_rna_group_dot_uni_mainz_dot_de: "You can find a more detailed documentation here:"
    www_dot_small_rna_group_dot_uni_mainz_dot_de_slash_software_slash_unit_as_documentation_one_dot_six_dot_one_dot_pdf: "### Twitter ###"
  }
  output {
    File out_stdout = stdout()
  }
}