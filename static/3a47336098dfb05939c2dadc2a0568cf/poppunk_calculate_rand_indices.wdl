version 1.0

task PoppunkCalculateRandIndices.py {
  input {
    String? comma_separated_list
    String? name_output_file
    String? subset
    String calculate_rand_indices
  }
  command <<<
    poppunk_calculate_rand_indices.py \
      ~{calculate_rand_indices} \
      ~{if defined(comma_separated_list) then ("--input " +  '"' + comma_separated_list + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(subset) then ("--subset " +  '"' + subset + '"') else ""}
  >>>
  parameter_meta {
    comma_separated_list: "Comma separated list of clustering CSVs between which indices should be calculated (required)"
    name_output_file: "Name of output file [default = rand.out]"
    subset: "File with list of sequences to extract for comparison, one per line, no header; must be present in all CSVs"
    calculate_rand_indices: ""
  }
}