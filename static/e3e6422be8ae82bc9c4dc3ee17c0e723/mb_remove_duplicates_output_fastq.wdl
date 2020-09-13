version 1.0

task MbremoveduplicatesOutputFastq {
  input {
    Boolean? verbose
    String mb_remove_duplicates
    String input_fast_q
    String output_fast_q
  }
  command <<<
    mb_remove_duplicates output_fastq \
      ~{mb_remove_duplicates} \
      ~{input_fast_q} \
      ~{output_fast_q} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: ""
    mb_remove_duplicates: ""
    input_fast_q: ""
    output_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}