version 1.0

task KmerMask {
  input {
    String? mdb
    Boolean? ms
    String? edb
    String? input_reads_fastqbz
    String? optional_mated_reads
    Int? maximum_length_input
    Boolean? cleaner
    Boolean? dirtier
    Boolean? discard
    Boolean? unlink
    Boolean? no_masking
    Boolean? prefix_output_reads
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
      ~{if defined(optional_mated_reads) then ("-2 " +  '"' + optional_mated_reads + '"') else ""} \
      ~{if defined(maximum_length_input) then ("-l " +  '"' + maximum_length_input + '"') else ""} \
      ~{true="-cleaner" false="" cleaner} \
      ~{true="-dirtier" false="" dirtier} \
      ~{true="-discard" false="" discard} \
      ~{true="-unlink" false="" unlink} \
      ~{true="-nomasking" false="" no_masking} \
      ~{true="-o" false="" prefix_output_reads} \
      ~{if defined(write_histogram_retained) then ("-h " +  '"' + write_histogram_retained + '"') else ""} \
      ~{if defined(use_compute_threads) then ("-t " +  '"' + use_compute_threads + '"') else ""} \
      ~{true="-v" false="" show_progress}
  >>>
  parameter_meta {
    mdb: "load masking kmers from meryl 'mer-database'"
    ms: "mer-size          the mer size used to generate the meryl database"
    edb: "save masking kmers to 'exist-database', and reuse on future runs (optional)"
    input_reads_fastqbz: "input reads - fastq, fastq.gz, fastq.bz2 or fastq.xz"
    optional_mated_reads: "- optional, for mated reads"
    maximum_length_input: "maximum length of input read (512) If too small, program will fail. If too large, program will use excessive memory."
    cleaner: "use the cleaner classification of the two reads"
    dirtier: "use the dirtier classification of the two reads"
    discard: "discard pairs with conflicting classifications (DEFAULT)"
    unlink: "leave conflicting status alone, output reads to different files NOTE: mate pairing will be broken"
    no_masking: "do not trim masked sequence; output the original read"
    prefix_output_reads: "prefix                output reads: prefix.clean.[12].fastq  - clean (unmasked) reads prefix.murky.[12].fastq  - reads in between prefix.match.[12].fastq  - matching (masked) reads prefix.mixed.[12].fastq  - reads with conflicting status (for mated reads)"
    write_histogram_retained: "write a histogram of the amount of sequence RETAINED"
    use_compute_threads: "use 't' compute threads"
    show_progress: "show progress"
  }
}