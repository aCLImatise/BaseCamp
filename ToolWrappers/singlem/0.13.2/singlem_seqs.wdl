version 1.0

task SinglemSeqs {
  input {
    Int? alignment_type
    Boolean? debug
    Boolean? quiet
    Boolean? full_help
    Int? window_size
  }
  command <<<
    singlem seqs \
      ~{if defined(alignment_type) then ("--alignment_type " +  '"' + alignment_type + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""}
  >>>
  parameter_meta {
    alignment_type: "[--window_size INT]"
    debug: "output debug information"
    quiet: "only output errors"
    full_help: "display all help options"
    window_size: "Number of nucleotides to use in continuous window"
  }
  output {
    File out_stdout = stdout()
  }
}