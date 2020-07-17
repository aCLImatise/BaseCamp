version 1.0

task DiceyHunt {
  input {
    Boolean? arg_genome_file
    Boolean? arg_gzipped_output
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
      ~{true="-g" false="" arg_genome_file} \
      ~{true="-o" false="" arg_gzipped_output} \
      ~{true="-m" false="" arg_max_number} \
      ~{true="-x" false="" arg_neighborhood_size} \
      ~{true="-d" false="" arg_neighborhood_distance} \
      ~{true="-n" false="" use_hamming_neighborhood} \
      ~{true="-f" false="" only_forward_matches}
  >>>
  parameter_meta {
    arg_genome_file: "[ --genome ] arg                   genome file"
    arg_gzipped_output: "[ --outfile ] arg                  gzipped output file"
    arg_max_number: "[ --maxmatches ] arg (=1000)       max. number of matches"
    arg_neighborhood_size: "[ --maxNeighborhood ] arg (=10000) max. neighborhood size"
    arg_neighborhood_distance: "[ --distance ] arg (=1)            neighborhood distance"
    use_hamming_neighborhood: "[ --hamming ]                      use hamming neighborhood instead of  edit distance"
    only_forward_matches: "[ --forward ]                      only forward matches"
    catt_acta_a_cat_ca_gt: ""
  }
}