version 1.0

task OboTransitiveReductionpl {
  input {
    Boolean? obo_input_file
    String usage
  }
  command <<<
    obo_transitive_reduction_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": obo_transitive_reduction.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}