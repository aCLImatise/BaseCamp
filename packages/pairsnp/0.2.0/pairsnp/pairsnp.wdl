version 1.0

task Pairsnp {
  input {
    Boolean? print_version_exit
    Boolean? output_sparse_matrix
    Boolean? distance_threshold_sparse
    Boolean? will_return_k
    Boolean? output_csv_instead
    Boolean? count_comparisons_off
    Boolean? number_use_default
    Boolean? blank_top_left
  }
  command <<<
    pairsnp \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (output_sparse_matrix) then "-s" else ""} \
      ~{if (distance_threshold_sparse) then "-d" else ""} \
      ~{if (will_return_k) then "-k" else ""} \
      ~{if (output_csv_instead) then "-c" else ""} \
      ~{if (count_comparisons_off) then "-n" else ""} \
      ~{if (number_use_default) then "-t" else ""} \
      ~{if (blank_top_left) then "-b" else ""}
  >>>
  parameter_meta {
    print_version_exit: "Print version and exit"
    output_sparse_matrix: "Output in sparse matrix form (i,j,distance)."
    distance_threshold_sparse: "Distance threshold for sparse output. Only distances <= d will be returned."
    will_return_k: "Will on return the k nearest neighbours for each sample in sparse output."
    output_csv_instead: "Output CSV instead of TSV"
    count_comparisons_off: "Count comparisons with Ns (off by default)"
    number_use_default: "Number of threads to use (default=1)"
    blank_top_left: "Blank top left corner cell instead of 'pairsnp 0.2.0'"
  }
  output {
    File out_stdout = stdout()
  }
}