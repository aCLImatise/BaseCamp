version 1.0

task SrfFilter {
  input {
    String? chunk_types_output
    String? sampsmp_mdata_types
    String? filter_apply_reads
    Boolean? exclude_bad_reads
    String? use_option_add
    Boolean? print_verbose_messages
    Boolean? var_6
    Boolean? o
    String var_input
  }
  command <<<
    srf_filter \
      ~{var_input} \
      ~{if defined(chunk_types_output) then ("-c " +  '"' + chunk_types_output + '"') else ""} \
      ~{if defined(sampsmp_mdata_types) then ("-m " +  '"' + sampsmp_mdata_types + '"') else ""} \
      ~{if defined(filter_apply_reads) then ("-f " +  '"' + filter_apply_reads + '"') else ""} \
      ~{true="-b" false="" exclude_bad_reads} \
      ~{if defined(use_option_add) then ("-2 " +  '"' + use_option_add + '"') else ""} \
      ~{true="-v" false="" print_verbose_messages} \
      ~{true="-C" false="" var_6} \
      ~{true="-o" false="" o}
  >>>
  parameter_meta {
    chunk_types_output: "Chunk types to output given as a comma delimited list of types. The following types are allowed: \"ALL\", \"BASE\", \"CNF1\", \"CNF4\" \"SAMP\", \"SMP4\". The default is \"ALL\"."
    sampsmp_mdata_types: "SAMP/SMP4 mdata types to output given as a comma delimited list of types. The following types are allowed: \"ALL\", \"PROC\", \"SLXI\", \"SLXN\" \"0FAM\", \"1CY3\", \"2TXR\", \"3CY5\". The default is \"ALL\"."
    filter_apply_reads: "The filter to apply to reads in the archive.  If reads match the filter they are dumped. The filter takes the form of <name>=<value>, where <name> can be \"read\", \"prefix\", \"file\". If the <name> is \"read\" the value is represents the name of a read to dump.  Only the matching read will be dumped. If the <name> is \"prefix\" the value is represents the prefix of the name of the reads to dump.  Only the matching reads will be dumped. If the <name> is \"file\" the value is a file name where any number of \"read\" and \"prefix\" name value pairs can be included, one per line. The default is no filter, which means all reads are dumped."
    exclude_bad_reads: "exclude bad reads using readsFlags bitmask in data block header."
    use_option_add: "use this option to add a Illumina-style REGN chunk."
    print_verbose_messages: "Print verbose messages."
    var_6: ""
    o: ""
    var_input: ""
  }
}