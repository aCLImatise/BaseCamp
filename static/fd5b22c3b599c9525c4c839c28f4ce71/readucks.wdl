version 1.0

task Readucks {
  input {
    String? fastq_input_reads
    String? output_dir
    Boolean? bin_barcodes
    Boolean? annotate_files
    Boolean? extended_info
    Boolean? summary_info
    String? mode
    String? prefix
    String? threads
    String? num_reads_in_batch
    String? check_reads
    String? adapter_threshold
    String? verbosity
    Boolean? require_two_barcodes
    Boolean? native_barcodes
    Boolean? pcr_barcodes
    Boolean? rapid_barcodes
    Array[String] limit_barcodes_to
    String? threshold
    String? secondary_threshold
    String? score_diff
    String? scoring_scheme
  }
  command <<<
    readucks \
      ~{if defined(fastq_input_reads) then ("--input " +  '"' + fastq_input_reads + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{true="--bin_barcodes" false="" bin_barcodes} \
      ~{true="--annotate_files" false="" annotate_files} \
      ~{true="--extended_info" false="" extended_info} \
      ~{true="--summary_info" false="" summary_info} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(num_reads_in_batch) then ("--num_reads_in_batch " +  '"' + num_reads_in_batch + '"') else ""} \
      ~{if defined(check_reads) then ("--check_reads " +  '"' + check_reads + '"') else ""} \
      ~{if defined(adapter_threshold) then ("--adapter_threshold " +  '"' + adapter_threshold + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{true="--require_two_barcodes" false="" require_two_barcodes} \
      ~{true="--native_barcodes" false="" native_barcodes} \
      ~{true="--pcr_barcodes" false="" pcr_barcodes} \
      ~{true="--rapid_barcodes" false="" rapid_barcodes} \
      ~{if defined(limit_barcodes_to) then ("--limit_barcodes_to " +  '"' + limit_barcodes_to + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(secondary_threshold) then ("--secondary_threshold " +  '"' + secondary_threshold + '"') else ""} \
      ~{if defined(score_diff) then ("--score_diff " +  '"' + score_diff + '"') else ""} \
      ~{if defined(scoring_scheme) then ("--scoring_scheme " +  '"' + scoring_scheme + '"') else ""}
  >>>
  parameter_meta {
    fastq_input_reads: "FASTQ of input reads or a directory which will be recursively searched for FASTQ files (required)."
    output_dir: "Output directory (default: working directory)"
    bin_barcodes: "Reads will be binned based on their barcode and saved to separate files. (default: False)"
    annotate_files: "Writes a CSV file for each input file containing barcode calls for each read. (default: False)"
    extended_info: "Writes extended information about barcode calls. (default: False)"
    summary_info: "Writes another file with information about barcode calls. (default: False)"
    mode: "Demuxing mode, one of [\"stringent\",\"lenient\", \"porechop\"]. (default: porechop)"
    prefix: "Optional prefix to file names"
    threads: "The number of threads to use (1 to turn off multithreading) (default: 2)"
    num_reads_in_batch: "The number of reads to process (and hold in memory) at a time (default: 200)"
    check_reads: "Number of barcodes to classify before filtering barcode set (default: 1000)"
    adapter_threshold: "Identity required for a barcode to be included after filtering (default: 90)"
    verbosity: "Level of output information: 0 = none, 1 = some, 2 = lots (default: 1)"
    require_two_barcodes: "Match barcodes at both ends of read (default single)"
    native_barcodes: "Only attempts to match the 24 native barcodes (default)"
    pcr_barcodes: "Only attempts to match the 96 PCR barcodes (default: False)"
    rapid_barcodes: "Only attempts to match the 12 rapid barcodes (default: False)"
    limit_barcodes_to: "Specify a list of barcodes to look for (numbers refer to native, PCR or rapid)"
    threshold: "A read must have at least this percent identity to a barcode (default: 75)"
    secondary_threshold: "The second barcode must have at least this percent identity (and match the first one) (default: 65)"
    score_diff: "The second barcode must have at least this percent identity (and match the first one) (default: 5)"
    scoring_scheme: "Comma-delimited string of alignment scores: match, mismatch, gap open, gap extend (default: 3,-6,-5,-2)"
  }
}