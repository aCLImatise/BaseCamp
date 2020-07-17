version 1.0

task Concat {
  input {
    Boolean? specify_directory_where
    Boolean? specify_extension_alignments
    Boolean? prefix
    Boolean? specify_output_file
    Boolean? specify_minimum_number
    String extension
    String linker
  }
  command <<<
    concat \
      ~{extension} \
      ~{linker} \
      ~{true="-f" false="" specify_directory_where} \
      ~{true="-e" false="" specify_extension_alignments} \
      ~{true="--Prefix" false="" prefix} \
      ~{true="-o" false="" specify_output_file} \
      ~{true="-N" false="" specify_minimum_number}
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
}