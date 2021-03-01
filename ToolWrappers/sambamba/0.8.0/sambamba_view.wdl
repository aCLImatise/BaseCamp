version 1.0

task SambambaView {
  input {
    String? filter
    Int? num_filter
    String? format
    Boolean? header
    Boolean? reference_info
    File? regions
    Boolean? count
    Boolean? valid
    Boolean? sam_input
    File? ref_filename
    Boolean? show_progress
    Boolean? compression_level
    File? output_filename
    Int? n_threads
    String? subsample
    String? subsampling_seed
    String samba_mba_view
    String input_dot_bam_vertical_line_input_dots_am
  }
  command <<<
    sambamba view \
      ~{samba_mba_view} \
      ~{input_dot_bam_vertical_line_input_dots_am} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(num_filter) then ("--num-filter " +  '"' + num_filter + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (reference_info) then "--reference-info" else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (valid) then "--valid" else ""} \
      ~{if (sam_input) then "--sam-input" else ""} \
      ~{if defined(ref_filename) then ("--ref-filename " +  '"' + ref_filename + '"') else ""} \
      ~{if (show_progress) then "--show-progress" else ""} \
      ~{if (compression_level) then "--compression-level" else ""} \
      ~{if (output_filename) then "--output-filename" else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(subsampling_seed) then ("--subsampling-seed " +  '"' + subsampling_seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sambamba:0.8.0--h984e79f_0"
  }
  parameter_meta {
    filter: "set custom filter for alignments"
    num_filter: "filter flag bits; 'i1/i2' corresponds to -f i1 -F i2 samtools arguments;\\neither of the numbers can be omitted"
    format: "|bam|json|unpack\\nspecify which format to use for output (default is SAM);\\nunpack streams unpacked BAM"
    header: "output only header to stdout (if format=bam, the header is printed as SAM)"
    reference_info: "output to stdout only reference names and lengths in JSON"
    regions: "output only reads overlapping one of regions from the BED file"
    count: "output to stdout only count of matching records, hHI are ignored"
    valid: "output only valid alignments"
    sam_input: "specify that input is in SAM format"
    ref_filename: "specify reference for writing (NA)"
    show_progress: "show progressbar in STDERR (works only for BAM files with no regions specified)"
    compression_level: "specify compression level (from 0 to 9, works only for BAM output)"
    output_filename: "specify output filename"
    n_threads: "maximum number of threads to use"
    subsample: "subsample reads (read pairs)"
    subsampling_seed: "set seed for subsampling\\n"
    samba_mba_view: ""
    input_dot_bam_vertical_line_input_dots_am: ""
  }
  output {
    File out_stdout = stdout()
    File out_regions = "${in_regions}"
    File out_output_filename = "${in_output_filename}"
  }
}