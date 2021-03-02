version 1.0

task Unitaspl {
  input {
    String? species
    Int? refseq
    String xxxx_x_dot
    String options_dot
  }
  command <<<
    unitas_pl \
      ~{xxxx_x_dot} \
      ~{options_dot} \
      ~{if defined(species) then ("-species " +  '"' + species + '"') else ""} \
      ~{if defined(refseq) then ("-refseq " +  '"' + refseq + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    species: "this:"
    refseq: "[-refseq sequence_2.fas ...]"
    xxxx_x_dot: ".oXXXXoo..                 ...oXXXXXXXXXXXXXXXXXX\\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXo'''\\nXXXXXXXXXXXXXXX------------------XXXXXXXXXXXX'"
    options_dot: "### How to cite unitas ###"
  }
  output {
    File out_stdout = stdout()
  }
}