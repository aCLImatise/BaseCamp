version 1.0

task Dshfastatofastq {
  input {
    Boolean? about
    Boolean? input_fast_a_file
    File? output_fast_q_file
    Boolean? quality
    String? args
  }
  command <<<
    dsh_fasta_to_fastq \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (input_fast_a_file) then "--input-fasta-file" else ""} \
      ~{if (output_fast_q_file) then "--output-fastq-file" else ""} \
      ~{if (quality) then "--quality" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    about: "display about message [optional]"
    input_fast_a_file: "[class java.io.File]  input FASTA file, default stdin [optional]"
    output_fast_q_file: "[class java.io.File]  output FASTQ file, default stdout [optional]"
    quality: "[class java.lang.Integer]  quality score for FASTQ, [0..93], default 40 [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fast_q_file = "${in_output_fast_q_file}"
  }
}