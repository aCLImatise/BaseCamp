version 1.0

task Clumpify.sh {
  input {
    String compression_dot
    String reads_dot
    String non_duplicate_dot
  }
  command <<<
    clumpify.sh \
      ~{compression_dot} \
      ~{reads_dot} \
      ~{non_duplicate_dot}
  >>>
  parameter_meta {
    compression_dot: "Should be disabled for paired reads."
    reads_dot: "Yields the highest compression."
    non_duplicate_dot: "Improves detection of inexact duplicates."
  }
}