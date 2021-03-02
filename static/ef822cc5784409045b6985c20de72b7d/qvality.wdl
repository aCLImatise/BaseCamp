version 1.0

task Qvality {
  input {
    Int? verbose
    Int? epsilon_step
    Int? number_of_bins
    Int? epsilon_cross_validation
    Boolean? reverse
    File? output_file
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
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (generalized) then "--generalized" else ""} \
      ~{if (tdc_input) then "--tdc-input" else ""} \
      ~{if (include_negative) then "--include-negative" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Set verbosity of output: 0=no processing\\ninfo, 5=all, default is 2"
    epsilon_step: "The relative step size used as treshhold\\nbefore cross validation error is calculated"
    number_of_bins: "The number of spline knots used when\\ninterpolating spline function. Default is\\n500."
    epsilon_cross_validation: "The relative crossvalidation step size used\\nas treshhold before ending the iterations"
    reverse: "Indicating that the scoring mechanism is\\nreversed, i.e., that low scores are better\\nthan higher scores"
    output_file: "Output results to file instead of stdout"
    generalized: "Generalized target decoy competition,\\nsituations where PSMs known to more\\nfrequently be incorrect are mixed in with\\nthe correct PSMs"
    tdc_input: "Turns off the pi0 correction for search\\nresults from a concatenated database."
    include_negative: "Include negative hits (decoy) probabilities\\nin the results\\n"
    target_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}