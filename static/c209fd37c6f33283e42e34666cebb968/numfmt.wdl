version 1.0

task Numfmt {
  input {
    Boolean? debug
    String? delimiter
    String? field
    String? format
    String? from
    String? from_unit
    Boolean? grouping
    Boolean? header
    String? invalid
    String? padding
    String? round
    String? suffix
    String? to
    String? to_unit
    Boolean? zero_terminated
    String autoscaling_done_trigger
    String auto
    String si
    String iec
    String iec_i
  }
  command <<<
    numfmt \
      ~{autoscaling_done_trigger} \
      ~{auto} \
      ~{si} \
      ~{iec} \
      ~{iec_i} \
      ~{true="--debug" false="" debug} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""} \
      ~{if defined(from_unit) then ("--from-unit " +  '"' + from_unit + '"') else ""} \
      ~{true="--grouping" false="" grouping} \
      ~{true="--header" false="" header} \
      ~{if defined(invalid) then ("--invalid " +  '"' + invalid + '"') else ""} \
      ~{if defined(padding) then ("--padding " +  '"' + padding + '"') else ""} \
      ~{if defined(round) then ("--round " +  '"' + round + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(to) then ("--to " +  '"' + to + '"') else ""} \
      ~{if defined(to_unit) then ("--to-unit " +  '"' + to_unit + '"') else ""} \
      ~{true="--zero-terminated" false="" zero_terminated}
  >>>
  parameter_meta {
    debug: "print warnings about invalid input"
    delimiter: "use X instead of whitespace for field delimiter"
    field: "replace the numbers in these input fields (default=1) see FIELDS below"
    format: "use printf style floating-point FORMAT; see FORMAT below for details"
    from: "auto-scale input numbers to UNITs; default is 'none'; see UNIT below"
    from_unit: "specify the input unit size (instead of the default 1)"
    grouping: "use locale-defined grouping of digits, e.g. 1,000,000 (which means it has no effect in the C/POSIX locale)"
    header: "[=N]     print (without converting) the first N header lines; N defaults to 1 if not specified"
    invalid: "failure mode for invalid numbers: MODE can be: abort (default), fail, warn, ignore"
    padding: "pad the output to N characters; positive N will right-align; negative N will left-align; padding is ignored if the output is wider than N; the default is to automatically pad if a whitespace is found"
    round: "use METHOD for rounding when scaling; METHOD can be: up, down, from-zero (default), towards-zero, nearest"
    suffix: "add SUFFIX to output numbers, and accept optional SUFFIX in input numbers"
    to: "auto-scale output numbers to UNITs; see UNIT below"
    to_unit: "the output unit size (instead of the default 1)"
    zero_terminated: "line delimiter is NUL, not newline"
    autoscaling_done_trigger: "no auto-scaling is done; suffixes will trigger an error"
    auto: "accept optional single/two letter suffix: 1K = 1000, 1Ki = 1024, 1M = 1000000, 1Mi = 1048576,"
    si: "accept optional single letter suffix: 1K = 1000, 1M = 1000000, ..."
    iec: "accept optional single letter suffix: 1K = 1024, 1M = 1048576, ..."
    iec_i: "accept optional two-letter suffix: 1Ki = 1024, 1Mi = 1048576, ..."
  }
}