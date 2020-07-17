version 1.0

task Compstruct {
  input {
    String? in_format
    Boolean? quiet
    Boolean? options
  }
  command <<<
    compstruct \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    in_format: ": specify that both alignments are in format <s> (SELEX, for instance)"
    quiet: ": suppress verbose header (used in regression testing)"
    options: ""
  }
}