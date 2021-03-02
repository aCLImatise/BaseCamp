version 1.0

task Dshrenamebedreferences {
  input {
    Boolean? about
    Boolean? chr
    Boolean? input_bed_file
    File? output_bed_file
  }
  command <<<
    dsh_rename_bed_references \
      ~{if (about) then "--about" else ""} \
      ~{if (chr) then "--chr" else ""} \
      ~{if (input_bed_file) then "--input-bed-file" else ""} \
      ~{if (output_bed_file) then "--output-bed-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.2--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    chr: "add \\\"chr\\\" to chromosome reference names [optional]"
    input_bed_file: "[class java.io.File]  input BED file, default stdin [optional]"
    output_bed_file: "[class java.io.File]  output BED file, default stdout [optional]"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}