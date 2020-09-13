version 1.0

task GetTermLocalNeighbourhoodpl {
  input {
    Boolean? obo_input_file
    Boolean? term_id
    Boolean? relationship_type
    String usage
    String options
  }
  command <<<
    get_term_local_neighbourhood_pl \
      ~{usage} \
      ~{options} \
      ~{if (obo_input_file) then "-f" else ""} \
      ~{if (term_id) then "-t" else ""} \
      ~{if (relationship_type) then "-r" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    term_id: "term ID"
    relationship_type: "relationship type"
    usage: ": get_term_local_neighbourhood.pl [options]"
    options: ":"
  }
  output {
    File out_stdout = stdout()
  }
}