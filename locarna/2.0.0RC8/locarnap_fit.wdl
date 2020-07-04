version 1.0

task LocarnapFit {
  input {
    Boolean? once_on
    Boolean? all_values
    File? penalties
  }
  command <<<
    locarnap_fit \
      ~{true="--once-on" false="" once_on} \
      ~{true="--all-values" false="" all_values} \
      ~{if defined(penalties) then ("--penalties " +  '"' + penalties + '"') else ""}
  >>>
  parameter_meta {
    once_on: "Fit a signal that is on only once"
    all_values: "Show all function values of signal (instead of only ranges)"
    penalties: "Input penalty file with sequence of numbers"
  }
}