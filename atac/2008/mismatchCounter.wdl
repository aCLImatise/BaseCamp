version 1.0

task MismatchCounter {
  input {
    Boolean? annotate_match_percent
    Boolean? histogram_error_rate
    Boolean? check_next_base
    String? h
  }
  command <<<
    mismatchCounter \
      ~{true="-a" false="" annotate_match_percent} \
      ~{true="-e" false="" histogram_error_rate} \
      ~{true="-c" false="" check_next_base} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    annotate_match_percent: ":     annotate each match with the percent error, write to stdout"
    histogram_error_rate: ":     histogram of the error rate of each match"
    check_next_base: ":     check that the next base on each side is a mismatch"
    h: ""
  }
}