version 1.0

task Dshrenamegff3references {
  input {
    Boolean? about
    Boolean? chr
    Boolean? input_gff_three_file
    File? output_gff_three_file
    String dsh_rename_references
  }
  command <<<
    dsh_rename_gff3_references \
      ~{dsh_rename_references} \
      ~{if (about) then "--about" else ""} \
      ~{if (chr) then "--chr" else ""} \
      ~{if (input_gff_three_file) then "--input-gff3-file" else ""} \
      ~{if (output_gff_three_file) then "--output-gff3-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.2--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    chr: "add \\\"chr\\\" to chromosome reference names [optional]"
    input_gff_three_file: "[class java.io.File]  input GFF3 file, default stdin [optional]"
    output_gff_three_file: "[class java.io.File]  output GFF3 file, default stdout [optional]"
    dsh_rename_references: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_three_file = "${in_output_gff_three_file}"
  }
}