class: CommandLineTool
id: mono_api_info.cwl
inputs:
- id: in_abi
  doc: "Generate ABI, not API; contains only classes with\ninstance fields which are\
    \ not [NonSerialized]."
  type: boolean
  inputBinding:
    prefix: --abi
- id: in_follow_forwarders
  doc: Follow type forwarders.
  type: boolean
  inputBinding:
    prefix: --follow-forwarders
- id: in_search_directory
  doc: Check for assembly references in DIRECTORY.
  type: Directory
  inputBinding:
    prefix: --search-directory
- id: in_read_register_assembly
  doc: "Read and register the file ASSEMBLY, and add the\ndirectory containing ASSEMBLY\
    \ to the search path."
  type: File
  inputBinding:
    prefix: -r
- id: in_output_file_specified
  doc: "The output file. If not specified the output will\nbe written to stdout."
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_specified
  doc: "The output file. If not specified the output will\nbe written to stdout."
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_specified)
cwlVersion: v1.1
baseCommand:
- mono-api-info
