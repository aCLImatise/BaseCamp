version 1.0

task Dazcon {
  input {
    Boolean? verbose
    Boolean? only_proper_overlaps
    Boolean? coverage_sort
    Int? max_hit
    File? seq_file
    File? align_file
    Int? trim
    Int? min_len
    Int? min_coverage
    Int? threads
  }
  command <<<
    dazcon \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (only_proper_overlaps) then "--only-proper-overlaps" else ""} \
      ~{if (coverage_sort) then "--coverage-sort" else ""} \
      ~{if defined(max_hit) then ("--max-hit " +  '"' + max_hit + '"') else ""} \
      ~{if defined(seq_file) then ("--seq-file " +  '"' + seq_file + '"') else ""} \
      ~{if defined(align_file) then ("--align-file " +  '"' + align_file + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Turns on verbose logging"
    only_proper_overlaps: "Use only 'proper overlaps', i.e., align to the ends"
    coverage_sort: "Sort hits by coverage"
    max_hit: "Maximum number of hits to pass to consensus"
    seq_file: "(required)  Path to the sequences file"
    align_file: "(required)  Path to the alignments file"
    trim: "Trim alignments on either size"
    min_len: "Minimum length for correction"
    min_coverage: "Minimum coverage for correction"
    threads: "Number of consensus threads"
  }
  output {
    File out_stdout = stdout()
  }
}