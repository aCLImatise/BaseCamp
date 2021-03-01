version 1.0

task SambambaDepth {
  input {
    Int? filter
    File? output_file
    Int? n_threads
    Int? min_coverage
    Int? max_coverage
    Int? min_base_quality
    Boolean? combined
    Boolean? annotate
    Boolean? fix_mate_overlaps
    File? regions
    Boolean? report_zero_coverage
    String? cov_threshold
    Int? window_size
    Int? overlap
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
      ~{if (combined) then "--combined" else ""} \
      ~{if (annotate) then "--annotate" else ""} \
      ~{if (fix_mate_overlaps) then "--fix-mate-overlaps" else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if (report_zero_coverage) then "--report-zero-coverage" else ""} \
      ~{if defined(cov_threshold) then ("--cov-threshold " +  '"' + cov_threshold + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sambamba:0.8.0--h984e79f_0"
  }
  parameter_meta {
    filter: "set custom filter for alignments; the default value is\\n'mapping_quality > 0 and not duplicate and not failed_quality_control'"
    output_file: "output filename (by default /dev/stdout)"
    n_threads: "maximum number of threads to use"
    min_coverage: "minimum mean coverage for output (default: 0 for region/window, 1 for base)"
    max_coverage: "maximum mean coverage for output"
    min_base_quality: "don't count bases with lower base quality"
    combined: "output combined statistics for all samples"
    annotate: "add additional column of y/n instead of\\nskipping records not satisfying the criteria"
    fix_mate_overlaps: "detect overlaps of mate reads and handle them on per-base basis"
    regions: "|REGION\\nlist or regions of interest or a single region in form chr:beg-end (optional)"
    report_zero_coverage: "(DEPRECATED, use --min-coverage=0 instead)\\ndon't skip zero coverage bases"
    cov_threshold: "multiple thresholds can be provided,\\nfor each one an extra column will be added,\\nthe percentage of bases in the region\\nwhere coverage is more than this value"
    window_size: "breadth of the window, in bp (required)"
    overlap: "overlap of successive windows, in bp (default is 0)"
    samba_mba_depth: ""
    region_vertical_line_window_vertical_line_base: ""
    input_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}