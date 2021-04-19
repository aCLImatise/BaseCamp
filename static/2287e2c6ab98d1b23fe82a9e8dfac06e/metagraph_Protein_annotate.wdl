version 1.0

task MetagraphProteinAnnotate {
  input {
    Boolean? min_count
    Boolean? max_count
    Boolean? reference
    Boolean? an_no_type
    Boolean? annotator
    Boolean? sparse
    Boolean? cache
    Boolean? disk_swap
    Boolean? mem_cap_gb
    File? outfile_base
    Boolean? separately
    Boolean? sequentially
    Boolean? an_no_filename
    Boolean? an_no_header
    Boolean? header_comment_delim
    Boolean? header_delimiter
    Boolean? an_no_label
    Boolean? anchors
    Boolean? count_km_ers
    Boolean? parallel
    Boolean? verbose
    String? i
    Int file_one
  }
  command <<<
    metagraph_Protein annotate \
      ~{file_one} \
      ~{if (min_count) then "--min-count" else ""} \
      ~{if (max_count) then "--max-count" else ""} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (an_no_type) then "--anno-type" else ""} \
      ~{if (annotator) then "--annotator" else ""} \
      ~{if (sparse) then "--sparse" else ""} \
      ~{if (cache) then "--cache" else ""} \
      ~{if (disk_swap) then "--disk-swap" else ""} \
      ~{if (mem_cap_gb) then "--mem-cap-gb" else ""} \
      ~{if (outfile_base) then "--outfile-base" else ""} \
      ~{if (separately) then "--separately" else ""} \
      ~{if (sequentially) then "--sequentially" else ""} \
      ~{if (an_no_filename) then "--anno-filename" else ""} \
      ~{if (an_no_header) then "--anno-header" else ""} \
      ~{if (header_comment_delim) then "--header-comment-delim" else ""} \
      ~{if (header_delimiter) then "--header-delimiter" else ""} \
      ~{if (an_no_label) then "--anno-label" else ""} \
      ~{if (anchors) then "--anchors" else ""} \
      ~{if (count_km_ers) then "--count-kmers" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0"
  }
  parameter_meta {
    min_count: "[INT]    min k-mer abundance, including [1]"
    max_count: "[INT]    max k-mer abundance, excluding [inf]"
    reference: "[STR]    basename of reference sequence (for parsing VCF files) []"
    an_no_type: "[STR]    target annotation representation: column / row [column]"
    annotator: "[STR]    annotator to update []"
    sparse: "use the row-major sparse matrix to annotate graph [off]"
    cache: "number of columns in cache (for column representation only) [10]"
    disk_swap: "[STR]    directory to use for temporary files [off]"
    mem_cap_gb: "[FLOAT] buffer size in GB (per column in construction) [1]"
    outfile_base: "[STR] basename of output file (or directory, for --separately) []"
    separately: "annotate each file independently and dump to the same directory [off]"
    sequentially: "annotate files sequentially (each may use multiple threads) [off]"
    an_no_filename: "include filenames as annotation labels [off]"
    an_no_header: "extract annotation labels from headers of sequences in files [off]"
    header_comment_delim: "[STR] delimiter for joining fasta header with comment [off]"
    header_delimiter: "[STR]     delimiter for splitting annotation header into multiple labels [off]"
    an_no_label: "[STR]           add label to annotation for all sequences from the files passed []"
    anchors: "[STR]              location of the anchor file (for row_diff) []"
    count_km_ers: "add k-mer counts to the annotation [off]"
    parallel: "[INT]     use multiple threads for computation [1]"
    verbose: "switch on verbose output [off]"
    i: ""
    file_one: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile_base = "${in_outfile_base}"
  }
}