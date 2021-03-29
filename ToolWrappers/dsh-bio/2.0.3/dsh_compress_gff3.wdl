version 1.0

task Dshcompressgff3 {
  input {
    Boolean? about
    Boolean? input_gff_three_file
    File? output_gff_three_file
    String? args
  }
  command <<<
    dsh_compress_gff3 \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (input_gff_three_file) then "--input-gff3-file" else ""} \
      ~{if (output_gff_three_file) then "--output-gff3-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.3--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    input_gff_three_file: "[class java.io.File]  input GFF3 file, default stdin [optional]"
    output_gff_three_file: "[class java.io.File]  output GFF3 file, default stdout [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_three_file = "${in_output_gff_three_file}"
  }
}