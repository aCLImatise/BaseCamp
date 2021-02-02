version 1.0

task Dumbbench {
  input {
    Float? precision
    Int? abs_precision
    Boolean? verbose
    Int? initial
    Int? maxiter
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
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(abs_precision) then ("--absprecision " +  '"' + abs_precision + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(initial) then ("--initial " +  '"' + initial + '"') else ""} \
      ~{if defined(maxiter) then ("--maxiter " +  '"' + maxiter + '"') else ""} \
      ~{if defined(dry_run) then ("--dry-run " +  '"' + dry_run + '"') else ""} \
      ~{if (no_dry_run) then "--no-dry-run" else ""} \
      ~{if (raw) then "--raw" else ""} \
      ~{if (numbers_will_printed) then "--float" else ""} \
      ~{if (std) then "--std" else ""} \
      ~{if (code) then "--code" else ""} \
      ~{if (package) then "--package" else ""} \
      ~{if (tablex_output_timings) then "--t" else ""} \
      ~{if (pin_frequency) then "--pin-frequency" else ""}
  >>>
  parameter_meta {
    precision: "Set the target precision (default: 0.10=10%)"
    abs_precision: "Set the target absolute precision (default: 0)"
    verbose: "Increase verbosity. Increases up to three times."
    initial: "Set number of initial timing runs (default: 20)"
    maxiter: "Set a hard maximum number of iterations (default:1000)"
    dry_run: "Set explicit dry-run command or code."
    no_dry_run: "Disable subtraction of dry runs."
    raw: "Set raw output mode. Only the final count will be"
    numbers_will_printed: "Numbers will be printed in"
    std: "Use the standard deviation instead of the MAD as a"
    code: "='code'     Benchmarks Perl code (can be specified multiple times"
    package: "='package' Perl package of subroutines to benchmark. The"
    tablex_output_timings: "|table=X       Output timings as a data table suitable for R. Each"
    pin_frequency: "Advanced option (Linux only): Attempt to use 'sudo'"
  }
  output {
    File out_stdout = stdout()
  }
}