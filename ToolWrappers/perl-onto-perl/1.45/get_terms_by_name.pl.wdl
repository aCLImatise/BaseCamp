version 1.0

task GetTermsByNamepl {
  input {
    Boolean? obo_input_file
    Boolean? term_name
    String usage
  }
  command <<<
    get_terms_by_name_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""} \
      ~{if (term_name) then "-t" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    term_name: "term name"
    usage: ": get_terms_by_name.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}