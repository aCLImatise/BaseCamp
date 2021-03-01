version 1.0

task BarcodeSplitter {
  input {
    File? bc_file
    Array[Int] idx_read
    Int? mismatches
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
    File series_more_fastq
  }
  command <<<
    barcode_splitter \
      ~{series_more_fastq} \
      ~{if defined(bc_file) then ("--bcfile " +  '"' + bc_file + '"') else ""} \
      ~{if defined(idx_read) then ("--idxread " +  '"' + idx_read + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if (barcodes_at_end) then "--barcodes_at_end" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if (galaxy) then "--galaxy" else ""} \
      ~{if (no_sanitize) then "--nosanitize" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (gzip_out) then "--gzipout" else ""} \
      ~{if (split_all) then "--split_all" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (gzip_in) then "--gzipin" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bc_file: "REQUIRED: Tab delimited file: \\\"Sample_ID <tab>\\nBarcode_Sequence\\\" Multiple barcode columns with\\ndifferent barcode lengths allowed, but all barcodes in\\neach inidividual column must be the same length."
    idx_read: "REQUIRED: Indicate in which read file(s) to search for\\nthe corresponding column of barcode sequences, e.g. if\\nthe first column of barcodes is in the second sequence\\nread file and the second column's barcodes are in the\\nthird sequence read file, you'd supply `--idxread 2 3`"
    mismatches: "Number of mismatches allowed in barcode matching"
    barcodes_at_end: "Barcodes are at the end of the index read (default is\\nat the beginning)"
    prefix: "Prefix for output files"
    suffix: "Suffix for output files (default based on --format)"
    galaxy: "Produce \\\"Galaxy safe\\\" filenames by removing\\nunderscores (default: False)"
    no_sanitize: "Do not produce \\\"safe\\\" filenames by replacing unusual\\ncharacters in the supplied prefix and sample IDs with\\nunderscores. (default: False)"
    verbose: "verbose output"
    gzip_out: "Output files in compressed gzip format (default is\\nuncompressed)"
    split_all: "Split all input files, including index read files (by\\ndefault, index read files are not split unless all\\nread files are index files)"
    format: "Specify format for sequence files (fasta or fastq)"
    gzip_in: "Assume input files are in gzip format, despite file\\nextension (default is auto based on input file\\nextension)"
    series_more_fastq: "A series of 1 or more [optionally zipped] fastq files."
  }
  output {
    File out_stdout = stdout()
  }
}