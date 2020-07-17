version 1.0

task SambambaView {
  input {
    Boolean? header
    Boolean? reference_info
    File? regions
    Boolean? count
    Boolean? valid
    Boolean? sam_input
    Boolean? cram_input
    String? ref_filename
    Boolean? show_progress
    Boolean? compression_level
    Boolean? output_filename
    String? n_threads
    String? subsample
    String? subsampling_seed
    String samba_mba_view
    String input_dot_bam_vertical_line_input_dots_am
  }
  command <<<
    sambamba view \
      ~{samba_mba_view} \
      ~{input_dot_bam_vertical_line_input_dots_am} \
      ~{true="--header" false="" header} \
      ~{true="--reference-info" false="" reference_info} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{true="--count" false="" count} \
      ~{true="--valid" false="" valid} \
      ~{true="--sam-input" false="" sam_input} \
      ~{true="--cram-input" false="" cram_input} \
      ~{if defined(ref_filename) then ("--ref-filename " +  '"' + ref_filename + '"') else ""} \
      ~{true="--show-progress" false="" show_progress} \
      ~{true="--compression-level" false="" compression_level} \
      ~{true="--output-filename" false="" output_filename} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(subsampling_seed) then ("--subsampling-seed " +  '"' + subsampling_seed + '"') else ""}
  >>>
  parameter_meta {
    header: "output only header to stdout (if format=bam, the header is printed as SAM)"
    reference_info: "output to stdout only reference names and lengths in JSON"
    regions: "output only reads overlapping one of regions from the BED file"
    count: "output to stdout only count of matching records, hHI are ignored"
    valid: "output only valid alignments"
    sam_input: "specify that input is in SAM format"
    cram_input: "specify that input is in CRAM format"
    ref_filename: "specify reference for writing CRAM"
    show_progress: "show progressbar in STDERR (works only for BAM files with no regions specified)"
    compression_level: "specify compression level (from 0 to 9, works only for BAM output)"
    output_filename: "specify output filename"
    n_threads: "maximum number of threads to use"
    subsample: "subsample reads (read pairs)"
    subsampling_seed: "set seed for subsampling"
    samba_mba_view: ""
    input_dot_bam_vertical_line_input_dots_am: ""
  }
}