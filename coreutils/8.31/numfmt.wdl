version 1.0

task Numfmt {
  input {
    Boolean? debug
    String? delimiter
    Int? field
    String? format
    String? from
    Int? from_unit
    Boolean? grouping
    Boolean? header
    String? invalid
    String? padding
    String? round
    String? suffix
    String? to
    Int? to_unit
    Boolean? zero_terminated
    Boolean? first_mth_field
    String autoscaling_done_trigger
    String auto
    String si
    String iec
    String iec_i
    String nth_field_end
    String n_m
  }
  command <<<
    numfmt \
      ~{autoscaling_done_trigger} \
      ~{auto} \
      ~{si} \
      ~{iec} \
      ~{iec_i} \
      ~{nth_field_end} \
      ~{n_m} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""} \
      ~{if defined(from_unit) then ("--from-unit " +  '"' + from_unit + '"') else ""} \
      ~{if (grouping) then "--grouping" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(invalid) then ("--invalid " +  '"' + invalid + '"') else ""} \
      ~{if defined(padding) then ("--padding " +  '"' + padding + '"') else ""} \
      ~{if defined(round) then ("--round " +  '"' + round + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(to) then ("--to " +  '"' + to + '"') else ""} \
      ~{if defined(to_unit) then ("--to-unit " +  '"' + to_unit + '"') else ""} \
      ~{if (zero_terminated) then "--zero-terminated" else ""} \
      ~{if (first_mth_field) then "-M" else ""}
  >>>
  parameter_meta {
    debug: "print warnings about invalid input"
    delimiter: "use X instead of whitespace for field delimiter"
    field: "replace the numbers in these input fields (default=1)\\nsee FIELDS below"
    format: "use printf style floating-point FORMAT;\\nsee FORMAT below for details"
    from: "auto-scale input numbers to UNITs; default is 'none';\\nsee UNIT below"
    from_unit: "specify the input unit size (instead of the default 1)"
    grouping: "use locale-defined grouping of digits, e.g. 1,000,000\\n(which means it has no effect in the C/POSIX locale)"
    header: "[=N]     print (without converting) the first N header lines;\\nN defaults to 1 if not specified"
    invalid: "failure mode for invalid numbers: MODE can be:\\nabort (default), fail, warn, ignore"
    padding: "pad the output to N characters; positive N will\\nright-align; negative N will left-align;\\npadding is ignored if the output is wider than N;\\nthe default is to automatically pad if a whitespace\\nis found"
    round: "use METHOD for rounding when scaling; METHOD can be:\\nup, down, from-zero (default), towards-zero, nearest"
    suffix: "add SUFFIX to output numbers, and accept optional\\nSUFFIX in input numbers"
    to: "auto-scale output numbers to UNITs; see UNIT below"
    to_unit: "the output unit size (instead of the default 1)"
    zero_terminated: "line delimiter is NUL, not newline"
    first_mth_field: "from first to M'th field (inclusive)"
    autoscaling_done_trigger: "no auto-scaling is done; suffixes will trigger an error"
    auto: "accept optional single/two letter suffix:\\n1K = 1000,\\n1Ki = 1024,\\n1M = 1000000,\\n1Mi = 1048576,"
    si: "accept optional single letter suffix:\\n1K = 1000,\\n1M = 1000000,\\n..."
    iec: "accept optional single letter suffix:\\n1K = 1024,\\n1M = 1048576,\\n..."
    iec_i: "accept optional two-letter suffix:\\n1Ki = 1024,\\n1Mi = 1048576,\\n..."
    nth_field_end: "from N'th field, to end of line"
    n_m: "from N'th to M'th field (inclusive)"
  }
  output {
    File out_stdout = stdout()
  }
}