version 1.0

task ReadSeqRandomSample {
  input {
    String? num_selection
    String? subregion_length
    String resample_seq_file
  }
  command <<<
    ReadSeq random-sample \
      ~{resample_seq_file} \
      ~{if defined(num_selection) then ("--num-selection " +  '"' + num_selection + '"') else ""} \
      ~{if defined(subregion_length) then ("--subregion_length " +  '"' + subregion_length + '"') else ""}
  >>>
  parameter_meta {
    num_selection: "number of sequence to select for each sample. Default is the smallest sample size. Limit to the default value."
    subregion_length: "If specified, radomly choose a subregion with the required length from the sequence.  If a selected sequence is shorter than the specified length, that sequence will not be included in the output,  which may result in not equal number of sequences in some samples."
    resample_seq_file: ""
  }
}