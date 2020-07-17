version 1.0

task MedakaFastrle {
  input {
    Boolean? debug
    Boolean? quiet
    String? block_size
    String input_fastaq_may
  }
  command <<<
    medaka fastrle \
      ~{input_fastaq_may} \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(block_size) then ("--block_size " +  '"' + block_size + '"') else ""}
  >>>
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    block_size: "Block size for hompolymer splitting, e.g. with a value of blocksize=3, AAAA -> A3 A1. (default: 94)"
    input_fastaq_may: "Input fasta/q. may be gzip compressed."
  }
}