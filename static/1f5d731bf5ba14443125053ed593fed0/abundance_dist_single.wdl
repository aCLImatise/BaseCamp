version 1.0

task AbundanceDistSingle.py {
  input {
    Boolean? info
    String? k
    String input_sequence_filename
    String output_histogram_filename
  }
  command <<<
    abundance-dist-single.py \
      ~{input_sequence_filename} \
      ~{output_histogram_filename} \
      ~{true="--info" false="" info} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  parameter_meta {
    info: ""
    k: ""
    input_sequence_filename: "The name of the input FAST[AQ] sequence file."
    output_histogram_filename: "The name of the output histogram file. The columns are: (1) k-mer abundance, (2) k-mer count, (3) cumulative count, (4) fraction of total distinct k-mers."
  }
}