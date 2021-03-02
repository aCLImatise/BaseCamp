version 1.0

task Bifrost {
  input {
    Boolean? input_seq_file
    Boolean? input_ref_file
    File? output_file
    Boolean? threads
    Boolean? km_er_length
    Boolean? min_length
    Boolean? bloom_bits
    Boolean? bloom_bits_two
    Boolean? load_mb_bf
    File? write_mb_bf
    Boolean? chunk_size
    Boolean? colors
    Boolean? keep_mercy
    Boolean? clip_tips
    Boolean? del_isolated
    File? fast_a
    Boolean? verbose
    Boolean? input_graph_file
    Boolean? input_color_file
    Boolean? input_query_file
    Boolean? ratio_km_ers
    Boolean? in_exact
    String build_compacted_graph
    String update_compacted_graph
    String query_compacted_graph
    String var_25
    String var_26
    String var_27
  }
  command <<<
    Bifrost \
      ~{build_compacted_graph} \
      ~{update_compacted_graph} \
      ~{query_compacted_graph} \
      ~{var_25} \
      ~{var_26} \
      ~{var_27} \
      ~{if (input_seq_file) then "--input-seq-file" else ""} \
      ~{if (input_ref_file) then "--input-ref-file" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (km_er_length) then "--kmer-length" else ""} \
      ~{if (min_length) then "--min-length" else ""} \
      ~{if (bloom_bits) then "--bloom-bits" else ""} \
      ~{if (bloom_bits_two) then "--bloom-bits2" else ""} \
      ~{if (load_mb_bf) then "--load-mbbf" else ""} \
      ~{if (write_mb_bf) then "--write-mbbf" else ""} \
      ~{if (chunk_size) then "--chunk-size" else ""} \
      ~{if (colors) then "--colors" else ""} \
      ~{if (keep_mercy) then "--keep-mercy" else ""} \
      ~{if (clip_tips) then "--clip-tips" else ""} \
      ~{if (del_isolated) then "--del-isolated" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (input_graph_file) then "--input-graph-file" else ""} \
      ~{if (input_color_file) then "--input-color-file" else ""} \
      ~{if (input_query_file) then "--input-query-file" else ""} \
      ~{if (ratio_km_ers) then "--ratio-kmers" else ""} \
      ~{if (in_exact) then "--inexact" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bifrost:1.0.5--h8b12597_0"
  }
  parameter_meta {
    input_seq_file: "Input sequence file (FASTA/FASTQ possibly gzipped)\\nMultiple files can be provided as a list in a TXT file (one file per line)\\nK-mers with exactly 1 occurrence in the input sequence files will be discarded"
    input_ref_file: "Input reference file (FASTA/FASTQ possibly gzipped and GFA)\\nMultiple files can be provided as a list in a TXT file (one file per line)\\nAll k-mers of the input reference files are used"
    output_file: "Prefix for output file(s)"
    threads: "Number of threads (default is 1)"
    km_er_length: "Length of k-mers (default is 31)"
    min_length: "Length of minimizers (default is automatically chosen)"
    bloom_bits: "Number of Bloom filter bits per k-mer with 1+ occurrences in the input files (default is 14)"
    bloom_bits_two: "Number of Bloom filter bits per k-mer with 2+ occurrences in the input files (default is 14)"
    load_mb_bf: "Input Blocked Bloom Filter file, skips filtering step (default is no input)"
    write_mb_bf: "Output Blocked Bloom Filter file (default is no output)"
    chunk_size: "Read chunk size per thread (default is 64)"
    colors: "Color the compacted de Bruijn graph (default is no coloring)"
    keep_mercy: "Keep low coverage k-mers connecting tips"
    clip_tips: "Clip tips shorter than k k-mers in length"
    del_isolated: "Delete isolated contigs shorter than k k-mers in length"
    fast_a: "Output file is in FASTA format (only sequences) instead of GFA"
    verbose: "Print information messages during execution"
    input_graph_file: "Input graph file to update (GFA format)"
    input_color_file: "Input color file associated with the input graph file to update"
    input_query_file: "Input query file (FASTA/FASTQ possibly gzipped)\\nMultiple files can be provided as a list in a TXT file (one file per line)"
    ratio_km_ers: "Ratio of k-mers from queries that must occur in the graph (default is 0.8)"
    in_exact: "Graph is searched with exact and inexact k-mers (1 substitution or indel) from queries"
    build_compacted_graph: "Build a compacted de Bruijn graph, with or without colors"
    update_compacted_graph: "Update a compacted (possible colored) de Bruijn graph with new sequences"
    query_compacted_graph: "Query a compacted (possible colored) de Bruijn graph"
    var_25: "> Mandatory with required argument:"
    var_26: "> Mandatory with required argument:"
    var_27: "> Mandatory with required argument:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_write_mb_bf = "${in_write_mb_bf}"
    File out_fast_a = "${in_fast_a}"
  }
}