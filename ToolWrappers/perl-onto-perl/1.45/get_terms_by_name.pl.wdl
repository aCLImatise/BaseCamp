version 1.0

task GetTermsByNamepl {
  input {
    Boolean? obo_input_file
    Boolean? term_name
    String usage
    String options
  }
  command <<<
    get_terms_by_name_pl \
      ~{usage} \
      ~{options} \
      ~{if (obo_input_file) then "-f" else ""} \
      ~{if (term_name) then "-t" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    term_name: "term name"
    usage: ": get_terms_by_name.pl [options]"
    options: ":"
  }
  output {
    File out_stdout = stdout()
  }
}