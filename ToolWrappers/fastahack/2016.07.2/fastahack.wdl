version 1.0

task Fastahack {
  input {
    Boolean? index
    String? region
    Boolean? stdin
    Boolean? entropy
    Boolean? dump
    String fast_a_reference
  }
  command <<<
    fastahack \
      ~{fast_a_reference} \
      ~{if (index) then "--index" else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (stdin) then "--stdin" else ""} \
      ~{if (entropy) then "--entropy" else ""} \
      ~{if (dump) then "--dump" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index: "generate fasta index <fasta reference>.fai"
    region: "print the specified region"
    stdin: "read a stream of line-delimited region specifiers on stdin\\nand print the corresponding sequence for each on stdout"
    entropy: "print the shannon entropy of the specified region"
    dump: "print the fasta file in the form 'seq_name <tab> sequence'"
    fast_a_reference: ""
  }
  output {
    File out_stdout = stdout()
  }
}