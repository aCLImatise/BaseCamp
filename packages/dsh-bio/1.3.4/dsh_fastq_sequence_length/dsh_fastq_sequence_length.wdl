version 1.0

task Dshfastqsequencelength {
  input {
    Boolean? about
    Boolean? fast_q_file
    File? sequence_length_file
    String? args
  }
  command <<<
    dsh_fastq_sequence_length \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (fast_q_file) then "--fastq-file" else ""} \
      ~{if (sequence_length_file) then "--sequence-length-file" else ""}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    fast_q_file: "[class java.io.File]  input FASTQ file, default stdin [optional]"
    sequence_length_file: "[class java.io.File]  output file of sequence lengths, default stdout [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_sequence_length_file = "${in_sequence_length_file}"
  }
}