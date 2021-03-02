version 1.0

task PoppunkCalculateRandIndicespy {
  input {
    String? comma_separated_list
    File? name_output_file
    File? subset
    String calculate_rand_indices
  }
  command <<<
    poppunk_calculate_rand_indices_py \
      ~{calculate_rand_indices} \
      ~{if defined(comma_separated_list) then ("--input " +  '"' + comma_separated_list + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(subset) then ("--subset " +  '"' + subset + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    comma_separated_list: "Comma separated list of clustering CSVs between which\\nindices should be calculated (required)"
    name_output_file: "Name of output file [default = rand.out]"
    subset: "File with list of sequences to extract for comparison, one\\nper line, no header; must be present in all CSVs\\n"
    calculate_rand_indices: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}