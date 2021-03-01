version 1.0

task Porechop {
  input {
    Directory? fastafastq_directory_willbe
    File? filename_reads_printed
    File? barcode_stats_csv
    String? format
    File? verbosity
    Int? threads
    Directory? barcode_dir
    Boolean? barcode_labels
    Boolean? extended_labels
    Boolean? native_barcodes
    Boolean? pcr_barcodes
    Boolean? rapid_barcodes
    Array[String] limit_barcodes_to
    File? custom_barcodes
    Float? barcode_threshold
    Float? barcode_diff
    Boolean? require_two_barcodes
    Boolean? untrimmed
    Boolean? discard_unassigned
    Float? adapter_threshold
    Int? check_reads
    String? scoring_scheme
    Int? end_size
    Int? min_trim_size
    Int? extra_end_trim
    Float? end_threshold
    Boolean? no_split
    Boolean? discard_middle
    Float? middle_threshold
    Int? extra_middle_trim_good_side
    Int? extra_middle_trim_bad_side
    Int? min_split_read_size
  }
  command <<<
    porechop \
      ~{if defined(fastafastq_directory_willbe) then ("--input " +  '"' + fastafastq_directory_willbe + '"') else ""} \
      ~{if defined(filename_reads_printed) then ("--output " +  '"' + filename_reads_printed + '"') else ""} \
      ~{if (barcode_stats_csv) then "--barcode_stats_csv" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(barcode_dir) then ("--barcode_dir " +  '"' + barcode_dir + '"') else ""} \
      ~{if (barcode_labels) then "--barcode_labels" else ""} \
      ~{if (extended_labels) then "--extended_labels" else ""} \
      ~{if (native_barcodes) then "--native_barcodes" else ""} \
      ~{if (pcr_barcodes) then "--pcr_barcodes" else ""} \
      ~{if (rapid_barcodes) then "--rapid_barcodes" else ""} \
      ~{if defined(limit_barcodes_to) then ("--limit_barcodes_to " +  '"' + limit_barcodes_to + '"') else ""} \
      ~{if defined(custom_barcodes) then ("--custom_barcodes " +  '"' + custom_barcodes + '"') else ""} \
      ~{if defined(barcode_threshold) then ("--barcode_threshold " +  '"' + barcode_threshold + '"') else ""} \
      ~{if defined(barcode_diff) then ("--barcode_diff " +  '"' + barcode_diff + '"') else ""} \
      ~{if (require_two_barcodes) then "--require_two_barcodes" else ""} \
      ~{if (untrimmed) then "--untrimmed" else ""} \
      ~{if (discard_unassigned) then "--discard_unassigned" else ""} \
      ~{if defined(adapter_threshold) then ("--adapter_threshold " +  '"' + adapter_threshold + '"') else ""} \
      ~{if defined(check_reads) then ("--check_reads " +  '"' + check_reads + '"') else ""} \
      ~{if defined(scoring_scheme) then ("--scoring_scheme " +  '"' + scoring_scheme + '"') else ""} \
      ~{if defined(end_size) then ("--end_size " +  '"' + end_size + '"') else ""} \
      ~{if defined(min_trim_size) then ("--min_trim_size " +  '"' + min_trim_size + '"') else ""} \
      ~{if defined(extra_end_trim) then ("--extra_end_trim " +  '"' + extra_end_trim + '"') else ""} \
      ~{if defined(end_threshold) then ("--end_threshold " +  '"' + end_threshold + '"') else ""} \
      ~{if (no_split) then "--no_split" else ""} \
      ~{if (discard_middle) then "--discard_middle" else ""} \
      ~{if defined(middle_threshold) then ("--middle_threshold " +  '"' + middle_threshold + '"') else ""} \
      ~{if defined(extra_middle_trim_good_side) then ("--extra_middle_trim_good_side " +  '"' + extra_middle_trim_good_side + '"') else ""} \
      ~{if defined(extra_middle_trim_bad_side) then ("--extra_middle_trim_bad_side " +  '"' + extra_middle_trim_bad_side + '"') else ""} \
      ~{if defined(min_split_read_size) then ("--min_split_read_size " +  '"' + min_split_read_size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bugseq-porechop:0.3.4pre--py37h9a982cc_0"
  }
  parameter_meta {
    fastafastq_directory_willbe: "FASTA/FASTQ of input reads or a directory which will\\nbe recursively searched for FASTQ files (required)"
    filename_reads_printed: "Filename for FASTA or FASTQ of trimmed reads (if not\\nset, trimmed reads will be printed to stdout)"
    barcode_stats_csv: "Option to output a csv file with start/ end/ middle\\nbarcode names and percentage identities for each\\ngiven read. (default: False)"
    format: "Output format for the reads - if auto, the format\\nwill be chosen based on the output filename or the\\ninput read format (default: auto)"
    verbosity: "Level of progress information: 0 = none, 1 = some, 2\\n= lots, 3 = full - output will go to stdout if reads\\nare saved to a file and stderr if reads are printed\\nto stdout (default: 1)"
    threads: "Number of threads to use for adapter alignment\\n(default: 8)"
    barcode_dir: "Reads will be binned based on their barcode and\\nsaved to separate files in this directory\\n(incompatible with --output)"
    barcode_labels: "Reads will have a label added to their header with\\ntheir barcode (default: False)"
    extended_labels: "Reads will have an extended label added to their\\nheader with the barcode_call (if any), the best\\nstart/ end barcode hit and their identities, and\\nwhether a barcode is found in middle of read.\\n(Dependent on --barcode_labels). (default: False)"
    native_barcodes: "Only attempts to match the 24 native barcodes\\n(default: False)"
    pcr_barcodes: "Only attempts to match the 96 PCR barcodes (default:\\nFalse)"
    rapid_barcodes: "Only attempts to match the 12 rapid barcodes\\n(default: False)"
    limit_barcodes_to: "Specify a list of barcodes to look for (numbers\\nrefer to native, PCR or rapid)"
    custom_barcodes: "CSV file containing custom barcode sequences"
    barcode_threshold: "A read must have at least this percent identity to a\\nbarcode to be binned (default: 75.0)"
    barcode_diff: "If the difference between a read's best barcode\\nidentity and its second-best barcode identity is\\nless than this value, it will not be put in a\\nbarcode bin (to exclude cases which are too close to\\ncall) (default: 5.0)"
    require_two_barcodes: "Reads will only be put in barcode bins if they have\\na strong match for the barcode on both their start\\nand end (default: a read can be binned with a match\\nat its start or end)"
    untrimmed: "Bin reads but do not trim them (default: trim the\\nreads)"
    discard_unassigned: "Discard unassigned reads (instead of creating a\\n\\\"none\\\" bin) (default: False)"
    adapter_threshold: "An adapter set has to have at least this percent\\nidentity to be labelled as present and trimmed off\\n(0 to 100) (default: 90.0)"
    check_reads: "This many reads will be aligned to all possible\\nadapters to determine which adapter sets are present\\n(default: 10000)"
    scoring_scheme: "Comma-delimited string of alignment scores: match,\\nmismatch, gap open, gap extend (default: 3,-6,-5,-2)"
    end_size: "The number of base pairs at each end of the read\\nwhich will be searched for adapter sequences\\n(default: 150)"
    min_trim_size: "Adapter alignments smaller than this will be ignored\\n(default: 4)"
    extra_end_trim: "This many additional bases will be removed next to\\nadapters found at the ends of reads (default: 2)"
    end_threshold: "Adapters at the ends of reads must have at least\\nthis percent identity to be removed (0 to 100)\\n(default: 75.0)"
    no_split: "Skip splitting reads based on middle adapters\\n(default: split reads when an adapter is found in\\nthe middle)"
    discard_middle: "Reads with middle adapters will be discarded\\n(default: reads with middle adapters are split)\\n(required for reads to be used with Nanopolish, this\\noption is on by default when outputting reads into\\nbarcode bins)"
    middle_threshold: "Adapters in the middle of reads must have at least\\nthis percent identity to be found (0 to 100)\\n(default: 85.0)"
    extra_middle_trim_good_side: "This many additional bases will be removed next to\\nmiddle adapters on their \\\"good\\\" side (default: 10)"
    extra_middle_trim_bad_side: "This many additional bases will be removed next to\\nmiddle adapters on their \\\"bad\\\" side (default: 100)"
    min_split_read_size: "Post-split read pieces smaller than this many base\\npairs will not be outputted (default: 1000)"
  }
  output {
    File out_stdout = stdout()
    File out_barcode_stats_csv = "${in_barcode_stats_csv}"
    File out_verbosity = "${in_verbosity}"
    Directory out_barcode_dir = "${in_barcode_dir}"
  }
}