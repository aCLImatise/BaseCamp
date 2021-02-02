version 1.0

task Clumpifysh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    String compression_dot
    String reads_dot
    String non_duplicate_dot
    String next_seq
    String y_axis_dot
    String correlations_dot
  }
  command <<<
    clumpify_sh \
      ~{compression_dot} \
      ~{reads_dot} \
      ~{non_duplicate_dot} \
      ~{next_seq} \
      ~{y_axis_dot} \
      ~{correlations_dot} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  parameter_meta {
    x_mx: "This will set Java's memory usage, overriding autodetection.\\n-Xmx20g will specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\\nThe max is typically 85% of physical memory."
    e_oom: "This flag will cause the process to exit if an\\nout-of-memory exception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
    compression_dot: "Should be disabled for paired reads."
    reads_dot: "Yields the highest compression."
    non_duplicate_dot: "Improves detection of inexact duplicates."
    next_seq: "40  (and spany=t)"
    y_axis_dot: "Should only be enabled when looking for "
    correlations_dot: "Increasing this number can reduce false-"
  }
  output {
    File out_stdout = stdout()
  }
}