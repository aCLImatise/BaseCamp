version 1.0

task LorikeetKmer {
  input {
    Boolean? full_help
    Boolean? verbose
    String? reference
    String? flags
  }
  command <<<
    lorikeet kmer \
      ~{flags} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    full_help: ""
    verbose: ""
    reference: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}