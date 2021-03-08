version 1.0

task MmseqsSplitsequence {
  input {
    Int? sequence_overlap
    Int? sequence_split_mode
    Int? headers_split_mode
    Int? max_seq_len
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
    Int? create_lookup
  }
  command <<<
    mmseqs splitsequence \
      ~{if defined(sequence_overlap) then ("--sequence-overlap " +  '"' + sequence_overlap + '"') else ""} \
      ~{if defined(sequence_split_mode) then ("--sequence-split-mode " +  '"' + sequence_split_mode + '"') else ""} \
      ~{if defined(headers_split_mode) then ("--headers-split-mode " +  '"' + headers_split_mode + '"') else ""} \
      ~{if defined(max_seq_len) then ("--max-seq-len " +  '"' + max_seq_len + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(create_lookup) then ("--create-lookup " +  '"' + create_lookup + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    sequence_overlap: "Overlap between sequences [300]"
    sequence_split_mode: "Sequence split mode 0: copy data, 1: soft link data and write new index, [1]"
    headers_split_mode: "Header split mode: 0: split position, 1: original header [0]"
    max_seq_len: "Maximum sequence length [10000]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    create_lookup: "Create database lookup file (can be very large) [0]"
  }
  output {
    File out_stdout = stdout()
  }
}