version 1.0

task Mapper {
  input {
    Int? name_coordinates_source
    String? name_target_contig
    Boolean? coordinates_treated_based
    Boolean? print_more_information
    String msa_file
  }
  command <<<
    mapper \
      ~{msa_file} \
      ~{if defined(name_coordinates_source) then ("-f " +  '"' + name_coordinates_source + '"') else ""} \
      ~{if defined(name_target_contig) then ("-t " +  '"' + name_target_contig + '"') else ""} \
      ~{if (coordinates_treated_based) then "-1" else ""} \
      ~{if (print_more_information) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_coordinates_source: "Name and Coordinates of source contig, e.g. CONSENSUS:100-200"
    name_target_contig: "Name of target contig"
    coordinates_treated_based: "Whether coordinates should be treated 1-based"
    print_more_information: "Print more information (such as subsequences in references)"
    msa_file: "file containing MSA"
  }
  output {
    File out_stdout = stdout()
  }
}