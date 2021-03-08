version 1.0

task MmseqsSwapresults {
  input {
    Int? split_memory_limit
    Float? list_matches_evalue
    Int? gap_open
    Int? gap_extend
    File? sub_mat
    Int? threads
    Int? compressed
    Int? db_load_mode
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs swapresults \
      ~{if defined(split_memory_limit) then ("--split-memory-limit " +  '"' + split_memory_limit + '"') else ""} \
      ~{if defined(list_matches_evalue) then ("-e " +  '"' + list_matches_evalue + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(db_load_mode) then ("--db-load-mode " +  '"' + db_load_mode + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    split_memory_limit: "Set max memory per split. E.g. 800B, 5K, 10M, 1G. Default (0) to all available system memory [0]"
    list_matches_evalue: "List matches below this E-value (range 0.0-inf) [1.000E-03]"
    gap_open: "Gap open cost [nucl:5,aa:11]"
    gap_extend: "Gap extension cost [nucl:2,aa:1]"
    sub_mat: "Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    db_load_mode: "Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}