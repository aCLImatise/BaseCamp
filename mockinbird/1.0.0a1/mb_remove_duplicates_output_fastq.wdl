version 1.0

task MbRemoveDuplicatesOutputFastq {
  input {
    Boolean? verbose
    String mb_remove_duplicates
    String input_fast_q
    String output_fast_q
  }
  command <<<
    mb-remove-duplicates output_fastq \
      ~{mb_remove_duplicates} \
      ~{input_fast_q} \
      ~{output_fast_q} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: ""
    mb_remove_duplicates: ""
    input_fast_q: ""
    output_fast_q: ""
  }
}