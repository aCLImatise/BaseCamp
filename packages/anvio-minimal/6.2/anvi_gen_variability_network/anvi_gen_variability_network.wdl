version 1.0

task Anvigenvariabilitynetwork {
  input {
    File? input_file
    Int? max_num_unique_positions
    File? output_file
  }
  command <<<
    anvi_gen_variability_network \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(max_num_unique_positions) then ("--max-num-unique-positions " +  '"' + max_num_unique_positions + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    input_file: "The anvi'o variability profile. Please see `anvi-gen-\\nvariability-profile` to generate one."
    max_num_unique_positions: "Maximum number of unique positions to be used in the\\nnetwork. This may be one way to avoid extremely large\\nnetwork descriptions that would defeat the purpose of\\na quick visualization. If there are more unique\\npositions in the variability profile, the program will\\nrandomly select a subset of them to match the `max-\\nnum-unique-positions`. The default is 0, which means\\nall positions should be reported. Remember that the\\nnumber of nodes in the network will also depend on the\\nnumber of samples described in the variability\\nprofile."
    output_file: "File path to store results.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}