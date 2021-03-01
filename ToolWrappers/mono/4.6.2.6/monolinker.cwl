class: CommandLineTool
id: monolinker.cwl
inputs:
- id: in_about
  doc: About the Mono CIL Linker
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_out
  doc: Specify the output directory, default to `output'
  type: Directory?
  inputBinding:
    prefix: -out
- id: in_action_core_assemblies
  doc: Action on the core assemblies, skip, copy or link, default to skip
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_action_per_assembly
  doc: Action per assembly
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_add_new_step
  doc: Add a new step to the pipeline.
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_add_directory_look
  doc: Add a directory where the linker will look for assemblies
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_generate_debug_symbols
  doc: Generate debug symbols for each linked module (true or false)
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_generate_new_guid
  doc: Generate a new unique guid for each linked module (true or false)
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_list_assemblies_copy
  doc: "List of i18n assemblies to copy to the output directory\nseparated with a\
    \ comma: none,all,cjk,mideast,other,rare,west\ndefault is all"
  type: Directory?
  inputBinding:
    prefix: -l
- id: in_link_xml_descriptor
  doc: Link from an XML descriptor
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_link_list_assemblies
  doc: Link from a list of assemblies
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_link_monoapiinfo_descriptor
  doc: Link from an mono-api-info descriptor
  type: boolean?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Specify the output directory, default to `output'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_list_assemblies_copy
  doc: "List of i18n assemblies to copy to the output directory\nseparated with a\
    \ comma: none,all,cjk,mideast,other,rare,west\ndefault is all"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_list_assemblies_copy)
hints: []
cwlVersion: v1.1
baseCommand:
- monolinker
