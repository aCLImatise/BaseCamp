version 1.0

task Pairsnp {
  input {
    Boolean? print_version_exit
    Boolean? output_sparse_matrix
    Boolean? distance_threshold_sparse
    Boolean? return_nearest_neighbours
    Boolean? output_csv_instead
    Boolean? count_comparisons_ns
    Boolean? number_threads_use
    Boolean? blank_top_left
  }
  command <<<
    pairsnp \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (output_sparse_matrix) then "-s" else ""} \
      ~{if (distance_threshold_sparse) then "-d" else ""} \
      ~{if (return_nearest_neighbours) then "-k" else ""} \
      ~{if (output_csv_instead) then "-c" else ""} \
      ~{if (count_comparisons_ns) then "-n" else ""} \
      ~{if (number_threads_use) then "-t" else ""} \
      ~{if (blank_top_left) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_version_exit: "Print version and exit"
    output_sparse_matrix: "Output in sparse matrix form (i,j,distance)."
    distance_threshold_sparse: "Distance threshold for sparse output. Only distances <= d will be returned."
    return_nearest_neighbours: "Will on return the k nearest neighbours for each sample in sparse output."
    output_csv_instead: "Output CSV instead of TSV"
    count_comparisons_ns: "Count comparisons with Ns (off by default)"
    number_threads_use: "Number of threads to use (default=1)"
    blank_top_left: "Blank top left corner cell instead of 'pairsnp 0.2.0'"
  }
  output {
    File out_stdout = stdout()
  }
}