version 1.0

task OboTransitiveReduction.pl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    obo_transitive_reduction.pl \
      ~{true="-f" false="" obo_input_file}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
  }
}