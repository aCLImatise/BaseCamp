class: CommandLineTool
id: mono_api_html.cwl
inputs:
- id: in_diff
  doc: HTML diff file out output (omit for stdout)
  type: File
  inputBinding:
    prefix: --diff
- id: in_ignore
  doc: "Ignore new, added, and removed members whose\ndescription matches a given\
    \ C# regular\nexpression (see below)."
  type: string
  inputBinding:
    prefix: --ignore
- id: in_ignore_added
  doc: "Ignore added members whose description matches a\ngiven C# regular expression\
    \ (see below)."
  type: string
  inputBinding:
    prefix: --ignore-added
- id: in_ignore_removed
  doc: "Ignore removed members whose description matches a\ngiven C# regular expression\
    \ (see below)."
  type: string
  inputBinding:
    prefix: --ignore-removed
- id: in_ignore_new
  doc: "Ignore new namespaces and types whose description\nmatches a given C# regular\
    \ expression (see below)\n."
  type: string
  inputBinding:
    prefix: --ignore-new
- id: in_ignore_changes_parameter_names
  doc: "Ignore changes to parameter names for identically\nprototyped methods."
  type: boolean
  inputBinding:
    prefix: --ignore-changes-parameter-names
- id: in_ignore_changes_property_setters
  doc: Ignore adding setters to properties.
  type: boolean
  inputBinding:
    prefix: --ignore-changes-property-setters
- id: in_ignore_changes_virtual
  doc: "Ignore changing non-`virtual` to `virtual` or\nadding `override`."
  type: boolean
  inputBinding:
    prefix: --ignore-changes-virtual
- id: in_colorize
  doc: '[=VALUE]     Colorize HTML output'
  type: boolean
  inputBinding:
    prefix: --colorize
- id: in_lax
  doc: Ignore duplicate XML entries
  type: boolean
  inputBinding:
    prefix: --lax
- id: in_reference_dot_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_assembly_dot_xml
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_diff_dot_html
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_diff
  doc: HTML diff file out output (omit for stdout)
  type: File
  outputBinding:
    glob: $(inputs.in_diff)
cwlVersion: v1.1
baseCommand:
- mono-api-html
