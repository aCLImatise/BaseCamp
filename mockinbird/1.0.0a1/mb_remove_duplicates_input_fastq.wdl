version 1.0

task MbRemoveDuplicatesInputFastq {
  input {
    Boolean? verbose
    String output_fast_q
  }
  command <<<
    mb-remove-duplicates input_fastq \
      ~{output_fast_q} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: ""
    output_fast_q: ""
  }
}