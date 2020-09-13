version 1.0

task Qvality {
  input {
    Boolean? help
    String? v
    Int? verbose
    String? s
    Int? epsilon_step
    String? n
    Int? number_of_bins
    String? c
    Int? epsilon_cross_validation
    Boolean? r
    Boolean? reverse
    File? o
    File? output_file
    Boolean? g
    Boolean? generalized
    Boolean? y
    Boolean? tdc_input
    Boolean? d
    Boolean? include_negative
    String target_file
  }
  command <<<
    qvality \
      ~{target_file} \
      ~{if (help) then "--help" else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(epsilon_step) then ("--epsilon-step " +  '"' + epsilon_step + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(number_of_bins) then ("--number-of-bins " +  '"' + number_of_bins + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(epsilon_cross_validation) then ("--epsilon-cross-validation " +  '"' + epsilon_cross_validation + '"') else ""} \
      ~{if (r) then "-r" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (g) then "-g" else ""} \
      ~{if (generalized) then "--generalized" else ""} \
      ~{if (y) then "-Y" else ""} \
      ~{if (tdc_input) then "--tdc-input" else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if (include_negative) then "--include-negative" else ""}
  >>>
  parameter_meta {
    help: "Display this message"
    v: ""
    verbose: "Set verbosity of output: 0=no processing\\ninfo, 5=all, default is 2"
    s: ""
    epsilon_step: "The relative step size used as treshhold\\nbefore cross validation error is calculated"
    n: ""
    number_of_bins: "The number of spline knots used when\\ninterpolating spline function. Default is\\n500."
    c: ""
    epsilon_cross_validation: "The relative crossvalidation step size used\\nas treshhold before ending the iterations"
    r: ""
    reverse: "Indicating that the scoring mechanism is\\nreversed, i.e., that low scores are better\\nthan higher scores"
    o: ""
    output_file: "Output results to file instead of stdout"
    g: ""
    generalized: "Generalized target decoy competition,\\nsituations where PSMs known to more\\nfrequently be incorrect are mixed in with\\nthe correct PSMs"
    y: ""
    tdc_input: "Turns off the pi0 correction for search\\nresults from a concatenated database."
    d: ""
    include_negative: "Include negative hits (decoy) probabilities\\nin the results\\n"
    target_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}