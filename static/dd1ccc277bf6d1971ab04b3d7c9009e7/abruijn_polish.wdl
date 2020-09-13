version 1.0

task Abruijnpolish {
  input {
    File? path_file_verbose
    Int? number_parallel_threads
    String bubbles_file
    String subs_matrix
    String hop_o_matrix
    String out_file
  }
  command <<<
    abruijn_polish \
      ~{bubbles_file} \
      ~{subs_matrix} \
      ~{hop_o_matrix} \
      ~{out_file} \
      ~{if defined(path_file_verbose) then ("-v " +  '"' + path_file_verbose + '"') else ""} \
      ~{if defined(number_parallel_threads) then ("-t " +  '"' + number_parallel_threads + '"') else ""}
  >>>
  parameter_meta {
    path_file_verbose: "path to the file with verbose log [default = not set]"
    number_parallel_threads: "number of parallel threads [default = 1]"
    bubbles_file: "path to bubbles file"
    subs_matrix: "path to substitution matrix"
    hop_o_matrix: "path to homopolymer matrix"
    out_file: "path to output file"
  }
  output {
    File out_stdout = stdout()
  }
}