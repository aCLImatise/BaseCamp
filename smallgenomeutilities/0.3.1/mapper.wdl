version 1.0

task Mapper {
  input {
    String? name_coordinates_source
    String? name_target_contig
    Boolean? coordinates_should_treated
    Boolean? print_more_information
    String msa_file
  }
  command <<<
    mapper \
      ~{msa_file} \
      ~{if defined(name_coordinates_source) then ("-f " +  '"' + name_coordinates_source + '"') else ""} \
      ~{if defined(name_target_contig) then ("-t " +  '"' + name_target_contig + '"') else ""} \
      ~{true="-1" false="" coordinates_should_treated} \
      ~{true="-v" false="" print_more_information}
  >>>
  parameter_meta {
    name_coordinates_source: "Name and Coordinates of source contig, e.g. CONSENSUS:100-200"
    name_target_contig: "Name of target contig"
    coordinates_should_treated: "Whether coordinates should be treated 1-based"
    print_more_information: "Print more information (such as subsequences in references)"
    msa_file: "file containing MSA"
  }
}