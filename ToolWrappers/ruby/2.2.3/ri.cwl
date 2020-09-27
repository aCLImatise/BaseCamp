class: CommandLineTool
id: ri.cwl
inputs:
- id: in__interactive_interactive
  doc: ", --[no-]interactive           In interactive mode you can repeatedly\nlook\
    \ up methods with autocomplete."
  type: boolean
  inputBinding:
    prefix: -i
- id: in__show_documentation
  doc: ', --[no-]all                   Show all documentation for a class or'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_synonym__nopager
  doc: Synonym for --no-pager
  type: boolean
  inputBinding:
    prefix: -T
- id: in_width
  doc: Set the width of the output.
  type: string
  inputBinding:
    prefix: --width
- id: in_server
  doc: "[PORT]              Run RDoc server on the given port.\nThe default port is\
    \ 8214."
  type: boolean
  inputBinding:
    prefix: --server
- id: in_format
  doc: "Uses the selected formatter. The default\nformatter is bs for paged output\
    \ and ansi\notherwise. Valid formatters are:\nansi bs markdown rdoc"
  type: string
  inputBinding:
    prefix: --format
- id: in_doc_dir
  doc: "List of directories from which to source\ndocumentation in addition to the\
    \ standard\ndirectories.  May be repeated."
  type: string
  inputBinding:
    prefix: --doc-dir
- id: in_no_standard_docs
  doc: "Do not include documentation from\nthe Ruby standard library, site_lib,\n\
    installed gems, or ~/.rdoc.\nUse with --doc-dir"
  type: boolean
  inputBinding:
    prefix: --no-standard-docs
- id: in_dump
  doc: Dumps data from an ri cache or data file
  type: File
  inputBinding:
    prefix: --dump
- id: in_module_dot
  doc: -l, --[no-]list                  List classes ri knows about.
  type: string
  inputBinding:
    position: 0
- id: in_library_dot
  doc: Defaults to true.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ri
