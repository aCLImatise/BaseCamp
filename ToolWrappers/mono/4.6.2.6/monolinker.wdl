version 1.0

task Monolinker {
  input {
    Boolean? about
    Directory? out
    Boolean? action_core_assemblies
    Boolean? action_per_assembly
    Boolean? add_new_step
    Boolean? add_directory_look
    Boolean? generate_debug_symbols
    Boolean? generate_new_guid
    Directory? list_assemblies_copy
    Boolean? link_xml_descriptor
    Boolean? link_list_assemblies
    Boolean? link_monoapiinfo_descriptor
  }
  command <<<
    monolinker \
      ~{if (about) then "--about" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (action_core_assemblies) then "-c" else ""} \
      ~{if (action_per_assembly) then "-p" else ""} \
      ~{if (add_new_step) then "-s" else ""} \
      ~{if (add_directory_look) then "-d" else ""} \
      ~{if (generate_debug_symbols) then "-b" else ""} \
      ~{if (generate_new_guid) then "-g" else ""} \
      ~{if (list_assemblies_copy) then "-l" else ""} \
      ~{if (link_xml_descriptor) then "-x" else ""} \
      ~{if (link_list_assemblies) then "-a" else ""} \
      ~{if (link_monoapiinfo_descriptor) then "-i" else ""}
  >>>
  parameter_meta {
    about: "About the Mono CIL Linker"
    out: "Specify the output directory, default to `output'"
    action_core_assemblies: "Action on the core assemblies, skip, copy or link, default to skip"
    action_per_assembly: "Action per assembly"
    add_new_step: "Add a new step to the pipeline."
    add_directory_look: "Add a directory where the linker will look for assemblies"
    generate_debug_symbols: "Generate debug symbols for each linked module (true or false)"
    generate_new_guid: "Generate a new unique guid for each linked module (true or false)"
    list_assemblies_copy: "List of i18n assemblies to copy to the output directory\\nseparated with a comma: none,all,cjk,mideast,other,rare,west\\ndefault is all"
    link_xml_descriptor: "Link from an XML descriptor"
    link_list_assemblies: "Link from a list of assemblies"
    link_monoapiinfo_descriptor: "Link from an mono-api-info descriptor"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
    Directory out_list_assemblies_copy = "${in_list_assemblies_copy}"
  }
}