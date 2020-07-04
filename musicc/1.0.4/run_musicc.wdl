version 1.0

task RunMusicc.py {
  input {
    String? out
    String? input_format
    String? output_format
    Boolean? normalize
    String? correct
    Boolean? performance
    Boolean? verbose
    String input_file
  }
  command <<<
    run_musicc.py \
      ~{input_file} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(input_format) then ("--input_format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output_format " +  '"' + output_format + '"') else ""} \
      ~{true="--normalize" false="" normalize} \
      ~{if defined(correct) then ("--correct " +  '"' + correct + '"') else ""} \
      ~{true="--performance" false="" performance} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    out: "Output destination for corrected abundance (default: MUSiCC.tab)"
    input_format: "Option indicating the format of the input file (default: tab)"
    output_format: "Option indicating the format of the output file (default: tab)"
    normalize: "Apply MUSiCC normalization (default: false)"
    correct: "Correct abundance per-sample using MUSiCC (default: false)"
    performance: "Calculate model performance on various gene sets (may add to running time) (default: false)"
    verbose: "Increase verbosity of module (default: false)"
    input_file: "Input abundance file to correct"
  }
}