version 1.0

task GetObsoleteTermIdVsNameInGopl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    get_obsolete_term_id_vs_name_in_go_pl \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    obo_input_file: "OBO input file"
  }
  output {
    File out_stdout = stdout()
  }
}