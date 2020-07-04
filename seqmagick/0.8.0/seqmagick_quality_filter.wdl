version 1.0

task SeqmagickQualityFilter {
  input {
    String? input_qual
    String? min_mean_quality
    Int? min_length
    Int? max_length
    String? ambiguous_action
    Int? max_ambiguous
    String? pct_ambiguous
    String? report_out
    String? details_out
    Boolean? no_details_comment
    String? quality_window_mean_qual
    String? quality_window_prop
    String? quality_window
    String? primer
    Boolean? no_primer
    String? barcode_file
    Boolean? barcode_header
    String? map_out
    String? quoting
    String sequence_file
    String output_file
  }
  command <<<
    seqmagick quality-filter \
      ~{sequence_file} \
      ~{output_file} \
      ~{if defined(input_qual) then ("--input-qual " +  '"' + input_qual + '"') else ""} \
      ~{if defined(min_mean_quality) then ("--min-mean-quality " +  '"' + min_mean_quality + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(ambiguous_action) then ("--ambiguous-action " +  '"' + ambiguous_action + '"') else ""} \
      ~{if defined(max_ambiguous) then ("--max-ambiguous " +  '"' + max_ambiguous + '"') else ""} \
      ~{if defined(pct_ambiguous) then ("--pct-ambiguous " +  '"' + pct_ambiguous + '"') else ""} \
      ~{if defined(report_out) then ("--report-out " +  '"' + report_out + '"') else ""} \
      ~{if defined(details_out) then ("--details-out " +  '"' + details_out + '"') else ""} \
      ~{true="--no-details-comment" false="" no_details_comment} \
      ~{if defined(quality_window_mean_qual) then ("--quality-window-mean-qual " +  '"' + quality_window_mean_qual + '"') else ""} \
      ~{if defined(quality_window_prop) then ("--quality-window-prop " +  '"' + quality_window_prop + '"') else ""} \
      ~{if defined(quality_window) then ("--quality-window " +  '"' + quality_window + '"') else ""} \
      ~{if defined(primer) then ("--primer " +  '"' + primer + '"') else ""} \
      ~{true="--no-primer" false="" no_primer} \
      ~{if defined(barcode_file) then ("--barcode-file " +  '"' + barcode_file + '"') else ""} \
      ~{true="--barcode-header" false="" barcode_header} \
      ~{if defined(map_out) then ("--map-out " +  '"' + map_out + '"') else ""} \
      ~{if defined(quoting) then ("--quoting " +  '"' + quoting + '"') else ""}
  >>>
  parameter_meta {
    input_qual: "The quality scores associated with the input file. Only used if input file is fasta."
    min_mean_quality: "Minimum mean quality score for each read [default: 25.0]"
    min_length: "Minimum length to keep sequence [default: 200]"
    max_length: "Maximum length to keep before truncating [default: 1000]. This operation occurs before --max-ambiguous"
    ambiguous_action: "Action to take on ambiguous base in sequence (N's). [default: no action]"
    max_ambiguous: "Maximum number of ambiguous bases in a sequence. Sequences exceeding this count will be removed."
    pct_ambiguous: "Maximun percent of ambiguous bases in a sequence. Sequences exceeding this percent will be removed."
    report_out: "Output file for report [default: stdout]"
    details_out: "Output file to report fate of each sequence"
    no_details_comment: "Do not write comment lines with version and call to start --details-out"
    quality_window_mean_qual: "Minimum quality score within the window defined by --quality-window. [default: same as --min-mean- quality]"
    quality_window_prop: "Proportion of reads within quality window to that must pass filter. Floats are [default: 1.0]"
    quality_window: "Window size for truncating sequences. When set to a non-zero value, sequences are truncated where the mean mean quality within the window drops below --min-mean- quality. [default: 0]"
    primer: "IUPAC ambiguous primer to require"
    no_primer: "Do not use a primer."
    barcode_file: "CSV file containing sample_id,barcode[,primer] in the rows. A single primer for all sequences may be specified with `--primer`, or `--no-primer` may be used to indicate barcodes should be used without a primer check."
    barcode_header: "Barcodes have a header row [default: False]"
    map_out: "Path to write sequence_id,sample_id pairs"
    quoting: "A string naming an attribute of the csv module defining the quoting behavior for `SAMPLE_MAP`. [default: QUOTE_MINIMAL]"
    sequence_file: "Input fastq file. A fasta-format file may also be provided if --input-qual is also specified."
    output_file: "Output file. Format determined from extension."
  }
}