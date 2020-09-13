version 1.0

task LocarnapFit {
  input {
    Boolean? var_0
    Float? beta
    Boolean? once_on
    Boolean? all_values
    File? penalties
    String ddeltafloat
  }
  command <<<
    locarnap_fit \
      ~{ddeltafloat} \
      ~{if (var_0) then "--verbose" else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if (once_on) then "--once-on" else ""} \
      ~{if (all_values) then "--all-values" else ""} \
      ~{if defined(penalties) then ("--penalties " +  '"' + penalties + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    beta: "(6)\\nInverse temperature"
    once_on: "Fit a signal that is on only once"
    all_values: "Show all function values of signal (instead of only ranges)"
    penalties: "Input penalty file with sequence of numbers"
    ddeltafloat: "-d,--delta=<float>(0.5)"
  }
  output {
    File out_stdout = stdout()
  }
}