class: CommandLineTool
id: slice2py.cwl
inputs:
- id: in_uname
  doc: Remove any definition for NAME.
  type: boolean?
  inputBinding:
    prefix: -UNAME
- id: in_idir
  doc: Put DIR in the include file search path.
  type: boolean?
  inputBinding:
    prefix: -IDIR
- id: in_print_preprocessor_output
  doc: Print preprocessor output on stdout.
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_output_dir
  doc: Create files in the directory DIR.
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_debug
  doc: Print debug messages.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_depend
  doc: Generate Makefile dependencies.
  type: boolean?
  inputBinding:
    prefix: --depend
- id: in_depend_xml
  doc: Generate dependencies in XML format.
  type: boolean?
  inputBinding:
    prefix: --depend-xml
- id: in_depend_file
  doc: Write dependencies to FILE instead of standard output.
  type: File?
  inputBinding:
    prefix: --depend-file
- id: in_all
  doc: Generate code for Slice definitions in included files.
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_checksum
  doc: Generate checksums for Slice definitions.
  type: boolean?
  inputBinding:
    prefix: --checksum
- id: in_prefix
  doc: Prepend filenames of Python modules with PREFIX.
  type: string?
  inputBinding:
    prefix: --prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_depend_file
  doc: Write dependencies to FILE instead of standard output.
  type: File?
  outputBinding:
    glob: $(inputs.in_depend_file)
hints: []
cwlVersion: v1.1
baseCommand:
- slice2py
