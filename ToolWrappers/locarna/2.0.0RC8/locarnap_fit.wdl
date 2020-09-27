version 1.0

task LocarnapFit {
  input {
    Boolean? verbose
    Float? delta
    Float? beta
    Boolean? once_on
    Boolean? all_values
    File? penalties
  }
  command <<<
    locarnap_fit \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if (once_on) then "--once-on" else ""} \
      ~{if (all_values) then "--all-values" else ""} \
      ~{if defined(penalties) then ("--penalties " +  '"' + penalties + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Verbose"
    delta: "(0.5)\\nPenalty for state change"
    beta: "(6)\\nInverse temperature"
    once_on: "Fit a signal that is on only once"
    all_values: "Show all function values of signal (instead of only ranges)"
    penalties: "Input penalty file with sequence of numbers"
  }
  output {
    File out_stdout = stdout()
  }
}