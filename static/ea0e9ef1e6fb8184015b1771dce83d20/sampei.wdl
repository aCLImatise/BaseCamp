version 1.0

task Sampei {
  input {
    Float? matched_query_intensity
    String? error_type
    Directory? output_directory
    Boolean? no_filter
    Int? largest_gap_percent
    Float? matched_peptide_intensity
    Int? min_diff_dalton_bin
    File? x_tandem_xml
    Boolean? write_intermediate
    Int? max_peaks_per_scan
    String mgf_query_file
    String mgf_target_file
    String id_file
    String search
  }
  command <<<
    sampei \
      ~{mgf_query_file} \
      ~{mgf_target_file} \
      ~{id_file} \
      ~{search} \
      ~{if defined(matched_query_intensity) then ("--matched-query-intensity " +  '"' + matched_query_intensity + '"') else ""} \
      ~{if defined(error_type) then ("--error-type " +  '"' + error_type + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if (no_filter) then "--no-filter" else ""} \
      ~{if defined(largest_gap_percent) then ("--largest-gap-percent " +  '"' + largest_gap_percent + '"') else ""} \
      ~{if defined(matched_peptide_intensity) then ("--matched-peptide-intensity " +  '"' + matched_peptide_intensity + '"') else ""} \
      ~{if defined(min_diff_dalton_bin) then ("--min-diff-dalton-bin " +  '"' + min_diff_dalton_bin + '"') else ""} \
      ~{if defined(x_tandem_xml) then ("--xtandem-xml " +  '"' + x_tandem_xml + '"') else ""} \
      ~{if (write_intermediate) then "--write-intermediate" else ""} \
      ~{if defined(max_peaks_per_scan) then ("--max-peaks-per-scan " +  '"' + max_peaks_per_scan + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sampei:0.0.9--py_0"
  }
  parameter_meta {
    matched_query_intensity: "The percentage of MS2 intensity of query scan matched\\nto target scan over the summation of total MS2\\nintensity in the query scan. (default = 0.3)"
    error_type: "(default = ppm)"
    output_directory: "Full path to the directory where output is stored. If\\nthis directory does not exist it will be created.\\n(default = output)"
    no_filter: "Disable the filter and keep DB identified scans in the\\ntarget mgf file"
    largest_gap_percent: "The percentage of the largest consecutive b/y ion\\nmissing over the length of the peptide sequence.\\n(default = 0.4)"
    matched_peptide_intensity: "The percentage of MS2 intensity of target scan matched\\nto the theoretical fragments of peptide sequence over\\nthe summation of total MS2 intensity in the target\\nscan. (default = 0.5)"
    min_diff_dalton_bin: "The absolute minimum dalton difference between the\\nquery scan and the target scan. (default = 10)"
    x_tandem_xml: "The path to an X!tandem xml file which will be used to\\nfilter the results."
    write_intermediate: "Write files for each step of filtering."
    max_peaks_per_scan: ""
    mgf_query_file: "Query mgf file with full path containing query scans\\nhave been identified by DB search"
    mgf_target_file: "Target mgf file with full path containing target scans\\nwith undefined modifications"
    id_file: "File in which query scans have been identified by DB"
    search: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}