version 1.0

task DellyCnv {
  input {
    Boolean? arg_genome_file
    Boolean? arg_min_mapping
    Boolean? arg_input_mappability
    Boolean? arg_baseline_ploidy
    File? arg_output_file
    File? arg_output_coverage
    Boolean? arg_min_sd
    Boolean? arg_min_cn
    Boolean? arg_min_size
    Boolean? arg_delly_sv
    Boolean? arg_input_file
    Boolean? _copynumber_segmentation
    Boolean? arg_window_size
    Boolean? arg_window_offset
    Boolean? arg_input_bed
    Boolean? k
    Boolean? use_mappable_bases
    Boolean? arg_scanning_size
    Boolean? arg_uniqueness_filter
    Boolean? arg_scanning_regions
    Boolean? arg_median_mad
    Boolean? arg_extreme_fraction
    Boolean? scan_window_selection
    String aligned_dot_bam
  }
  command <<<
    delly cnv \
      ~{aligned_dot_bam} \
      ~{if (arg_genome_file) then "-g" else ""} \
      ~{if (arg_min_mapping) then "-q" else ""} \
      ~{if (arg_input_mappability) then "-m" else ""} \
      ~{if (arg_baseline_ploidy) then "-y" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_output_coverage) then "-c" else ""} \
      ~{if (arg_min_sd) then "-x" else ""} \
      ~{if (arg_min_cn) then "-t" else ""} \
      ~{if (arg_min_size) then "-z" else ""} \
      ~{if (arg_delly_sv) then "-l" else ""} \
      ~{if (arg_input_file) then "-v" else ""} \
      ~{if (_copynumber_segmentation) then "-u" else ""} \
      ~{if (arg_window_size) then "-i" else ""} \
      ~{if (arg_window_offset) then "-j" else ""} \
      ~{if (arg_input_bed) then "-b" else ""} \
      ~{if (k) then "-k" else ""} \
      ~{if (use_mappable_bases) then "-a" else ""} \
      ~{if (arg_scanning_size) then "-w" else ""} \
      ~{if (arg_uniqueness_filter) then "-f" else ""} \
      ~{if (arg_scanning_regions) then "-r" else ""} \
      ~{if (arg_median_mad) then "-d" else ""} \
      ~{if (arg_extreme_fraction) then "-p" else ""} \
      ~{if (scan_window_selection) then "-n" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/delly:0.8.7--hf3ca161_0"
  }
  parameter_meta {
    arg_genome_file: "[ --genome ] arg                   genome file"
    arg_min_mapping: "[ --quality ] arg (=10)            min. mapping quality"
    arg_input_mappability: "[ --mappability ] arg              input mappability map"
    arg_baseline_ploidy: "[ --ploidy ] arg (=2)              baseline ploidy"
    arg_output_file: "[ --outfile ] arg (=\\\"cnv.bcf\\\")     output CNV file"
    arg_output_coverage: "[ --covfile ] arg (=\\\"cov.gz\\\")      output coverage file"
    arg_min_sd: "[ --sdrd ] arg (=2)                min. SD read-depth shift"
    arg_min_cn: "[ --cn-offset ] arg (=0.100000001) min. CN offset"
    arg_min_size: "[ --cnv-size ] arg (=1000)         min. CNV size"
    arg_delly_sv: "[ --svfile ] arg                   delly SV file for breakpoint refinement"
    arg_input_file: "[ --vcffile ] arg                  input VCF/BCF file for re-genotyping"
    _copynumber_segmentation: "[ --segmentation ]                 copy-number segmentation"
    arg_window_size: "[ --window-size ] arg (=10000)     window size"
    arg_window_offset: "[ --window-offset ] arg (=10000)   window offset"
    arg_input_bed: "[ --bed-intervals ] arg            input BED file"
    k: "[ --fraction-window ] arg (=0.25)  min. callable window fraction [0,1]"
    use_mappable_bases: "[ --adaptive-windowing ]           use mappable bases for window size"
    arg_scanning_size: "[ --scan-window ] arg (=10000)     scanning window size"
    arg_uniqueness_filter: "[ --fraction-unique ] arg (=0.800000012)\\nuniqueness filter for scan windows\\n[0,1]"
    arg_scanning_regions: "[ --scan-regions ] arg             scanning regions in BED format"
    arg_median_mad: "[ --mad-cutoff ] arg (=3)          median + 3 * mad count cutoff"
    arg_extreme_fraction: "[ --percentile ] arg (=0.000500000024)\\nexcl. extreme GC fraction"
    scan_window_selection: "[ --no-window-selection ]          no scan window selection"
    aligned_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
    File out_arg_output_coverage = "${in_arg_output_coverage}"
  }
}