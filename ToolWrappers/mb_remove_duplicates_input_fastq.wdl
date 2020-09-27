version 1.0

task MbremoveduplicatesInputFastq {
  input {
    Boolean? verbose
    String output_fast_q
  }
  command <<<
    mb_remove_duplicates input_fastq \
      ~{output_fast_q} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: ""
    output_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}