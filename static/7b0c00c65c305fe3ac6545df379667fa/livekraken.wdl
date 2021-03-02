version 1.0

task Livekraken {
  input {
    String? db
    Int? threads
    Boolean? fast_a_input
    Boolean? fast_q_input
    Boolean? bcl_input
    Int? bcl_length
    Int? bcl_start
    Int? bcl_spacing
    Array[String] bcl_lanes
    Array[String] bcl_tiles
    Int? bcl_max_tile
    Boolean? gzip_compressed
    Boolean? bzip_two_compressed
    Boolean? quick
    Int? min_hits
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
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (fast_a_input) then "--fasta-input" else ""} \
      ~{if (fast_q_input) then "--fastq-input" else ""} \
      ~{if (bcl_input) then "--bcl-input" else ""} \
      ~{if defined(bcl_length) then ("--bcl-length " +  '"' + bcl_length + '"') else ""} \
      ~{if defined(bcl_start) then ("--bcl-start " +  '"' + bcl_start + '"') else ""} \
      ~{if defined(bcl_spacing) then ("--bcl-spacing " +  '"' + bcl_spacing + '"') else ""} \
      ~{if defined(bcl_lanes) then ("--bcl-lanes " +  '"' + bcl_lanes + '"') else ""} \
      ~{if defined(bcl_tiles) then ("--bcl-tiles " +  '"' + bcl_tiles + '"') else ""} \
      ~{if defined(bcl_max_tile) then ("--bcl-max-tile " +  '"' + bcl_max_tile + '"') else ""} \
      ~{if (gzip_compressed) then "--gzip-compressed" else ""} \
      ~{if (bzip_two_compressed) then "--bzip2-compressed" else ""} \
      ~{if (quick) then "--quick" else ""} \
      ~{if defined(min_hits) then ("--min-hits " +  '"' + min_hits + '"') else ""} \
      ~{if defined(unclassified_out) then ("--unclassified-out " +  '"' + unclassified_out + '"') else ""} \
      ~{if defined(classified_out) then ("--classified-out " +  '"' + classified_out + '"') else ""} \
      ~{if defined(print_output_filename) then ("--output " +  '"' + print_output_filename + '"') else ""} \
      ~{if (only_classified_output) then "--only-classified-output" else ""} \
      ~{if (preload) then "--preload" else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (check_names) then "--check-names" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "Name for Kraken DB\\n(default: none)"
    threads: "Number of threads (default: 1)"
    fast_a_input: "Input is FASTA format"
    fast_q_input: "Input is FASTQ format"
    bcl_input: "Input is BCL format"
    bcl_length: "Number of sequencing cycles"
    bcl_start: "First analysis cycle (>31)"
    bcl_spacing: "Spacing between classification"
    bcl_lanes: "lanes to analyse (e.g. 1 3 4)\\nDefault: Analyse all lanes found."
    bcl_tiles: "tiles to analyse (e.g. 1101 2115 2304)\\nDefault: 96 tiles (2 sides -> 3 swaths -> 16 tiles)."
    bcl_max_tile: "Maximum tile to analyse, in XYZZ tile format.\\nDefault: Up to tile 2316 (for 96 tiles.)\\nIf this option is used, --bcl-tiles is ignored."
    gzip_compressed: "Input is gzip compressed"
    bzip_two_compressed: "Input is bzip2 compressed"
    quick: "Quick operation (use first hit or hits)"
    min_hits: "In quick op., number of hits req'd for classification\\nNOTE: this is ignored if --quick is not specified"
    unclassified_out: "Print unclassified sequences to filename"
    classified_out: "Print classified sequences to filename"
    print_output_filename: "Print output to filename (default: stdout); \\\"-\\\" will\\nsuppress normal output"
    only_classified_output: "Print no Kraken output for unclassified sequences"
    preload: "Loads DB into memory before classification"
    paired: "The two filenames provided are paired-end reads"
    check_names: "Ensure each pair of reads have names that agree\\nwith each other; ignored if --paired is not specified"
  }
  output {
    File out_stdout = stdout()
    File out_print_output_filename = "${in_print_output_filename}"
  }
}