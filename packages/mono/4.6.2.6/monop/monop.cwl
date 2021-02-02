class: CommandLineTool
id: monop.cwl
inputs:
- id: in_declared_only
  doc: Only show members declared in the Type
  type: boolean
  inputBinding:
    prefix: --declared-only
- id: in_filter_obsolete
  doc: Do not show obsolete types and members
  type: boolean
  inputBinding:
    prefix: --filter-obsolete
- id: in_private
  doc: Show private members
  type: boolean
  inputBinding:
    prefix: --private
- id: in_refs
  doc: Print a list of the referenced assemblies for an assembly
  type: boolean
  inputBinding:
    prefix: --refs
- id: in_runtime_version
  doc: Print runtime version
  type: boolean
  inputBinding:
    prefix: --runtime-version
- id: in_search
  doc: Search through all known namespaces
  type: boolean
  inputBinding:
    prefix: --search
- id: in_xi
  doc: Set search style to Xamarin.iOS
  type: boolean
  inputBinding:
    prefix: --xi
- id: in_x_a
  doc: Set search style to Xamarin.Android
  type: boolean
  inputBinding:
    prefix: --xa
- id: in_shows_types_declare
  doc: Shows all the types declare in the specified assembly
  type: boolean
  inputBinding:
    prefix: --a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- monop
