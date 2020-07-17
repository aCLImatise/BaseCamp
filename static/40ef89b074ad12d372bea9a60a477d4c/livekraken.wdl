version 1.0

task Livekraken {
  input {
    String? bcl_max_tile
    Boolean? gzip_compressed
    Boolean? bzip_two_compressed
    Boolean? quick
    String? min_hits
    File? unclassified_out
    File? classified_out
    File? print_output_filename
    Boolean? only_classified_output
    Boolean? preload
    Boolean? paired
    Boolean? check_names
  }
  command <<<
    livekraken \
      ~{if defined(bcl_max_tile) then ("--bcl-max-tile " +  '"' + bcl_max_tile + '"') else ""} \
      ~{true="--gzip-compressed" false="" gzip_compressed} \
      ~{true="--bzip2-compressed" false="" bzip_two_compressed} \
      ~{true="--quick" false="" quick} \
      ~{if defined(min_hits) then ("--min-hits " +  '"' + min_hits + '"') else ""} \
      ~{if defined(unclassified_out) then ("--unclassified-out " +  '"' + unclassified_out + '"') else ""} \
      ~{if defined(classified_out) then ("--classified-out " +  '"' + classified_out + '"') else ""} \
      ~{if defined(print_output_filename) then ("--output " +  '"' + print_output_filename + '"') else ""} \
      ~{true="--only-classified-output" false="" only_classified_output} \
      ~{true="--preload" false="" preload} \
      ~{true="--paired" false="" paired} \
      ~{true="--check-names" false="" check_names}
  >>>
  parameter_meta {
    bcl_max_tile: "Maximum tile to analyse, in XYZZ tile format. Default: Up to tile 2316 (for 96 tiles.) If this option is used, --bcl-tiles is ignored."
    gzip_compressed: "Input is gzip compressed"
    bzip_two_compressed: "Input is bzip2 compressed"
    quick: "Quick operation (use first hit or hits)"
    min_hits: "In quick op., number of hits req'd for classification NOTE: this is ignored if --quick is not specified"
    unclassified_out: "Print unclassified sequences to filename"
    classified_out: "Print classified sequences to filename"
    print_output_filename: "Print output to filename (default: stdout); \"-\" will suppress normal output"
    only_classified_output: "Print no Kraken output for unclassified sequences"
    preload: "Loads DB into memory before classification"
    paired: "The two filenames provided are paired-end reads"
    check_names: "Ensure each pair of reads have names that agree with each other; ignored if --paired is not specified"
  }
}