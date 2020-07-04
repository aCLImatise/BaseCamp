version 1.0

task Propmapped {
  input {
    String? input_file_containing
    String? name_output_file
    Boolean? specified_fragments_read
    Boolean? specified_only_properly
  }
  command <<<
    propmapped \
      ~{if defined(input_file_containing) then ("-i " +  '"' + input_file_containing + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{true="-f" false="" specified_fragments_read} \
      ~{true="-p" false="" specified_only_properly}
  >>>
  parameter_meta {
    input_file_containing: "An input file containing read mapping results. Both SAM or BAM formats are supported."
    name_output_file: "Name of output file including mapping statistics."
    specified_fragments_read: "If specified, fragments (read pairs) will be counted instead of individual reads. This option is only applicable for paired-end reads."
    specified_only_properly: "If specified, only properly paired reads will be counted. This option is only applicable for paired-end reads."
  }
}