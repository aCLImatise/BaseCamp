version 1.0

task Dshcompressbed {
  input {
    Boolean? about
    Boolean? input_bed_file
    File? output_bed_file
    String? args
  }
  command <<<
    dsh_compress_bed \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (input_bed_file) then "--input-bed-file" else ""} \
      ~{if (output_bed_file) then "--output-bed-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.3--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    input_bed_file: "[class java.io.File]  input BED file, default stdin [optional]"
    output_bed_file: "[class java.io.File]  output BED file, default stdout [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}