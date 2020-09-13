version 1.0

task Monoapiinfo {
  input {
    Boolean? abi
    Boolean? follow_forwarders
    Directory? search_directory
    File? read_register_assembly
    File? output_file_specified
  }
  command <<<
    mono_api_info \
      ~{if (abi) then "--abi" else ""} \
      ~{if (follow_forwarders) then "--follow-forwarders" else ""} \
      ~{if defined(search_directory) then ("--search-directory " +  '"' + search_directory + '"') else ""} \
      ~{if defined(read_register_assembly) then ("-r " +  '"' + read_register_assembly + '"') else ""} \
      ~{if defined(output_file_specified) then ("-o " +  '"' + output_file_specified + '"') else ""}
  >>>
  parameter_meta {
    abi: "Generate ABI, not API; contains only classes with\\ninstance fields which are not [NonSerialized]."
    follow_forwarders: "Follow type forwarders."
    search_directory: "Check for assembly references in DIRECTORY."
    read_register_assembly: "Read and register the file ASSEMBLY, and add the\\ndirectory containing ASSEMBLY to the search path."
    output_file_specified: "The output file. If not specified the output will\\nbe written to stdout."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_specified = "${in_output_file_specified}"
  }
}