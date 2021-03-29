version 1.0

task Dshcompresspaf {
  input {
    Boolean? about
    Boolean? input_paf_file
    File? output_paf_file
    String? args
  }
  command <<<
    dsh_compress_paf \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (input_paf_file) then "--input-paf-file" else ""} \
      ~{if (output_paf_file) then "--output-paf-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.3--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    input_paf_file: "[class java.io.File]  input PAF file, default stdin [optional]"
    output_paf_file: "[class java.io.File]  output PAF file, default stdout [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_paf_file = "${in_output_paf_file}"
  }
}