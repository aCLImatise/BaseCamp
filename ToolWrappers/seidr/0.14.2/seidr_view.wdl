version 1.0

task SeidrView {
  input {
    File? in_file
    Boolean? arg_inf_edges
    Boolean? threshold_edges_instead
    Boolean? arg_last_score
    Boolean? arg_supply_function
    Boolean? arg_include_nodes
    Boolean? arg_view_only
    Boolean? print_node_index
    Boolean? print_column_headers
    Boolean? print_supplementary_information
    Boolean? print_much_information
    Boolean? arg_delimiter_supplementary
    Boolean? arg_delimiter_scoresranks
    Boolean? print_file_header
    Boolean? print_node_centrality
    File? o
    Boolean? output_binary_seidrfile
    File? force_overwrite_output
    Boolean? search_case_insensitive
    Boolean? arg_auto_directory
  }
  command <<<
    seidr view \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if (arg_inf_edges) then "-t" else ""} \
      ~{if (threshold_edges_instead) then "-r" else ""} \
      ~{if (arg_last_score) then "-i" else ""} \
      ~{if (arg_supply_function) then "-F" else ""} \
      ~{if (arg_include_nodes) then "-n" else ""} \
      ~{if (arg_view_only) then "-l" else ""} \
      ~{if (print_node_index) then "-N" else ""} \
      ~{if (print_column_headers) then "-c" else ""} \
      ~{if (print_supplementary_information) then "-a" else ""} \
      ~{if (print_much_information) then "-D" else ""} \
      ~{if (arg_delimiter_supplementary) then "-s" else ""} \
      ~{if (arg_delimiter_scoresranks) then "-d" else ""} \
      ~{if (print_file_header) then "-H" else ""} \
      ~{if (print_node_centrality) then "-C" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (output_binary_seidrfile) then "-b" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (search_case_insensitive) then "-I" else ""} \
      ~{if (arg_auto_directory) then "-T" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    in_file: "Input SeidrFile"
    arg_inf_edges: "[ --threshold ] arg (=-inf)    Only print edges with a weight >= t"
    threshold_edges_instead: "[ --threshold-rank ]           Threshold edges with a rank of <= t instead"
    arg_last_score: "[ --index ] arg (=last score)  Score column to use as edge weights"
    arg_supply_function: "[ --filter ] arg               Supply a filter function to select edges"
    arg_include_nodes: "[ --nodelist ] arg             Include only these nodes"
    arg_view_only: "[ --lines ] arg                View only first l results"
    print_node_index: "[ --no-names ]                 Print node index instead of name"
    print_column_headers: "[ --column-headers ]           Print column headers"
    print_supplementary_information: "[ --tags ]                     Print supplementary information tags"
    print_much_information: "[ --dense ]                    Print as much information as possible for\\neach edge"
    arg_delimiter_supplementary: "[ --sc-delim ] arg (=;)        Delimiter for supplementary tags"
    arg_delimiter_scoresranks: "[ --delim ] arg (=;)           Delimiter for scores/ranks"
    print_file_header: "[ --header ]                   Print file header as text"
    print_node_centrality: "[ --centrality ]               Print node centrality scores if present"
    o: "[ --outfile ] arg (=-)         Output file name ['-' for stdout]"
    output_binary_seidrfile: "[ --binary ]                   Output binary SeidrFile"
    force_overwrite_output: "[ --force ]                    Force overwrite output file if it exists"
    search_case_insensitive: "[ --case-insensitive ]         Search case insensitive nodes"
    arg_auto_directory: "[ --tempdir ] arg (=auto)      Directory to store temporary data"
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
    File out_force_overwrite_output = "${in_force_overwrite_output}"
  }
}