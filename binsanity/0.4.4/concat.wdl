version 1.0

task Concat {
  input {
    Boolean? specify_directory_where
    Boolean? specify_extension_alignments
    Boolean? prefix
    File? specify_output_file
    Boolean? specify_minimum_number
    String extension
    String linker
  }
  command <<<
    concat \
      ~{extension} \
      ~{linker} \
      ~{if (specify_directory_where) then "-f" else ""} \
      ~{if (specify_extension_alignments) then "-e" else ""} \
      ~{if (prefix) then "--Prefix" else ""} \
      ~{if (specify_output_file) then "-o" else ""} \
      ~{if (specify_minimum_number) then "-N" else ""}
  >>>
  parameter_meta {
    specify_directory_where: "Specify directory where alignments are"
    specify_extension_alignments: "Specify the extension for your alignments (must be in Fasta format)"
    prefix: "Specify the prefix that links your alignments (ex: if you have two alignments TOBG_RpL10, TOBG_RpL24, the --Prefix would be TOBG"
    specify_output_file: "Specify output file"
    specify_minimum_number: "Specify the minimum number of sequences needed to be included in concatenation"
    extension: ""
    linker: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}