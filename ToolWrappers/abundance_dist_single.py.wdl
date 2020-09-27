version 1.0

task Abundancedistsinglepy {
  input {
    Int? k
    Boolean? info
    String input_sequence_filename
    String output_histogram_filename
  }
  command <<<
    abundance_dist_single_py \
      ~{input_sequence_filename} \
      ~{output_histogram_filename} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if (info) then "--info" else ""}
  >>>
  parameter_meta {
    k: ""
    info: ""
    input_sequence_filename: "The name of the input FAST[AQ] sequence file."
    output_histogram_filename: "The name of the output histogram file. The columns\\nare: (1) k-mer abundance, (2) k-mer count, (3)\\ncumulative count, (4) fraction of total distinct\\nk-mers."
  }
  output {
    File out_stdout = stdout()
  }
}