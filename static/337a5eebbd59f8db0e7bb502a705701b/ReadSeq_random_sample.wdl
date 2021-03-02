version 1.0

task ReadSeqRandomsample {
  input {
    Int? num_selection
    Int? subregion_length
    String resample_seq_file
  }
  command <<<
    ReadSeq random_sample \
      ~{resample_seq_file} \
      ~{if defined(num_selection) then ("--num-selection " +  '"' + num_selection + '"') else ""} \
      ~{if defined(subregion_length) then ("--subregion_length " +  '"' + subregion_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    num_selection: "number of sequence to select for each sample. Default is the smallest sample size. Limit\\nto the default value."
    subregion_length: "If specified, radomly choose a subregion with the required length from the sequence.  If\\na selected sequence is shorter than the specified length, that sequence will not be\\nincluded in the output,  which may result in not equal number of sequences in some\\nsamples."
    resample_seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}