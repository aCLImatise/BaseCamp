version 1.0

task Cathcluster {
  input {
    Boolean? output_version_information
    String? link_dir_n
    Int? column_idx
    File? names_in_file
    Int? levels
    File? clusters_to_file
    File? merges_to_file
    File? clust_spans_to_file
    File? reps_to_file
    String input_file
  }
  command <<<
    cath_cluster \
      ~{input_file} \
      ~{if (output_version_information) then "-v" else ""} \
      ~{if defined(link_dir_n) then ("--link-dirn " +  '"' + link_dir_n + '"') else ""} \
      ~{if defined(column_idx) then ("--column-idx " +  '"' + column_idx + '"') else ""} \
      ~{if defined(names_in_file) then ("--names-infile " +  '"' + names_in_file + '"') else ""} \
      ~{if defined(levels) then ("--levels " +  '"' + levels + '"') else ""} \
      ~{if defined(clusters_to_file) then ("--clusters-to-file " +  '"' + clusters_to_file + '"') else ""} \
      ~{if defined(merges_to_file) then ("--merges-to-file " +  '"' + merges_to_file + '"') else ""} \
      ~{if defined(clust_spans_to_file) then ("--clust-spans-to-file " +  '"' + clust_spans_to_file + '"') else ""} \
      ~{if defined(reps_to_file) then ("--reps-to-file " +  '"' + reps_to_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_version_information: "[ --version ]              Output version information"
    link_dir_n: "Interpret each link value as <dirn>, one of:\\nDISTANCE - A higher value means the corresponding two entries are more distant\\nSTRENGTH - A higher value means the corresponding tow entries are more connected"
    column_idx: "(=3)    Parse the link values (distances/strengths) from column number <colnum>\\nMust be ≥ 3 because columns 1 and 2 must contain the IDs"
    names_in_file: "[RECOMMENDED] Read names and sorting scores from file <file> (or '-' for stdin)"
    levels: "Cluster at levels <levels>, which is ordered values separated by commas (eg 35,60,95,100)"
    clusters_to_file: "Write the clustering to file <file> (or '-' for stdout)"
    merges_to_file: "Write the ordered list of merges to file <file> (or '-' for stdout)"
    clust_spans_to_file: "Write links that form spanning trees for each cluster to file <file> (or '-' for stdout)"
    reps_to_file: "Write the list of representatives to file <file> (or '-' for stdout)"
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}