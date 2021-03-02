class: CommandLineTool
id: rmic.cwl
inputs:
- id: in_invalid_option_argument
  doc: an invalid option or argument.
  type: string?
  inputBinding:
    prefix: -h
- id: in_keep
  doc: Do not delete intermediate generated source files
  type: boolean?
  inputBinding:
    prefix: -keep
- id: in_keep_generated
  doc: (same as "-keep")
  type: boolean?
  inputBinding:
    prefix: -keepgenerated
- id: in_v_one_dot_one
  doc: Create stubs/skeletons for 1.1 stub protocol version (deprecated)
  type: boolean?
  inputBinding:
    prefix: -v1.1
- id: in_v_compat
  doc: "Create stubs/skeletons compatible with both\n1.1 and 1.2 stub protocol versions\
    \ (deprecated)"
  type: boolean?
  inputBinding:
    prefix: -vcompat
- id: in_v_one_dot_two
  doc: (default) Create stubs for 1.2 stub protocol version only (deprecated)
  type: boolean?
  inputBinding:
    prefix: -v1.2
- id: in_generate_debugging_info
  doc: Generate debugging info
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_nowarn
  doc: Generate no warnings
  type: boolean?
  inputBinding:
    prefix: -nowarn
- id: in_no_write
  doc: Do not write compiled classes to the file system
  type: boolean?
  inputBinding:
    prefix: -nowrite
- id: in_verbose
  doc: Output messages about what the compiler is doing
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_classpath
  doc: Specify where to find input class files
  type: File?
  inputBinding:
    prefix: -classpath
- id: in_boot_classpath
  doc: Override location of bootstrap class files
  type: File?
  inputBinding:
    prefix: -bootclasspath
- id: in_specify_where_place
  doc: Specify where to place generated class files
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_runtime_flag_pass
  doc: <runtime flag>       Pass argument to the java interpreter
  type: boolean?
  inputBinding:
    prefix: -J
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_class_names
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rmic
