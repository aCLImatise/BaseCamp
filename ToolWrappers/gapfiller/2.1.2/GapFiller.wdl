version 1.0

task GapFiller {
  input {
    Int? length_word_used
    Int? block_length
    String? output_prefix
    Boolean? gz
    Boolean? bz_two
    Int? see_done
    Int? seed_two
    File? seed_sam
    File? query
    File? query_sam
    Int? seed_ins
    String? seed_var
    Boolean? store_layout
    Int? overlap
    Int? mismatch_rate
    Int? ext_threshold
    Int? limit
    Boolean? no_read_cycle
    Boolean? mate_pairs
    Boolean? verbose
  }
  command <<<
    GapFiller \
      ~{if defined(length_word_used) then ("--k " +  '"' + length_word_used + '"') else ""} \
      ~{if defined(block_length) then ("--block-length " +  '"' + block_length + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (gz) then "--gz" else ""} \
      ~{if (bz_two) then "--bz2" else ""} \
      ~{if defined(see_done) then ("--seed1 " +  '"' + see_done + '"') else ""} \
      ~{if defined(seed_two) then ("--seed2 " +  '"' + seed_two + '"') else ""} \
      ~{if defined(seed_sam) then ("--seed-sam " +  '"' + seed_sam + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(query_sam) then ("--query-sam " +  '"' + query_sam + '"') else ""} \
      ~{if defined(seed_ins) then ("--seed-ins " +  '"' + seed_ins + '"') else ""} \
      ~{if defined(seed_var) then ("--seed-var " +  '"' + seed_var + '"') else ""} \
      ~{if (store_layout) then "--store-layout" else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(mismatch_rate) then ("--mismatch-rate " +  '"' + mismatch_rate + '"') else ""} \
      ~{if defined(ext_threshold) then ("--extThreshold " +  '"' + ext_threshold + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (no_read_cycle) then "--no-read-cycle" else ""} \
      ~{if (mate_pairs) then "--mate-pairs" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gapfiller:2.1.2--h176a8bc_1"
  }
  parameter_meta {
    length_word_used: "length of the word used to hash (default: 12)"
    block_length: "length of perfect match (default: 15)"
    output_prefix: "output files prefix (default: \\\"GapFiller_output\\\")"
    gz: "compress output with gzip"
    bz_two: "compress output with bzip2"
    see_done: "seed1 fasta file (can be compressed with gzip or bzip2,\\nor a pipe)"
    seed_two: "seed2 fasta file (can be compressed with gzip or bzip2,\\nor a pipe)"
    seed_sam: "seed sam file sorted by ID, with header (sam or bam\\nformat; can be repeated multiple times)"
    query: "query fasta file: use different reads for extension\\ninstead of seeds (can be compressed with gzip or bzip2,\\nor a pipe)"
    query_sam: "query sam file: use different reads for extension\\ninstead of sam seeds (sam or bam format; can be\\nrepeated multiple times)"
    seed_ins: "seed reads insert size"
    seed_var: "seed reads insert variation"
    store_layout: "store contigs layout (default: false)"
    overlap: "minimum suffix-prefix overlap (default: 30)"
    mismatch_rate: "maximum number of mismatches every 100 bp (default: 5)"
    ext_threshold: "number of reads needed to extend a contig (default: 2)"
    limit: "limits the number of extended reads (useful for tests)"
    no_read_cycle: "allow reads to be used multiple times within the same\\ncontig (default: false)"
    mate_pairs: "default: paired-ends"
    verbose: "print a lot of information! Use with --limit option"
  }
  output {
    File out_stdout = stdout()
  }
}