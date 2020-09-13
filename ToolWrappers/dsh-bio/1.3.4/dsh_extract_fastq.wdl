version 1.0

task Dshextractfastq {
  input {
    Boolean? about
    Boolean? input_fast_q_file
    File? output_fast_q_file
    Boolean? name
    Boolean? description
    String? args
  }
  command <<<
    dsh_extract_fastq \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (input_fast_q_file) then "--input-fastq-file" else ""} \
      ~{if (output_fast_q_file) then "--output-fastq-file" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (description) then "--description" else ""}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_fast_q_file: "[class java.io.File]  input FASTQ file, default stdin [optional]"
    output_fast_q_file: "[class java.io.File]  output FASTQ file, default stdout [optional]"
    name: "[class java.lang.String]  exact sequence name to match [optional]"
    description: "[class java.lang.String]  FASTQ description regex pattern to match [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fast_q_file = "${in_output_fast_q_file}"
  }
}