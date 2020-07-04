version 1.0

task SambambaDepth {
  input {
    String? filter
    File? output_file
    String? n_threads
    Int? min_coverage
    Int? max_coverage
    String? min_base_quality
    Boolean? combined
    Boolean? annotate
    Boolean? fix_mate_overlaps
    String? cov_threshold
    String? window_size
    String? overlap
    String samba_mba_depth
    String region_vertical_line_window_vertical_line_base
    String input_dot_bam
  }
  command <<<
    sambamba depth \
      ~{samba_mba_depth} \
      ~{region_vertical_line_window_vertical_line_base} \
      ~{input_dot_bam} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(max_coverage) then ("--max-coverage " +  '"' + max_coverage + '"') else ""} \
      ~{if defined(min_base_quality) then ("--min-base-quality " +  '"' + min_base_quality + '"') else ""} \
      ~{true="--combined" false="" combined} \
      ~{true="--annotate" false="" annotate} \
      ~{true="--fix-mate-overlaps" false="" fix_mate_overlaps} \
      ~{if defined(cov_threshold) then ("--cov-threshold " +  '"' + cov_threshold + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""}
  >>>
  parameter_meta {
    filter: "set custom filter for alignments; the default value is 'mapping_quality > 0 and not duplicate and not failed_quality_control'"
    output_file: "output filename (by default /dev/stdout)"
    n_threads: "maximum number of threads to use"
    min_coverage: "minimum mean coverage for output (default: 0 for region/window, 1 for base)"
    max_coverage: "maximum mean coverage for output"
    min_base_quality: "don't count bases with lower base quality"
    combined: "output combined statistics for all samples"
    annotate: "add additional column of y/n instead of skipping records not satisfying the criteria"
    fix_mate_overlaps: "detect overlaps of mate reads and handle them on per-base basis"
    cov_threshold: "multiple thresholds can be provided, for each one an extra column will be added, the percentage of bases in the region where coverage is more than this value"
    window_size: "breadth of the window, in bp (required)"
    overlap: "overlap of successive windows, in bp (default is 0)"
    samba_mba_depth: ""
    region_vertical_line_window_vertical_line_base: ""
    input_dot_bam: ""
  }
}