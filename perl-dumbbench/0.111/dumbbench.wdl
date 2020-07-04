version 1.0

task Dumbbench {
  input {
    String? abs_precision
    Boolean? verbose
    String? initial
    String? maxiter
    String? dry_run
    Boolean? no_dry_run
    Boolean? raw
    Boolean? numbers_will_printed
    Boolean? std
    Boolean? code
    Boolean? package
    Boolean? tablex_output_timings
    Boolean? pin_frequency
  }
  command <<<
    dumbbench \
      ~{if defined(abs_precision) then ("--absprecision " +  '"' + abs_precision + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(initial) then ("--initial " +  '"' + initial + '"') else ""} \
      ~{if defined(maxiter) then ("--maxiter " +  '"' + maxiter + '"') else ""} \
      ~{if defined(dry_run) then ("--dry-run " +  '"' + dry_run + '"') else ""} \
      ~{true="--no-dry-run" false="" no_dry_run} \
      ~{true="--raw" false="" raw} \
      ~{true="--float" false="" numbers_will_printed} \
      ~{true="--std" false="" std} \
      ~{true="--code" false="" code} \
      ~{true="--package" false="" package} \
      ~{true="--t" false="" tablex_output_timings} \
      ~{true="--pin-frequency" false="" pin_frequency}
  >>>
  parameter_meta {
    abs_precision: "Set the target absolute precision (default: 0) Set to 0 to disable."
    verbose: "Increase verbosity. Increases up to three times."
    initial: "Set number of initial timing runs (default: 20) Increase, not decrease this number if possible."
    maxiter: "Set a hard maximum number of iterations (default:1000) If this hard limit is hit, the precision is off."
    dry_run: "Set explicit dry-run command or code."
    no_dry_run: "Disable subtraction of dry runs."
    raw: "Set raw output mode. Only the final count will be printed to stdout."
    numbers_will_printed: "Numbers will be printed in default float format instead of scientific notation."
    std: "Use the standard deviation instead of the MAD as a measure of variability."
    code: "='code'     Benchmarks Perl code (can be specified multiple times for multiple benchmarks)"
    package: "='package' Perl package of subroutines to benchmark. The package must define get_subs_to_benchmark() that returns a list of subroutine names to benchmark"
    tablex_output_timings: "|table=X       Output timings as a data table suitable for R. Each column of timings is headed by the code name."
    pin_frequency: "Advanced option (Linux only): Attempt to use 'sudo' to pin the CPU frequency on CPUs that can do dynamic frequency scaling. This improves accuracy, but relies on a hardcoded location in the /sys/ filesystem. Use at your own risk."
  }
}