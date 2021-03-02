class: CommandLineTool
id: monodocer.cwl
inputs:
- id: in_delete
  doc: Delete removed members from the XML files.
  type: boolean?
  inputBinding:
    prefix: --delete
- id: in_exceptions
  doc: '[=SOURCES] Document potential exceptions that members can'
  type: boolean?
  inputBinding:
    prefix: --exceptions
- id: in_specify_flag_alter
  doc: "Specify a FLAG to alter behavior.  See later -f*\noptions for available flags."
  type: string?
  inputBinding:
    prefix: -f
- id: in_f_ignore_missing_types
  doc: "Do not report an error if a --type=TYPE type\nwas not found."
  type: boolean?
  inputBinding:
    prefix: --fignore-missing-types
- id: in_fno_assembly_versions
  doc: Do not generate //AssemblyVersion elements.
  type: boolean?
  inputBinding:
    prefix: --fno-assembly-versions
- id: in_import
  doc: Import documentation from FILE.
  type: File?
  inputBinding:
    prefix: --import
- id: in_lib
  doc: Check for assembly references in DIRECTORY.
  type: Directory?
  inputBinding:
    prefix: --lib
- id: in_library
  doc: Ignored for compatibility with update-ecma-xml.
  type: string?
  inputBinding:
    prefix: --library
- id: in_out
  doc: Root DIRECTORY to generate/update documentation.
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_search_dependent_assemblies
  doc: "Search for dependent assemblies in the directory\ncontaining ASSEMBLY.\n(Equivalent\
    \ to '-L `dirname ASSEMBLY`'.)"
  type: Directory?
  inputBinding:
    prefix: -r
- id: in_since
  doc: "Manually specify the assembly VERSION that new\nmembers were added in."
  type: string?
  inputBinding:
    prefix: --since
- id: in_type
  doc: Only update documentation for TYPE.
  type: string?
  inputBinding:
    prefix: --type
- id: in_drop_ns
  doc: "When processing assembly ASSEMBLY, strip off\nleading namespace PREFIX:\n\
    e.g. --dropns ASSEMBLY=PREFIX"
  type: string?
  inputBinding:
    prefix: --dropns
- id: in_n_types
  doc: "If the new assembly is switching to 'magic types',\nthen this switch should\
    \ be defined."
  type: boolean?
  inputBinding:
    prefix: --ntypes
- id: in_preserve
  doc: "Do not delete members that don't exist in the\nassembly, but rather mark them\
    \ as preserved."
  type: boolean?
  inputBinding:
    prefix: --preserve
- id: in_multi_assembly
  doc: Allow types to be in multiple assemblies.
  type: boolean?
  inputBinding:
    prefix: --multiassembly
- id: in_api_style
  doc: "Denotes the apistyle. Currently, only `classic`\nand `unified` are supported.\
    \ `classic` set of\nassemblies should be run first, immediately\nfollowed by 'unified'\
    \ assemblies with the `\ndropns` parameter."
  type: string?
  inputBinding:
    prefix: --api-style
- id: in_generate_dot
  doc: 'SOURCES is a comma-separated list of:'
  type: string
  inputBinding:
    position: 0
- id: in_asm
  doc: Method calls in same assembly
  type: string
  inputBinding:
    position: 1
- id: in_dep_asm
  doc: Method calls in dependent assemblies
  type: string
  inputBinding:
    position: 2
- id: in_all
  doc: Record all possible exceptions
  type: string
  inputBinding:
    position: 3
- id: in_added
  doc: "Modifier; only create <exception/>s\nfor NEW types/members"
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- monodocer
