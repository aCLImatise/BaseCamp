version 1.0

task Dshcompressgaf {
  input {
    Boolean? about
    Boolean? input_gaf_file
    File? output_gaf_file
    String? args
  }
  command <<<
    dsh_compress_gaf \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (input_gaf_file) then "--input-gaf-file" else ""} \
      ~{if (output_gaf_file) then "--output-gaf-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.3--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    input_gaf_file: "[class java.io.File]  input GAF file, default stdin [optional]"
    output_gaf_file: "[class java.io.File]  output GAF file, default stdout [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_gaf_file = "${in_output_gaf_file}"
  }
}