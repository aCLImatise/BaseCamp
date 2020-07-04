version 1.0

task Pairsnp {
  input {
    Boolean? print_version_exit
    Boolean? output_sparse_matrix
    Boolean? distance_threshold_sparse
    Boolean? will_k_neighbours
    Boolean? output_csv_tsv
    Boolean? count_comparisons_off
    Boolean? number_use_default
    Boolean? blank_top_left
  }
  command <<<
    pairsnp \
      ~{true="-v" false="" print_version_exit} \
      ~{true="-s" false="" output_sparse_matrix} \
      ~{true="-d" false="" distance_threshold_sparse} \
      ~{true="-k" false="" will_k_neighbours} \
      ~{true="-c" false="" output_csv_tsv} \
      ~{true="-n" false="" count_comparisons_off} \
      ~{true="-t" false="" number_use_default} \
      ~{true="-b" false="" blank_top_left}
  >>>
  parameter_meta {
    print_version_exit: "Print version and exit"
    output_sparse_matrix: "Output in sparse matrix form (i,j,distance)."
    distance_threshold_sparse: "Distance threshold for sparse output. Only distances <= d will be returned."
    will_k_neighbours: "Will on return the k nearest neighbours for each sample in sparse output."
    output_csv_tsv: "Output CSV instead of TSV"
    count_comparisons_off: "Count comparisons with Ns (off by default)"
    number_use_default: "Number of threads to use (default=1)"
    blank_top_left: "Blank top left corner cell instead of 'pairsnp 0.2.0'"
  }
}