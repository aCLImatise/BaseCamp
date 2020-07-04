version 1.0

task Porechop {
  input {
    String? fastafastq_input_reads
    String? filename_fasta_fastq
    Boolean? barcode_stats_csv
    String? format
    String? verbosity
    String? threads
    String? barcode_dir
    Boolean? barcode_labels
    Boolean? extended_labels
    Boolean? native_barcodes
    Boolean? pcr_barcodes
    Boolean? rapid_barcodes
    Array[String] limit_barcodes_to
    String? custom_barcodes
    String? barcode_threshold
    String? barcode_diff
    Boolean? require_two_barcodes
    Boolean? untrimmed
    Boolean? discard_unassigned
    String? adapter_threshold
    String? check_reads
    String? scoring_scheme
    String? end_size
    Int? min_trim_size
    String? extra_end_trim
    String? end_threshold
    Boolean? no_split
    Boolean? discard_middle
    String? middle_threshold
    String? extra_middle_trim_good_side
    String? extra_middle_trim_bad_side
    Int? min_split_read_size
  }
  command <<<
    porechop \
      ~{if defined(fastafastq_input_reads) then ("--input " +  '"' + fastafastq_input_reads + '"') else ""} \
      ~{if defined(filename_fasta_fastq) then ("--output " +  '"' + filename_fasta_fastq + '"') else ""} \
      ~{true="--barcode_stats_csv" false="" barcode_stats_csv} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(barcode_dir) then ("--barcode_dir " +  '"' + barcode_dir + '"') else ""} \
      ~{true="--barcode_labels" false="" barcode_labels} \
      ~{true="--extended_labels" false="" extended_labels} \
      ~{true="--native_barcodes" false="" native_barcodes} \
      ~{true="--pcr_barcodes" false="" pcr_barcodes} \
      ~{true="--rapid_barcodes" false="" rapid_barcodes} \
      ~{if defined(limit_barcodes_to) then ("--limit_barcodes_to " +  '"' + limit_barcodes_to + '"') else ""} \
      ~{if defined(custom_barcodes) then ("--custom_barcodes " +  '"' + custom_barcodes + '"') else ""} \
      ~{if defined(barcode_threshold) then ("--barcode_threshold " +  '"' + barcode_threshold + '"') else ""} \
      ~{if defined(barcode_diff) then ("--barcode_diff " +  '"' + barcode_diff + '"') else ""} \
      ~{true="--require_two_barcodes" false="" require_two_barcodes} \
      ~{true="--untrimmed" false="" untrimmed} \
      ~{true="--discard_unassigned" false="" discard_unassigned} \
      ~{if defined(adapter_threshold) then ("--adapter_threshold " +  '"' + adapter_threshold + '"') else ""} \
      ~{if defined(check_reads) then ("--check_reads " +  '"' + check_reads + '"') else ""} \
      ~{if defined(scoring_scheme) then ("--scoring_scheme " +  '"' + scoring_scheme + '"') else ""} \
      ~{if defined(end_size) then ("--end_size " +  '"' + end_size + '"') else ""} \
      ~{if defined(min_trim_size) then ("--min_trim_size " +  '"' + min_trim_size + '"') else ""} \
      ~{if defined(extra_end_trim) then ("--extra_end_trim " +  '"' + extra_end_trim + '"') else ""} \
      ~{if defined(end_threshold) then ("--end_threshold " +  '"' + end_threshold + '"') else ""} \
      ~{true="--no_split" false="" no_split} \
      ~{true="--discard_middle" false="" discard_middle} \
      ~{if defined(middle_threshold) then ("--middle_threshold " +  '"' + middle_threshold + '"') else ""} \
      ~{if defined(extra_middle_trim_good_side) then ("--extra_middle_trim_good_side " +  '"' + extra_middle_trim_good_side + '"') else ""} \
      ~{if defined(extra_middle_trim_bad_side) then ("--extra_middle_trim_bad_side " +  '"' + extra_middle_trim_bad_side + '"') else ""} \
      ~{if defined(min_split_read_size) then ("--min_split_read_size " +  '"' + min_split_read_size + '"') else ""}
  >>>
  parameter_meta {
    fastafastq_input_reads: "FASTA/FASTQ of input reads or a directory which will be recursively searched for FASTQ files (required)"
    filename_fasta_fastq: "Filename for FASTA or FASTQ of trimmed reads (if not set, trimmed reads will be printed to stdout)"
    barcode_stats_csv: "Option to output a csv file with start/ end/ middle barcode names and percentage identities for each given read. (default: False)"
    format: "Output format for the reads - if auto, the format will be chosen based on the output filename or the input read format (default: auto)"
    verbosity: "Level of progress information: 0 = none, 1 = some, 2 = lots, 3 = full - output will go to stdout if reads are saved to a file and stderr if reads are printed to stdout (default: 1)"
    threads: "Number of threads to use for adapter alignment (default: 8)"
    barcode_dir: "Reads will be binned based on their barcode and saved to separate files in this directory (incompatible with --output)"
    barcode_labels: "Reads will have a label added to their header with their barcode (default: False)"
    extended_labels: "Reads will have an extended label added to their header with the barcode_call (if any), the best start/ end barcode hit and their identities, and whether a barcode is found in middle of read. (Dependent on --barcode_labels). (default: False)"
    native_barcodes: "Only attempts to match the 24 native barcodes (default: False)"
    pcr_barcodes: "Only attempts to match the 96 PCR barcodes (default: False)"
    rapid_barcodes: "Only attempts to match the 12 rapid barcodes (default: False)"
    limit_barcodes_to: "Specify a list of barcodes to look for (numbers refer to native, PCR or rapid)"
    custom_barcodes: "CSV file containing custom barcode sequences"
    barcode_threshold: "A read must have at least this percent identity to a barcode to be binned (default: 75.0)"
    barcode_diff: "If the difference between a read's best barcode identity and its second-best barcode identity is less than this value, it will not be put in a barcode bin (to exclude cases which are too close to call) (default: 5.0)"
    require_two_barcodes: "Reads will only be put in barcode bins if they have a strong match for the barcode on both their start and end (default: a read can be binned with a match at its start or end)"
    untrimmed: "Bin reads but do not trim them (default: trim the reads)"
    discard_unassigned: "Discard unassigned reads (instead of creating a \"none\" bin) (default: False)"
    adapter_threshold: "An adapter set has to have at least this percent identity to be labelled as present and trimmed off (0 to 100) (default: 90.0)"
    check_reads: "This many reads will be aligned to all possible adapters to determine which adapter sets are present (default: 10000)"
    scoring_scheme: "Comma-delimited string of alignment scores: match, mismatch, gap open, gap extend (default: 3,-6,-5,-2)"
    end_size: "The number of base pairs at each end of the read which will be searched for adapter sequences (default: 150)"
    min_trim_size: "Adapter alignments smaller than this will be ignored (default: 4)"
    extra_end_trim: "This many additional bases will be removed next to adapters found at the ends of reads (default: 2)"
    end_threshold: "Adapters at the ends of reads must have at least this percent identity to be removed (0 to 100) (default: 75.0)"
    no_split: "Skip splitting reads based on middle adapters (default: split reads when an adapter is found in the middle)"
    discard_middle: "Reads with middle adapters will be discarded (default: reads with middle adapters are split) (required for reads to be used with Nanopolish, this option is on by default when outputting reads into barcode bins)"
    middle_threshold: "Adapters in the middle of reads must have at least this percent identity to be found (0 to 100) (default: 85.0)"
    extra_middle_trim_good_side: "This many additional bases will be removed next to middle adapters on their \"good\" side (default: 10)"
    extra_middle_trim_bad_side: "This many additional bases will be removed next to middle adapters on their \"bad\" side (default: 100)"
    min_split_read_size: "Post-split read pieces smaller than this many base pairs will not be outputted (default: 1000)"
  }
}