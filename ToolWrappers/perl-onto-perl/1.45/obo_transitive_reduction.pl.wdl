version 1.0

task OboTransitiveReductionpl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    obo_transitive_reduction_pl \
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