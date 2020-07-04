version 1.0

task Bamleftalign {
  input {
    File? fast_a_reference
    Boolean? debug
    Boolean? suppress_output
    String? max_iterations
    Boolean? compressed
    String? bam
    String? data
    String? stream
  }
  command <<<
    bamleftalign \
      ~{bam} \
      ~{data} \
      ~{stream} \
      ~{if defined(fast_a_reference) then ("--fasta-reference " +  '"' + fast_a_reference + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--suppress-output" false="" suppress_output} \
      ~{if defined(max_iterations) then ("--max-iterations " +  '"' + max_iterations + '"') else ""} \
      ~{true="--compressed" false="" compressed}
  >>>
  parameter_meta {
    fast_a_reference: "FASTA reference file to use for realignment (required)"
    debug: "Print debugging information about realignment process"
    suppress_output: "Don't write BAM output stream (for debugging)"
    max_iterations: "Iterate the left-realignment no more than this many times"
    compressed: "Write compressed BAM on stdout, default is uncompressed"
    bam: ""
    data: ""
    stream: ""
  }
}