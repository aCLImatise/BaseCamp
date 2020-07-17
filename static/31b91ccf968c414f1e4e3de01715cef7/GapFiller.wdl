version 1.0

task GapFiller {
  input {
    String? length_word_used
    String? block_length
    String? output_prefix
    Boolean? gz
    Boolean? bz_two
    String? see_done
    String? seed_two
    String? seed_sam
    String? query
    String? query_sam
    String? seed_ins
    String? seed_var
    Boolean? store_layout
    String? overlap
    String? mismatch_rate
    String? ext_threshold
    String? limit
    Boolean? no_read_cycle
    Boolean? mate_pairs
    Boolean? verbose
  }
  command <<<
    GapFiller \
      ~{if defined(length_word_used) then ("--k " +  '"' + length_word_used + '"') else ""} \
      ~{if defined(block_length) then ("--block-length " +  '"' + block_length + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{true="--gz" false="" gz} \
      ~{true="--bz2" false="" bz_two} \
      ~{if defined(see_done) then ("--seed1 " +  '"' + see_done + '"') else ""} \
      ~{if defined(seed_two) then ("--seed2 " +  '"' + seed_two + '"') else ""} \
      ~{if defined(seed_sam) then ("--seed-sam " +  '"' + seed_sam + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(query_sam) then ("--query-sam " +  '"' + query_sam + '"') else ""} \
      ~{if defined(seed_ins) then ("--seed-ins " +  '"' + seed_ins + '"') else ""} \
      ~{if defined(seed_var) then ("--seed-var " +  '"' + seed_var + '"') else ""} \
      ~{true="--store-layout" false="" store_layout} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(mismatch_rate) then ("--mismatch-rate " +  '"' + mismatch_rate + '"') else ""} \
      ~{if defined(ext_threshold) then ("--extThreshold " +  '"' + ext_threshold + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{true="--no-read-cycle" false="" no_read_cycle} \
      ~{true="--mate-pairs" false="" mate_pairs} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    length_word_used: "length of the word used to hash (default: 12)"
    block_length: "length of perfect match (default: 15)"
    output_prefix: "output files prefix (default: \"GapFiller_output\")"
    gz: "compress output with gzip"
    bz_two: "compress output with bzip2"
    see_done: "seed1 fasta file (can be compressed with gzip or bzip2, or a pipe)"
    seed_two: "seed2 fasta file (can be compressed with gzip or bzip2, or a pipe)"
    seed_sam: "seed sam file sorted by ID, with header (sam or bam  format; can be repeated multiple times)"
    query: "query fasta file: use different reads for extension  instead of seeds (can be compressed with gzip or bzip2, or a pipe)"
    query_sam: "query sam file: use different reads for extension  instead of sam seeds (sam or bam format; can be  repeated multiple times)"
    seed_ins: "seed reads insert size"
    seed_var: "seed reads insert variation"
    store_layout: "store contigs layout (default: false)"
    overlap: "minimum suffix-prefix overlap (default: 30)"
    mismatch_rate: "maximum number of mismatches every 100 bp (default: 5)"
    ext_threshold: "number of reads needed to extend a contig (default: 2)"
    limit: "limits the number of extended reads (useful for tests)"
    no_read_cycle: "allow reads to be used multiple times within the same  contig (default: false)"
    mate_pairs: "default: paired-ends"
    verbose: "print a lot of information! Use with --limit option"
  }
}