version 1.0

task AnviGenVariabilityNetwork {
  input {
    String? input_file
    String? max_num_unique_positions
    File? output_file
  }
  command <<<
    anvi-gen-variability-network \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(max_num_unique_positions) then ("--max-num-unique-positions " +  '"' + max_num_unique_positions + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    input_file: "The anvi'o variability profile. Please see `anvi-gen- variability-profile` to generate one."
    max_num_unique_positions: "Maximum number of unique positions to be used in the network. This may be one way to avoid extremely large network descriptions that would defeat the purpose of a quick visualization. If there are more unique positions in the variability profile, the program will randomly select a subset of them to match the `max- num-unique-positions`. The default is 0, which means all positions should be reported. Remember that the number of nodes in the network will also depend on the number of samples described in the variability profile."
    output_file: "File path to store results."
  }
}