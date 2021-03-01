version 1.0

task Propmapped {
  input {
    File? input_file_containing
    File? name_including_statistics
    Boolean? specified_fragments_read
    Boolean? specified_only_properly
  }
  command <<<
    propmapped \
      ~{if defined(input_file_containing) then ("-i " +  '"' + input_file_containing + '"') else ""} \
      ~{if defined(name_including_statistics) then ("-o " +  '"' + name_including_statistics + '"') else ""} \
      ~{if (specified_fragments_read) then "-f" else ""} \
      ~{if (specified_only_properly) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_containing: "An input file containing read mapping results. Both SAM or BAM\\nformats are supported."
    name_including_statistics: "Name of output file including mapping statistics."
    specified_fragments_read: "If specified, fragments (read pairs) will be counted instead of\\nindividual reads. This option is only applicable for paired-end\\nreads."
    specified_only_properly: "If specified, only properly paired reads will be counted. This\\noption is only applicable for paired-end reads.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_including_statistics = "${in_name_including_statistics}"
  }
}