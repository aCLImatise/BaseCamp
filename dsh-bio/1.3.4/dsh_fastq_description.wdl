version 1.0

task Dshfastqdescription {
  input {
    Boolean? about
    Boolean? fast_q_file
    File? description_file
    String? args
  }
  command <<<
    dsh_fastq_description \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (fast_q_file) then "--fastq-file" else ""} \
      ~{if (description_file) then "--description-file" else ""}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    fast_q_file: "[class java.io.File]  input FASTQ file, default stdin [optional]"
    description_file: "[class java.io.File]  output file of description lines, default stdout [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_description_file = "${in_description_file}"
  }
}