version 1.0

task ExtractCoverageIntervals {
  input {
    Int? region_interested_eghxb
    File? cf
    Int? minimum_read_depth
    Float? threshold_overlap_read
    Int? len_window_length
    Int? shift_window_shifts
    Int? name_patientsample_identifiers
    Boolean? indicate_apply_onintervals
    Boolean? no_shor_ah
    Int? number_threads_default
    File? output_file_name
    String bam
  }
  command <<<
    extract_coverage_intervals \
      ~{bam} \
      ~{if defined(region_interested_eghxb) then ("-r " +  '"' + region_interested_eghxb + '"') else ""} \
      ~{if defined(cf) then ("-cf " +  '"' + cf + '"') else ""} \
      ~{if defined(minimum_read_depth) then ("-c " +  '"' + minimum_read_depth + '"') else ""} \
      ~{if defined(threshold_overlap_read) then ("-f " +  '"' + threshold_overlap_read + '"') else ""} \
      ~{if defined(len_window_length) then ("-w " +  '"' + len_window_length + '"') else ""} \
      ~{if defined(shift_window_shifts) then ("-s " +  '"' + shift_window_shifts + '"') else ""} \
      ~{if defined(name_patientsample_identifiers) then ("-N " +  '"' + name_patientsample_identifiers + '"') else ""} \
      ~{if (indicate_apply_onintervals) then "-e" else ""} \
      ~{if (no_shor_ah) then "--no-shorah" else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    region_interested_eghxb: "Region of interested in BED format, e.g.\\nHXB2:2253-3869. Loci are interpreted using 0-based\\nindexing, and a half-open interval is used, i.e,\\n[start:end) (default: None)"
    cf: "File containing coverage per locus per sample. Samples\\nare expected as columns and loci as rows. This option\\nis not compatible with the read-window overlap\\nthresholding (default: None)"
    minimum_read_depth: "Minimum read depth per window (default: 100)"
    threshold_overlap_read: "Threshold on the overlap between each read and the\\nwindow (default: 0.85)"
    len_window_length: ",len2,...      Window length used by ShoRAH (default: 201)"
    shift_window_shifts: ", shift2, ...\\nWindow shifts used by ShoRAH (default: 67)"
    name_patientsample_identifiers: ",name2,...    Patient/sample identifiers as comma separated strings\\n(default: None)"
    indicate_apply_onintervals: "Indicate whether to apply a more liberal shift on\\nintervals' right-endpoint (default: False)"
    no_shor_ah: "Inidcate whether to report regions with sufficient\\ncoverage rather than windows for SNV calling using\\nShoRAH (default: False)"
    number_threads_default: "Number of threads (default: 1)"
    output_file_name: "Output file name (default: coverage_intervals.tsv)"
    bam: "Input BAM file(s)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}