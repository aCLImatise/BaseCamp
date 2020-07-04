version 1.0

task Mkbitmap {
  input {
    Boolean? license
    File? _output_file
    Boolean? no_defaults
    Boolean? invert
    String? filter
    Boolean? no_filter
    String? blur
    String? scale
    Boolean? linear
    Boolean? cubic
    String? threshold
    Boolean? grey
    File? file_dot_dot_dot
  }
  command <<<
    mkbitmap \
      ~{file_dot_dot_dot} \
      ~{true="--license" false="" license} \
      ~{if defined(_output_file) then ("--output " +  '"' + _output_file + '"') else ""} \
      ~{true="--nodefaults" false="" no_defaults} \
      ~{true="--invert" false="" invert} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{true="--nofilter" false="" no_filter} \
      ~{if defined(blur) then ("--blur " +  '"' + blur + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{true="--linear" false="" linear} \
      ~{true="--cubic" false="" cubic} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{true="--grey" false="" grey}
  >>>
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
}