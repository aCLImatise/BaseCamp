version 1.0

task Dshextractfastqbylength {
  input {
    Boolean? about
    Boolean? input_fast_q_file
    File? output_fast_q_file
    Boolean? minimum_length
    Boolean? maximum_length
    String? args
  }
  command <<<
    dsh_extract_fastq_by_length \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (input_fast_q_file) then "--input-fastq-file" else ""} \
      ~{if (output_fast_q_file) then "--output-fastq-file" else ""} \
      ~{if (minimum_length) then "--minimum-length" else ""} \
      ~{if (maximum_length) then "--maximum-length" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.3--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    input_fast_q_file: "[class java.io.File]  input FASTQ file, default stdin [optional]"
    output_fast_q_file: "[class java.io.File]  output FASTQ file, default stdout [optional]"
    minimum_length: "[class java.lang.Integer]  minimum sequence length, inclusive [required]"
    maximum_length: "[class java.lang.Integer]  maximum sequence length, exclusive [required]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fast_q_file = "${in_output_fast_q_file}"
  }
}