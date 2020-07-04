version 1.0

task Compute {
  input {
    Boolean? use_total_segregating
    Boolean? verbose_progress_reporting
    Boolean? _pretty_output
    String? i
  }
  command <<<
    compute \
      ~{true="-n" false="" use_total_segregating} \
      ~{true="-v" false="" verbose_progress_reporting} \
      ~{true="-V" false="" _pretty_output} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    use_total_segregating: ": use the total # of segregating sites, rather than # of mutations"
    verbose_progress_reporting: ": verbose progress reporting to standard error"
    _pretty_output: ": pretty output"
    i: ""
  }
}