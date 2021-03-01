version 1.0

task SrfDumpAll {
  input {
    Int? chunk_types_allowed
    File? distinations_output_tothe
    Int? filter_apply_match
    Boolean? output_at_bottom
    Boolean? output_number_only
    String? type_output_only
    Boolean? print_verbose_messages
    String archive_name
  }
  command <<<
    srf_dump_all \
      ~{archive_name} \
      ~{if defined(chunk_types_allowed) then ("-c " +  '"' + chunk_types_allowed + '"') else ""} \
      ~{if defined(distinations_output_tothe) then ("-d " +  '"' + distinations_output_tothe + '"') else ""} \
      ~{if defined(filter_apply_match) then ("-f " +  '"' + filter_apply_match + '"') else ""} \
      ~{if (output_at_bottom) then "-n" else ""} \
      ~{if (output_number_only) then "-o" else ""} \
      ~{if defined(type_output_only) then ("-t " +  '"' + type_output_only + '"') else ""} \
      ~{if (print_verbose_messages) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chunk_types_allowed: "Chunk types to output given as a comma delimited list of types.\\nThe following types are allowed: \\\"all\\\", \\\"seq\\\", \\\"prb\\\",\\n\\\"int\\\", \\\"nse\\\", \\\"sig2\\\".\\nThe default is \\\"all\\\"."
    distinations_output_tothe: "Distinations to output to.\\nThe following types are allowed: \\\"console\\\", \\\"file\\\", \\\"none\\\".\\nThe default is \\\"console\\\".  Console and file can be together,\\nbut none is exclusive."
    filter_apply_match: "The filter to apply to reads in the archive.  If reads match the\\nfilter they are dumped.\\nThe filter takes the form of <name>=<value>, where <name> can be\\n\\\"read\\\", \\\"prefix\\\", \\\"file\\\".\\nIf the <name> is \\\"read\\\" the value is represents the name of a\\nread to dump.  Only the matching read will be dumped.\\nIf the <name> is \\\"prefix\\\" the value is represents the prefix of\\nthe name of the reads to dump.  Only the matching reads will be\\ndumped.\\nIf the <name> is \\\"file\\\" the value is a file name where any\\nnumber of \\\"read\\\" and \\\"prefix\\\" name value pairs can be included,\\none per line.\\nThe default is no filter, which means all reads are dumped."
    output_at_bottom: "Output the total number of reads at the bottom."
    output_number_only: "Output the total number of reads only.  Nothing else is output."
    type_output_only: "Type of output.  Only one value allowed.\\nCurrently \\\"text\\\" and \\\"solexa\\\" is supported.\\nThe default is \\\"text\\\"."
    print_verbose_messages: "Print verbose messages."
    archive_name: ""
  }
  output {
    File out_stdout = stdout()
    File out_distinations_output_tothe = "${in_distinations_output_tothe}"
  }
}