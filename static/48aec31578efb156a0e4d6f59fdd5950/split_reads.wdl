version 1.0

task SplitReads {
  input {
    Boolean? arg_length_prefixsuffix
    Boolean? single_end
  }
  command <<<
    split-reads \
      ~{true="-l" false="" arg_length_prefixsuffix} \
      ~{true="--single-end" false="" single_end}
  >>>
  parameter_meta {
    arg_length_prefixsuffix: "[ --split_length ] arg (=35) Length of prefix/suffix to be extracted."
    single_end: "Process single end reads (instead of paired  end)."
  }
}