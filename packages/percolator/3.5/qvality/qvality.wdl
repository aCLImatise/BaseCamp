version 1.0

task Qvality {
  input {
    Int? verbose
    Int? epsilon_step
    Int? number_of_bins
    Int? epsilon_cross_validation
    Boolean? reverse
    Boolean? generalized
    Boolean? tdc_input
    Boolean? include_negative
    String target_file
  }
  command <<<
    qvality \
      ~{target_file} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(epsilon_step) then ("--epsilon-step " +  '"' + epsilon_step + '"') else ""} \
      ~{if defined(number_of_bins) then ("--number-of-bins " +  '"' + number_of_bins + '"') else ""} \
      ~{if defined(epsilon_cross_validation) then ("--epsilon-cross-validation " +  '"' + epsilon_cross_validation + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (generalized) then "--generalized" else ""} \
      ~{if (tdc_input) then "--tdc-input" else ""} \
      ~{if (include_negative) then "--include-negative" else ""}
  >>>
  parameter_meta {
    verbose: "Set verbosity of output: 0=no processing"
    epsilon_step: "The relative step size used as treshhold"
    number_of_bins: "The number of spline knots used when"
    epsilon_cross_validation: "The relative crossvalidation step size used"
    reverse: "Indicating that the scoring mechanism is"
    generalized: "Generalized target decoy competition,"
    tdc_input: "Turns off the pi0 correction for search"
    include_negative: "Include negative hits (decoy) probabilities"
    target_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}