version 1.0

task KmerMask {
  input {
    String? mdb
    Boolean? ms
    String? edb
    String? input_reads_fastqbz
    String? optional_present_messes
    Boolean? out_output_reads
    Int? ignore_database_hits
    String? extend_database_hits
    Boolean? novel
    Boolean? confirmed
    Boolean? promote
    Boolean? demote
    Boolean? discard
    Boolean? unlink
    Boolean? no_masking
    String? write_histogram_retained
    String? use_compute_threads
    Boolean? show_progress
  }
  command <<<
    kmer-mask \
      ~{if defined(mdb) then ("-mdb " +  '"' + mdb + '"') else ""} \
      ~{true="-ms" false="" ms} \
      ~{if defined(edb) then ("-edb " +  '"' + edb + '"') else ""} \
      ~{if defined(input_reads_fastqbz) then ("-1 " +  '"' + input_reads_fastqbz + '"') else ""} \
      ~{if defined(optional_present_messes) then ("-2 " +  '"' + optional_present_messes + '"') else ""} \
      ~{true="-o" false="" out_output_reads} \
      ~{if defined(ignore_database_hits) then ("-m " +  '"' + ignore_database_hits + '"') else ""} \
      ~{if defined(extend_database_hits) then ("-e " +  '"' + extend_database_hits + '"') else ""} \
      ~{true="-novel" false="" novel} \
      ~{true="-confirmed" false="" confirmed} \
      ~{true="-promote" false="" promote} \
      ~{true="-demote" false="" demote} \
      ~{true="-discard" false="" discard} \
      ~{true="-unlink" false="" unlink} \
      ~{true="-nomasking" false="" no_masking} \
      ~{if defined(write_histogram_retained) then ("-h " +  '"' + write_histogram_retained + '"') else ""} \
      ~{if defined(use_compute_threads) then ("-t " +  '"' + use_compute_threads + '"') else ""} \
      ~{true="-v" false="" show_progress}
  >>>
  parameter_meta {
    mdb: "load masking kmers from meryl 'mer-database'"
    ms: "mer-size          "
    edb: "save masking kmers to 'exist-database' for faster restarts"
    input_reads_fastqbz: "input reads - fastq, fastq.gz, fastq.bz2 or fastq.xz"
    optional_present_messes: "- (optional, but if not present, messes up the output classification)"
    out_output_reads: "out                output reads: out.fullymasked.[12].fastq      - reads with below 'lowthreshold' bases retained out.partiallymasked.[12].fastq  - reads in between out.retained.[12].fastq         - reads with more than 'hightreshold' bases retained out.discarded.[12].fastq        - reads with conflicting status"
    ignore_database_hits: "ignore database hits below this many consecutive kmers (0)"
    extend_database_hits: "extend database hits across this many missing kmers (0)"
    novel: "RETAIN novel sequence not present in the database"
    confirmed: "RETAIN confirmed sequence present in the database"
    promote: "promote the lesser RETAINED read to the status of the more RETAINED read read1=fullymasked and read2=partiallymasked -> both are partiallymasked"
    demote: "demote the more RETAINED read to the status of the lesser RETAINED read read1=fullymasked and read2=partiallymasked -> both are fullymasked"
    discard: "discard pairs with conflicting status (DEFAULT) read1=fullymasked and read2=partiallymasked -> both are discarded"
    unlink: "leave conflicting status alone; mate pairing will be broken"
    no_masking: "classify reads as normal, but do not trim masked sequence; output the full original read"
    write_histogram_retained: "write a histogram of the amount of sequence RETAINED"
    use_compute_threads: "use 't' compute threads"
    show_progress: "show progress"
  }
}