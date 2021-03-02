version 1.0

task BRS {
  input {
    Float? quantile_used_identification
    Int? window_size_calculating
    File? output_bin_file
    File? mappability_file_provided
    File? gap_file_file
    File? report_summary_statistics
    Float? multiplicity
    File seq_file
  }
  command <<<
    BRS \
      ~{seq_file} \
      ~{if defined(quantile_used_identification) then ("-q " +  '"' + quantile_used_identification + '"') else ""} \
      ~{if defined(window_size_calculating) then ("-w " +  '"' + window_size_calculating + '"') else ""} \
      ~{if defined(output_bin_file) then ("-o " +  '"' + output_bin_file + '"') else ""} \
      ~{if defined(mappability_file_provided) then ("-m " +  '"' + mappability_file_provided + '"') else ""} \
      ~{if defined(gap_file_file) then ("-g " +  '"' + gap_file_file + '"') else ""} \
      ~{if defined(report_summary_statistics) then ("-s " +  '"' + report_summary_statistics + '"') else ""} \
      ~{if defined(multiplicity) then ("--multiplicity " +  '"' + multiplicity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quantile_used_identification: ": the quantile used for identification of the singular genomic positions; default is 0.95"
    window_size_calculating: ": the window size for calculating the quantiles; default is 200"
    output_bin_file: ": the output bin file; if unspecified, print to the stdout."
    mappability_file_provided: ": the mappability file; If provided, filter by mappability and the output will contain uniquely mappable positions with no reads mapped"
    gap_file_file: ": the gap file (two column data file with 1st column the start positions of the gaps and the 2nd column the end positions of the gaps)"
    report_summary_statistics: ": report the summary statistics to the file <string>"
    multiplicity: ": If a genomic position has more than multiplicity*quantile number of reads,\\nit will be viewed as an outlier\\nand the number of reads at this position will be set as multiplicity*quantile;\\ndefault is 5.0\\n"
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_bin_file = "${in_output_bin_file}"
    File out_mappability_file_provided = "${in_mappability_file_provided}"
  }
}