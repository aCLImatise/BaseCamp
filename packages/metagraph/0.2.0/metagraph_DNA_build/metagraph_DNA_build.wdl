version 1.0

task MetagraphDNABuild {
  input {
    Boolean? min_count
    Boolean? max_count
    Boolean? min_count_q
    Boolean? max_count_q
    Boolean? reference
    Boolean? graph
    Boolean? count_km_ers
    Boolean? count_width
    Boolean? index_ranges
    Boolean? km_er_length
    Boolean? mode
    Boolean? complete
    Boolean? mem_cap_gb
    Boolean? dynamic
    Boolean? len_suffix
    Boolean? suffix
    File? outfile_base
    Boolean? mask_dummy
    Boolean? parallel
    Boolean? disk_swap
    Boolean? disk_cap_gb
    Boolean? verbose
    Int file_one
  }
  command <<<
    metagraph_DNA build \
      ~{file_one} \
      ~{if (min_count) then "--min-count" else ""} \
      ~{if (max_count) then "--max-count" else ""} \
      ~{if (min_count_q) then "--min-count-q" else ""} \
      ~{if (max_count_q) then "--max-count-q" else ""} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (graph) then "--graph" else ""} \
      ~{if (count_km_ers) then "--count-kmers" else ""} \
      ~{if (count_width) then "--count-width" else ""} \
      ~{if (index_ranges) then "--index-ranges" else ""} \
      ~{if (km_er_length) then "--kmer-length" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (complete) then "--complete" else ""} \
      ~{if (mem_cap_gb) then "--mem-cap-gb" else ""} \
      ~{if (dynamic) then "--dynamic" else ""} \
      ~{if (len_suffix) then "--len-suffix" else ""} \
      ~{if (suffix) then "--suffix" else ""} \
      ~{if (outfile_base) then "--outfile-base" else ""} \
      ~{if (mask_dummy) then "--mask-dummy" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (disk_swap) then "--disk-swap" else ""} \
      ~{if (disk_cap_gb) then "--disk-cap-gb" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0"
  }
  parameter_meta {
    min_count: "[INT]    min k-mer abundance, including [1]"
    max_count: "[INT]    max k-mer abundance, excluding [inf]"
    min_count_q: "[INT]  min k-mer abundance quantile (min-count is used by default) [0.0]"
    max_count_q: "[INT]  max k-mer abundance quantile (max-count is used by default) [1.0]"
    reference: "[STR]    basename of reference sequence (for parsing VCF files) []"
    graph: "[STR]        graph representation: succinct / bitmap / hash / hashstr / hashfast [succinct]"
    count_km_ers: "count k-mers and build weighted graph [off]"
    count_width: "number of bits used to represent k-mer abundance [8]"
    index_ranges: "[INT] index all node ranges in BOSS for suffixes of given length [10]"
    km_er_length: "[INT]  length of the k-mer to use [3]"
    mode: "k-mer indexing mode: basic / canonical / primary [basic]"
    complete: "construct a complete graph (only for Bitmap graph) [off]"
    mem_cap_gb: "[INT]   preallocated buffer size in GB [1]"
    dynamic: "use dynamic build method [off]"
    len_suffix: "[INT]   k-mer suffix length for building graph from chunks [0]"
    suffix: "build graph chunk only for k-mers with the suffix given [off]"
    outfile_base: "[STR] basename of output file []"
    mask_dummy: "build mask for dummy k-mers (only for Succinct graph) [off]"
    parallel: "[INT]     use multiple threads for computation [1]"
    disk_swap: "[STR]    directory to use for temporary files [off]"
    disk_cap_gb: "[INT]  max temp disk space to use before forcing a merge, in GB [inf]"
    verbose: "switch on verbose output [off]"
    file_one: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile_base = "${in_outfile_base}"
  }
}