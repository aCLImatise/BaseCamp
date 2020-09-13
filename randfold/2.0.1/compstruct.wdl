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
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    in_format: ": specify that both alignments are in format <s> (SELEX, for instance)"
    quiet: ": suppress verbose header (used in regression testing)"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}