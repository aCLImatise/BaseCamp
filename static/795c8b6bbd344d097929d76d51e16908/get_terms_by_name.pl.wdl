version 1.0

task GetTermsByNamepl {
  input {
    Boolean? obo_input_file
    Boolean? term_name
  }
  command <<<
    get_terms_by_name_pl \
      ~{if (obo_input_file) then "-f" else ""} \
      ~{if (term_name) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    obo_input_file: "OBO input file"
    term_name: "term name"
  }
  output {
    File out_stdout = stdout()
  }
}