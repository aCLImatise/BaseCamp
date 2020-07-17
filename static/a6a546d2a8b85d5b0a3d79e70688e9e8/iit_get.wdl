version 1.0

task IitGet {
  input {
    String? field
    Boolean? label
    Boolean? coords
    Boolean? an_not_only
    Boolean? sort
    Boolean? unsigned
    Int? flanking
    String? options_dot_dot_dot
    String i_it_file
    String query
  }
  command <<<
    iit_get \
      ~{options_dot_dot_dot} \
      ~{i_it_file} \
      ~{query} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{true="--label" false="" label} \
      ~{true="--coords" false="" coords} \
      ~{true="--annotonly" false="" an_not_only} \
      ~{true="--sort" false="" sort} \
      ~{true="--unsigned" false="" unsigned} \
      ~{if defined(flanking) then ("--flanking " +  '"' + flanking + '"') else ""}
  >>>
  parameter_meta {
    field: "Show given field part of the annotation"
    label: "Interpret query or queries as a label, even if it is numeric"
    coords: "Interpret query or queries as coords"
    an_not_only: "Show annotation lines only (no headers)"
    sort: "Sort results by coordinates"
    unsigned: "Print all intervals as low..high, even those entered as reverse (high < low)"
    flanking: "Show flanking segments on left and right"
    options_dot_dot_dot: ""
    i_it_file: ""
    query: ""
  }
}