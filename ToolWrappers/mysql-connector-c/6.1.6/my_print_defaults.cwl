class: CommandLineTool
id: my_print_defaults.cwl
inputs:
- id: in_config_file
  doc: "Deprecated, please use --defaults-file instead. Name of\nconfig file to read;\
    \ if no extension is given, default\nextension (e.g., .ini or .cnf) will be added"
  type: File
  inputBinding:
    prefix: --config-file
- id: in_defaults_file
  doc: "Like --config-file, except: if first option, then read\nthis file only, do\
    \ not read global or per-user config\nfiles; should be the first option"
  type: File
  inputBinding:
    prefix: --defaults-file
- id: in_defaults_extra_file
  doc: "Read this file after the global config file and before\nthe config file in\
    \ the users home directory; should be\nthe first option"
  type: File
  inputBinding:
    prefix: --defaults-extra-file
- id: in_defaults_group_suffix
  doc: "In addition to the given groups, read also groups with\nthis suffix"
  type: string
  inputBinding:
    prefix: --defaults-group-suffix
- id: in_extra_file
  doc: Deprecated. Synonym for --defaults-extra-file.
  type: File
  inputBinding:
    prefix: --extra-file
- id: in_no_defaults
  doc: "Ignore reading of default option file(s), except for\nlogin file."
  type: boolean
  inputBinding:
    prefix: --no-defaults
- id: in_login_path
  doc: Path to be read from under the login file.
  type: File
  inputBinding:
    prefix: --login-path
- id: in_verbose
  doc: Increase the output level
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_groups
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- my_print_defaults
