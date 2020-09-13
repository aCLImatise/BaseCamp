version 1.0

task Bamleftalign {
  input {
    File? fast_a_reference
    Boolean? debug
    Boolean? suppress_output
    Int? max_iterations
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
      ~{if (debug) then "--debug" else ""} \
      ~{if (suppress_output) then "--suppress-output" else ""} \
      ~{if defined(max_iterations) then ("--max-iterations " +  '"' + max_iterations + '"') else ""} \
      ~{if (compressed) then "--compressed" else ""}
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
  output {
    File out_stdout = stdout()
  }
}