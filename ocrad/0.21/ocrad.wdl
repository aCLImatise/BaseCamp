version 1.0

task Ocrad {
  input {
    Boolean? append
    String? charset
    String? filter
    Boolean? force
    String? format
    Boolean? invert
    Boolean? layout
    File? place_output_file
    Boolean? quiet
    Boolean? scale
    String? transform
    Boolean? threshold
    Boolean? cut
    Boolean? verbose
    File? export
    File? files
  }
  command <<<
    ocrad \
      ~{files} \
      ~{true="--append" false="" append} \
      ~{if defined(charset) then ("--charset " +  '"' + charset + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--invert" false="" invert} \
      ~{true="--layout" false="" layout} \
      ~{if defined(place_output_file) then ("--output " +  '"' + place_output_file + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--scale" false="" scale} \
      ~{if defined(transform) then ("--transform " +  '"' + transform + '"') else ""} \
      ~{true="--threshold" false="" threshold} \
      ~{true="--cut" false="" cut} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(export) then ("--export " +  '"' + export + '"') else ""}
  >>>
  parameter_meta {
    append: "append text to output file"
    charset: "try `--charset=help' for a list of names"
    filter: "try `--filter=help' for a list of names"
    force: "force overwrite of output file"
    format: "output format (byte, utf8)"
    invert: "invert image levels (white on black)"
    layout: "perform layout analysis"
    place_output_file: "place the output into <file>"
    quiet: "suppress all messages"
    scale: "=[-]<n>       scale input image by [1/]<n>"
    transform: "try `--transform=help' for a list of names"
    threshold: "=<n%>     threshold for binarization (0-100%)"
    cut: "=<l,t,w,h>      cut input image by given rectangle"
    verbose: "be verbose"
    export: "export OCR Results File to <file>"
    files: ""
  }
}