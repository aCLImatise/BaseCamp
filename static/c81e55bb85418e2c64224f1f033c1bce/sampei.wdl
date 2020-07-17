version 1.0

task Sampei {
  input {
    Int? max_peaks_per_scan
    String? fragment_mass_error
    String? matched_query_intensity
    String? error_type
    String? output_directory
    Boolean? no_filter
    String? largest_gap_percent
    String? matched_peptide_intensity
    Int? min_diff_dalton_bin
    String? x_tandem_xml
    Boolean? write_intermediate
    String mgf_query_file
    String mgf_target_file
    String id_file
  }
  command <<<
    sampei \
      ~{mgf_query_file} \
      ~{mgf_target_file} \
      ~{id_file} \
      ~{if defined(max_peaks_per_scan) then ("--max-peaks-per-scan " +  '"' + max_peaks_per_scan + '"') else ""} \
      ~{if defined(fragment_mass_error) then ("--fragment-mass-error " +  '"' + fragment_mass_error + '"') else ""} \
      ~{if defined(matched_query_intensity) then ("--matched-query-intensity " +  '"' + matched_query_intensity + '"') else ""} \
      ~{if defined(error_type) then ("--error-type " +  '"' + error_type + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{true="--no-filter" false="" no_filter} \
      ~{if defined(largest_gap_percent) then ("--largest-gap-percent " +  '"' + largest_gap_percent + '"') else ""} \
      ~{if defined(matched_peptide_intensity) then ("--matched-peptide-intensity " +  '"' + matched_peptide_intensity + '"') else ""} \
      ~{if defined(min_diff_dalton_bin) then ("--min-diff-dalton-bin " +  '"' + min_diff_dalton_bin + '"') else ""} \
      ~{if defined(x_tandem_xml) then ("--xtandem-xml " +  '"' + x_tandem_xml + '"') else ""} \
      ~{true="--write-intermediate" false="" write_intermediate}
  >>>
  parameter_meta {
    max_peaks_per_scan: "(default = 20)"
    fragment_mass_error: "(default = 20)"
    matched_query_intensity: "The percentage of MS2 intensity of query scan matched to target scan over the summation of total MS2 intensity in the query scan. (default = 0.3)"
    error_type: "(default = ppm)"
    output_directory: "Full path to the directory where output is stored. If this directory does not exist it will be created. (default = output)"
    no_filter: "Disable the filter and keep DB identified scans in the target mgf file"
    largest_gap_percent: "The percentage of the largest consecutive b/y ion missing over the length of the peptide sequence. (default = 0.4)"
    matched_peptide_intensity: "The percentage of MS2 intensity of target scan matched to the theoretical fragments of peptide sequence over the summation of total MS2 intensity in the target scan. (default = 0.5)"
    min_diff_dalton_bin: "The absolute minimum dalton difference between the query scan and the target scan. (default = 10)"
    x_tandem_xml: "The path to an X!tandem xml file which will be used to filter the results."
    write_intermediate: "Write files for each step of filtering."
    mgf_query_file: "Query mgf file with full path containing query scans have been identified by DB search"
    mgf_target_file: "Target mgf file with full path containing target scans with undefined modifications"
    id_file: "File in which query scans have been identified by DB search"
  }
}