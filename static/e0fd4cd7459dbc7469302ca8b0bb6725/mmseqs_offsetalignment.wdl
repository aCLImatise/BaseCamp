version 1.0

task MmseqsOffsetalignment {
  input {
    Int? search_type
    Int? threads
    Int? compressed
    Int? db_load_mode
    Int? verbosity_level_errors
    Int? chain_alignments
    Int? merge_query
  }
  command <<<
    mmseqs offsetalignment \
      ~{if defined(search_type) then ("--search-type " +  '"' + search_type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(db_load_mode) then ("--db-load-mode " +  '"' + db_load_mode + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(chain_alignments) then ("--chain-alignments " +  '"' + chain_alignments + '"') else ""} \
      ~{if defined(merge_query) then ("--merge-query " +  '"' + merge_query + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    search_type: "Search type 0: auto 1: amino acid, 2: translated, 3: nucleotide, 4: translated nucleotide alignment [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    db_load_mode: "Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    chain_alignments: "Chain overlapping alignments [0]"
    merge_query: "Combine ORFs/split sequences to a single entry [1]"
  }
  output {
    File out_stdout = stdout()
  }
}