version 1.0

task DiceyHunt {
  input {
    Boolean? arg_genome_file
    File? arg_gzipped_output
    Boolean? arg_max_number
    Boolean? arg_neighborhood_size
    Boolean? arg_neighborhood_distance
    Boolean? use_hamming_neighborhood
    Boolean? only_forward_matches
    String catt_acta_a_cat_ca_gt
  }
  command <<<
    dicey hunt \
      ~{catt_acta_a_cat_ca_gt} \
      ~{if (arg_genome_file) then "-g" else ""} \
      ~{if (arg_gzipped_output) then "-o" else ""} \
      ~{if (arg_max_number) then "-m" else ""} \
      ~{if (arg_neighborhood_size) then "-x" else ""} \
      ~{if (arg_neighborhood_distance) then "-d" else ""} \
      ~{if (use_hamming_neighborhood) then "-n" else ""} \
      ~{if (only_forward_matches) then "-f" else ""}
  >>>
  parameter_meta {
    arg_genome_file: "[ --genome ] arg                   genome file"
    arg_gzipped_output: "[ --outfile ] arg                  gzipped output file"
    arg_max_number: "[ --maxmatches ] arg (=1000)       max. number of matches"
    arg_neighborhood_size: "[ --maxNeighborhood ] arg (=10000) max. neighborhood size"
    arg_neighborhood_distance: "[ --distance ] arg (=1)            neighborhood distance"
    use_hamming_neighborhood: "[ --hamming ]                      use hamming neighborhood instead of\\nedit distance"
    only_forward_matches: "[ --forward ]                      only forward matches"
    catt_acta_a_cat_ca_gt: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_gzipped_output = "${in_arg_gzipped_output}"
  }
}