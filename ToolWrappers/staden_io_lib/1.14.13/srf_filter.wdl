version 1.0

task SrfFilter {
  input {
    Int? chunk_types_output
    Int? sampsmp_mdata_types
    Int? filter_apply_match
    Boolean? exclude_bad_reads
    Int? use_option_add
    Boolean? print_verbose_messages
    Boolean? o
    Boolean? var_7
    String var_input
  }
  command <<<
    srf_filter \
      ~{var_input} \
      ~{if defined(chunk_types_output) then ("-c " +  '"' + chunk_types_output + '"') else ""} \
      ~{if defined(sampsmp_mdata_types) then ("-m " +  '"' + sampsmp_mdata_types + '"') else ""} \
      ~{if defined(filter_apply_match) then ("-f " +  '"' + filter_apply_match + '"') else ""} \
      ~{if (exclude_bad_reads) then "-b" else ""} \
      ~{if defined(use_option_add) then ("-2 " +  '"' + use_option_add + '"') else ""} \
      ~{if (print_verbose_messages) then "-v" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (var_7) then "-C" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  parameter_meta {
    chunk_types_output: "Chunk types to output given as a comma delimited list of types.\\nThe following types are allowed: \\\"ALL\\\", \\\"BASE\\\", \\\"CNF1\\\", \\\"CNF4\\\"\\n\\\"SAMP\\\", \\\"SMP4\\\".\\nThe default is \\\"ALL\\\"."
    sampsmp_mdata_types: "SAMP/SMP4 mdata types to output given as a comma delimited list of types.\\nThe following types are allowed: \\\"ALL\\\", \\\"PROC\\\", \\\"SLXI\\\", \\\"SLXN\\\"\\n\\\"0FAM\\\", \\\"1CY3\\\", \\\"2TXR\\\", \\\"3CY5\\\".\\nThe default is \\\"ALL\\\"."
    filter_apply_match: "The filter to apply to reads in the archive.  If reads match the\\nfilter they are dumped.\\nThe filter takes the form of <name>=<value>, where <name> can be\\n\\\"read\\\", \\\"prefix\\\", \\\"file\\\".\\nIf the <name> is \\\"read\\\" the value is represents the name of a\\nread to dump.  Only the matching read will be dumped.\\nIf the <name> is \\\"prefix\\\" the value is represents the prefix of\\nthe name of the reads to dump.  Only the matching reads will be\\ndumped.\\nIf the <name> is \\\"file\\\" the value is a file name where any\\nnumber of \\\"read\\\" and \\\"prefix\\\" name value pairs can be included,\\none per line.\\nThe default is no filter, which means all reads are dumped."
    exclude_bad_reads: "exclude bad reads using readsFlags bitmask in data block header."
    use_option_add: "use this option to add a Illumina-style REGN chunk."
    print_verbose_messages: "Print verbose messages."
    o: ""
    var_7: ""
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}