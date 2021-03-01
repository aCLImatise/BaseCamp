version 1.0

task Racon {
  input {
    Boolean? include_unpolished
    Boolean? fragment_correction
    Int? window_length
    Float? quality_threshold
    Float? error_threshold
    Boolean? no_trimming
    Int? match
    Int? mismatch
    Int? gap
    Int? threads
  }
  command <<<
    racon \
      ~{if (include_unpolished) then "--include-unpolished" else ""} \
      ~{if (fragment_correction) then "--fragment-correction" else ""} \
      ~{if defined(window_length) then ("--window-length " +  '"' + window_length + '"') else ""} \
      ~{if defined(quality_threshold) then ("--quality-threshold " +  '"' + quality_threshold + '"') else ""} \
      ~{if defined(error_threshold) then ("--error-threshold " +  '"' + error_threshold + '"') else ""} \
      ~{if (no_trimming) then "--no-trimming" else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/racon:1.4.20--he513fc3_0"
  }
  parameter_meta {
    include_unpolished: "output unpolished target sequences"
    fragment_correction: "perform fragment correction instead of contig polishing\\n(overlaps file should contain dual/self overlaps!)"
    window_length: "default: 500\\nsize of window on which POA is performed"
    quality_threshold: "default: 10.0\\nthreshold for average base quality of windows used in POA"
    error_threshold: "default: 0.3\\nmaximum allowed error rate used for filtering overlaps"
    no_trimming: "disables consensus trimming at window ends"
    match: "default: 3\\nscore for matching bases"
    mismatch: "default: -5\\nscore for mismatching bases"
    gap: "default: -4\\ngap penalty (must be negative)"
    threads: "default: 1\\nnumber of threads"
  }
  output {
    File out_stdout = stdout()
  }
}