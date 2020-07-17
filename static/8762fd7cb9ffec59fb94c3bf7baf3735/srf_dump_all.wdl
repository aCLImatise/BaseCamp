version 1.0

task SrfDumpAll {
  input {
    String? chunk_types_output
    String? distinations_output_following
    String? filter_apply_reads
    Boolean? output_at_bottom
    Boolean? output_number_only
    String? type_output_only
    Boolean? print_verbose_messages
    String archive_name
  }
  command <<<
    srf_dump_all \
      ~{archive_name} \
      ~{if defined(chunk_types_output) then ("-c " +  '"' + chunk_types_output + '"') else ""} \
      ~{if defined(distinations_output_following) then ("-d " +  '"' + distinations_output_following + '"') else ""} \
      ~{if defined(filter_apply_reads) then ("-f " +  '"' + filter_apply_reads + '"') else ""} \
      ~{true="-n" false="" output_at_bottom} \
      ~{true="-o" false="" output_number_only} \
      ~{if defined(type_output_only) then ("-t " +  '"' + type_output_only + '"') else ""} \
      ~{true="-v" false="" print_verbose_messages}
  >>>
  parameter_meta {
    chunk_types_output: "Chunk types to output given as a comma delimited list of types. The following types are allowed: \"all\", \"seq\", \"prb\", \"int\", \"nse\", \"sig2\". The default is \"all\"."
    distinations_output_following: "Distinations to output to. The following types are allowed: \"console\", \"file\", \"none\". The default is \"console\".  Console and file can be together,  but none is exclusive."
    filter_apply_reads: "The filter to apply to reads in the archive.  If reads match the filter they are dumped. The filter takes the form of <name>=<value>, where <name> can be \"read\", \"prefix\", \"file\". If the <name> is \"read\" the value is represents the name of a read to dump.  Only the matching read will be dumped. If the <name> is \"prefix\" the value is represents the prefix of the name of the reads to dump.  Only the matching reads will be dumped. If the <name> is \"file\" the value is a file name where any number of \"read\" and \"prefix\" name value pairs can be included, one per line. The default is no filter, which means all reads are dumped."
    output_at_bottom: "Output the total number of reads at the bottom."
    output_number_only: "Output the total number of reads only.  Nothing else is output."
    type_output_only: "Type of output.  Only one value allowed. Currently \"text\" and \"solexa\" is supported. The default is \"text\"."
    print_verbose_messages: "Print verbose messages."
    archive_name: ""
  }
}