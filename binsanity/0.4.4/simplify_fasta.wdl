version 1.0

task SimplifyFasta {
  input {
    Boolean? specify_name_input
    Boolean? specify_name_output
  }
  command <<<
    simplify-fasta \
      ~{true="-i" false="" specify_name_input} \
      ~{true="-o" false="" specify_name_output}
  >>>
  parameter_meta {
    specify_name_input: "Specify the name of the input file"
    specify_name_output: "Specify the name for the output file"
  }
}