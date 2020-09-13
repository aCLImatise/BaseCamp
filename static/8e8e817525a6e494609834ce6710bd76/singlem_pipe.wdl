version 1.0

task SinglemPipe {
  input {
    String? sequences
    Boolean? full_help
    Boolean? quiet
    Boolean? debug
  }
  command <<<
    singlem pipe \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    sequences: ") [sequence_file(s) ...]"
    full_help: ""
    quiet: ""
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}