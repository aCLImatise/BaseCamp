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
    Boolean? numbers_printed_format
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
      ~{if (numbers_printed_format) then "--float" else ""} \
      ~{if (std) then "--std" else ""} \
      ~{if (code) then "--code" else ""} \
      ~{if (package) then "--package" else ""} \
      ~{if (tablex_output_timings) then "--t" else ""} \
      ~{if (pin_frequency) then "--pin-frequency" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    precision: "Set the target precision (default: 0.10=10%)\\nSet to 0 to disable."
    abs_precision: "Set the target absolute precision (default: 0)\\nSet to 0 to disable."
    verbose: "Increase verbosity. Increases up to three times."
    initial: "Set number of initial timing runs (default: 20)\\nIncrease, not decrease this number if possible."
    maxiter: "Set a hard maximum number of iterations (default:1000)\\nIf this hard limit is hit, the precision is off."
    dry_run: "Set explicit dry-run command or code."
    no_dry_run: "Disable subtraction of dry runs."
    raw: "Set raw output mode. Only the final count will be\\nprinted to stdout."
    numbers_printed_format: "Numbers will be printed in\\ndefault float format instead of scientific notation."
    std: "Use the standard deviation instead of the MAD as a\\nmeasure of variability."
    code: "='code'     Benchmarks Perl code (can be specified multiple times\\nfor multiple benchmarks)"
    package: "='package' Perl package of subroutines to benchmark. The\\npackage must define get_subs_to_benchmark() that\\nreturns a list of subroutine names to benchmark"
    tablex_output_timings: "|table=X       Output timings as a data table suitable for R. Each\\ncolumn of timings is headed by the code name."
    pin_frequency: "Advanced option (Linux only): Attempt to use 'sudo'\\nto pin the CPU frequency on CPUs that can do dynamic\\nfrequency scaling. This improves accuracy, but relies\\non a hardcoded location in the /sys/ filesystem.\\nUse at your own risk.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}