version 1.0

task Propmapped {
  input {
    File? input_file_containing
    File? name_output_file
    Boolean? specified_fragments_read
    Boolean? specified_only_properly
  }
  command <<<
    propmapped \
      ~{if defined(input_file_containing) then ("-i " +  '"' + input_file_containing + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if (specified_fragments_read) then "-f" else ""} \
      ~{if (specified_only_properly) then "-p" else ""}
  >>>
  parameter_meta {
    input_file_containing: "An input file containing read mapping results. Both SAM or BAM\\nformats are supported."
    name_output_file: "Name of output file including mapping statistics."
    specified_fragments_read: "If specified, fragments (read pairs) will be counted instead of\\nindividual reads. This option is only applicable for paired-end\\nreads."
    specified_only_properly: "If specified, only properly paired reads will be counted. This\\noption is only applicable for paired-end reads.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}