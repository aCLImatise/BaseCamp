version 1.0

task Unitaspl {
  input {
    String? species
    Int? refseq
    String xxxx_x_dot
    String options_dot
    String www_dot_small_rna_group_dot_uni_mainz_dot_de
    Float www_dot_small_rna_group_dot_uni_mainz_dot_de_slash_software_slash_unit_as_documentation_one_dot_six_dot_one_dot_pdf
  }
  command <<<
    unitas_pl \
      ~{xxxx_x_dot} \
      ~{options_dot} \
      ~{www_dot_small_rna_group_dot_uni_mainz_dot_de} \
      ~{www_dot_small_rna_group_dot_uni_mainz_dot_de_slash_software_slash_unit_as_documentation_one_dot_six_dot_one_dot_pdf} \
      ~{if defined(species) then ("-species " +  '"' + species + '"') else ""} \
      ~{if defined(refseq) then ("-refseq " +  '"' + refseq + '"') else ""}
  >>>
  parameter_meta {
    species: "this:\\n-species x"
    refseq: "[-refseq sequence_2.fas ...]"
    xxxx_x_dot: ".oXXXXoo..                 ...oXXXXXXXXXXXXXXXXXX\\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXo'''\\nXXXXXXXXXXXXXXX------------------XXXXXXXXXXXX'"
    options_dot: "### How to cite unitas ###"
    www_dot_small_rna_group_dot_uni_mainz_dot_de: "You can find a more detailed documentation here:"
    www_dot_small_rna_group_dot_uni_mainz_dot_de_slash_software_slash_unit_as_documentation_one_dot_six_dot_one_dot_pdf: "### Twitter ###"
  }
  output {
    File out_stdout = stdout()
  }
}