version 1.0

task RunMusiccpy {
  input {
    File? out
    String? input_format
    File? output_format
    Boolean? normalize
    String? correct
    Boolean? performance
    Boolean? verbose
  }
  command <<<
    run_musicc_py \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(input_format) then ("--input_format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output_format " +  '"' + output_format + '"') else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if defined(correct) then ("--correct " +  '"' + correct + '"') else ""} \
      ~{if (performance) then "--performance" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    out: "Output destination for corrected abundance (default:\\nMUSiCC.tab)"
    input_format: "Option indicating the format of the input file\\n(default: tab)"
    output_format: "Option indicating the format of the output file\\n(default: tab)"
    normalize: "Apply MUSiCC normalization (default: false)"
    correct: "Correct abundance per-sample using MUSiCC (default:\\nfalse)"
    performance: "Calculate model performance on various gene sets (may\\nadd to running time) (default: false)"
    verbose: "Increase verbosity of module (default: false)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_output_format = "${in_output_format}"
  }
}