version 1.0

task Dshrenamereferences {
  input {
    Boolean? about
    Boolean? chr
    Boolean? input_gff_three_file
    File? output_gff_three_file
  }
  command <<<
    dsh_rename_references \
      ~{if (about) then "--about" else ""} \
      ~{if (chr) then "--chr" else ""} \
      ~{if (input_gff_three_file) then "--input-gff3-file" else ""} \
      ~{if (output_gff_three_file) then "--output-gff3-file" else ""}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    chr: "add \\\"chr\\\" to chromosome names [optional]"
    input_gff_three_file: "[class java.io.File]  input GFF3 file, default stdin [optional]"
    output_gff_three_file: "[class java.io.File]  output GFF3 file, default stdout [optional]"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_three_file = "${in_output_gff_three_file}"
  }
}