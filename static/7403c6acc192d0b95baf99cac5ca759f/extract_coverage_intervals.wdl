version 1.0

task ExtractCoverageIntervals {
  input {
    String? region_interested_bed
    String? cf
    Int? minimum_read_depth
    Float? threshold_overlap_read
    String? len_window_length
    String? shift_window_shifts
    String? name_patientsample_identifiers
    Boolean? indicate_apply_shift
    Boolean? no_shor_ah
    Int? number_threads_default
    String? output_file_name
    String bam
  }
  command <<<
    extract_coverage_intervals \
      ~{bam} \
      ~{if defined(region_interested_bed) then ("-r " +  '"' + region_interested_bed + '"') else ""} \
      ~{if defined(cf) then ("-cf " +  '"' + cf + '"') else ""} \
      ~{if defined(minimum_read_depth) then ("-c " +  '"' + minimum_read_depth + '"') else ""} \
      ~{if defined(threshold_overlap_read) then ("-f " +  '"' + threshold_overlap_read + '"') else ""} \
      ~{if defined(len_window_length) then ("-w " +  '"' + len_window_length + '"') else ""} \
      ~{if defined(shift_window_shifts) then ("-s " +  '"' + shift_window_shifts + '"') else ""} \
      ~{if defined(name_patientsample_identifiers) then ("-N " +  '"' + name_patientsample_identifiers + '"') else ""} \
      ~{true="-e" false="" indicate_apply_shift} \
      ~{true="--no-shorah" false="" no_shor_ah} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    region_interested_bed: "Region of interested in BED format, e.g. HXB2:2253-3869. Loci are interpreted using 0-based indexing, and a half-open interval is used, i.e, [start:end) (default: None)"
    cf: "File containing coverage per locus per sample. Samples are expected as columns and loci as rows. This option is not compatible with the read-window overlap thresholding (default: None)"
    minimum_read_depth: "Minimum read depth per window (default: 100)"
    threshold_overlap_read: "Threshold on the overlap between each read and the window (default: 0.85)"
    len_window_length: ",len2,...      Window length used by ShoRAH (default: 201)"
    shift_window_shifts: ", shift2, ... Window shifts used by ShoRAH (default: 67)"
    name_patientsample_identifiers: ",name2,...    Patient/sample identifiers as comma separated strings (default: None)"
    indicate_apply_shift: "Indicate whether to apply a more liberal shift on intervals' right-endpoint (default: False)"
    no_shor_ah: "Inidcate whether to report regions with sufficient coverage rather than windows for SNV calling using ShoRAH (default: False)"
    number_threads_default: "Number of threads (default: 1)"
    output_file_name: "Output file name (default: coverage_intervals.tsv)"
    bam: "Input BAM file(s)"
  }
}