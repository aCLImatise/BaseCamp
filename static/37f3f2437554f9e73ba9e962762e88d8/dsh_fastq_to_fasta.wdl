version 1.0

task Dshfastqtofasta {
  input {
    Boolean? about
    Boolean? input_fast_q_file
    File? output_fast_a_file
    String? args
  }
  command <<<
    dsh_fastq_to_fasta \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (input_fast_q_file) then "--input-fastq-file" else ""} \
      ~{if (output_fast_a_file) then "--output-fasta-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.2--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    input_fast_q_file: "[class java.io.File]  input FASTQ file, default stdin [optional]"
    output_fast_a_file: "[class java.io.File]  output FASTA file, default stdout [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fast_a_file = "${in_output_fast_a_file}"
  }
}