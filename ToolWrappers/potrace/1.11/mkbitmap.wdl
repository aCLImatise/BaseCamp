version 1.0

task Mkbitmap {
  input {
    Boolean? license
    File? _output_file
    Boolean? no_defaults
    Boolean? invert
    Int? filter
    Boolean? no_filter
    String? blur
    Int? scale
    Boolean? linear
    Boolean? cubic
    Float? threshold
    Boolean? grey
    File? file_dot_dot_dot
  }
  command <<<
    mkbitmap \
      ~{file_dot_dot_dot} \
      ~{if (license) then "--license" else ""} \
      ~{if defined(_output_file) then ("--output " +  '"' + _output_file + '"') else ""} \
      ~{if (no_defaults) then "--nodefaults" else ""} \
      ~{if (invert) then "--invert" else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if (no_filter) then "--nofilter" else ""} \
      ~{if defined(blur) then ("--blur " +  '"' + blur + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if (linear) then "--linear" else ""} \
      ~{if (cubic) then "--cubic" else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (grey) then "--grey" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    license: "- print license info and exit"
    _output_file: "- output to file"
    no_defaults: "- turn off default options"
    invert: "- invert the input (undo 'blackboard' effect)"
    filter: "- apply highpass filter with radius n (default 4)"
    no_filter: "- no highpass filtering"
    blur: "- apply lowpass filter with radius n (default: none)"
    scale: "- scale by integer factor n (default 2)"
    linear: "- use linear interpolation"
    cubic: "- use cubic interpolation (default)"
    threshold: "- set threshold for bilevel conversion (default 0.45)"
    grey: "- no bilevel conversion, output a greymap"
    file_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out__output_file = "${in__output_file}"
  }
}