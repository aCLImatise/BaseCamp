version 1.0

task GetTermIdVsTermDefpl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    get_term_id_vs_term_def_pl \
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