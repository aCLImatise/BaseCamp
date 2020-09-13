version 1.0

task Fftwlwisdom {
  input {
    Boolean? verbose
    Boolean? canonical
    Int? time_limit
    File? output_file
    Boolean? measure
    Boolean? estimate
    Boolean? exhaustive
    Boolean? no_system_wisdom
    File? wisdom_file
    String? threads
    String? sizes
  }
  command <<<
    fftwl_wisdom \
      ~{sizes} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (canonical) then "--canonical" else ""} \
      ~{if defined(time_limit) then ("--time-limit " +  '"' + time_limit + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (measure) then "--measure" else ""} \
      ~{if (estimate) then "--estimate" else ""} \
      ~{if (exhaustive) then "--exhaustive" else ""} \
      ~{if (no_system_wisdom) then "--no-system-wisdom" else ""} \
      ~{if defined(wisdom_file) then ("--wisdom-file " +  '"' + wisdom_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    verbose: ": verbose output"
    canonical: ": plan/optimize canonical set of sizes"
    time_limit: ": time limit in hours (default: 0, no limit)"
    output_file: ": output to FILE instead of stdout"
    measure: ": plan in MEASURE mode (PATIENT is default)"
    estimate: ": plan in ESTIMATE mode (not recommended)"
    exhaustive: ": plan in EXHAUSTIVE mode (may be slow)"
    no_system_wisdom: ": don't read /etc/fftw/ system wisdom file"
    wisdom_file: ": read wisdom from FILE (stdin if -)"
    threads: ": plan with N threads"
    sizes: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}