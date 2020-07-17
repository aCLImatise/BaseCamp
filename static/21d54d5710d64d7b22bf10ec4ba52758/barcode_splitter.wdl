version 1.0

task BarcodeSplitter {
  input {
    File? bc_file
    Array[String] idx_read
    String? mismatches
    Boolean? barcodes_at_end
    String? prefix
    String? suffix
    Boolean? galaxy
    Boolean? no_sanitize
    Boolean? verbose
    Boolean? gzip_out
    Boolean? split_all
    String? format
    Boolean? gzip_in
    File file
  }
  command <<<
    barcode_splitter \
      ~{file} \
      ~{if defined(bc_file) then ("--bcfile " +  '"' + bc_file + '"') else ""} \
      ~{if defined(idx_read) then ("--idxread " +  '"' + idx_read + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{true="--barcodes_at_end" false="" barcodes_at_end} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{true="--galaxy" false="" galaxy} \
      ~{true="--nosanitize" false="" no_sanitize} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--gzipout" false="" gzip_out} \
      ~{true="--split_all" false="" split_all} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--gzipin" false="" gzip_in}
  >>>
  parameter_meta {
    bc_file: "REQUIRED: Tab delimited file: \"Sample_ID <tab> Barcode_Sequence\" Multiple barcode columns with different barcode lengths allowed, but all barcodes in each inidividual column must be the same length."
    idx_read: "REQUIRED: Indicate in which read file(s) to search for the corresponding column of barcode sequences, e.g. if the first column of barcodes is in the second sequence read file and the second column's barcodes are in the third sequence read file, you'd supply `--idxread 2 3`"
    mismatches: "Number of mismatches allowed in barcode matching"
    barcodes_at_end: "Barcodes are at the end of the index read (default is at the beginning)"
    prefix: "Prefix for output files"
    suffix: "Suffix for output files (default based on --format)"
    galaxy: "Produce \"Galaxy safe\" filenames by removing underscores (default: False)"
    no_sanitize: "Do not produce \"safe\" filenames by replacing unusual characters in the supplied prefix and sample IDs with underscores. (default: False)"
    verbose: "verbose output"
    gzip_out: "Output files in compressed gzip format (default is uncompressed)"
    split_all: "Split all input files, including index read files (by default, index read files are not split unless all read files are index files)"
    format: "Specify format for sequence files (fasta or fastq)"
    gzip_in: "Assume input files are in gzip format, despite file extension (default is auto based on input file extension)"
    file: "A series of 1 or more [optionally zipped] fastq files."
  }
}