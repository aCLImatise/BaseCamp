class: CommandLineTool
id: pm_which.cwl
inputs:
- id: in_quiet
  doc: Just print paths
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_paths
  doc: Just convert the module name into a relative path
  type: boolean
  inputBinding:
    prefix: --paths
- id: in_all
  doc: Print all paths, not just the first one found
  type: boolean
  inputBinding:
    prefix: --all
- id: in_namespace
  doc: all modules in the given namespace
  type: string
  inputBinding:
    prefix: --namespace
- id: in_only_print_module
  doc: Only print module names, not paths
  type: boolean
  inputBinding:
    prefix: -m
- id: in_show_module_version
  doc: Show module version
  type: boolean
  inputBinding:
    prefix: -V
- id: in_add_path_search
  doc: Add a path to search (like perl -I)
  type: File
  inputBinding:
    prefix: -I
- id: in_dump
  doc: Dump paths that would be searched (@INC by default)
  type: boolean
  inputBinding:
    prefix: --dump
- id: in_var_8
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_add
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_only
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_returns
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_show
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_module
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_print
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_names
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_search
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_given
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pm_which
