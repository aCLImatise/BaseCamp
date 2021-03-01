class: CommandLineTool
id: ucpp.cwl
inputs:
- id: in_keep_comments_output
  doc: keep comments in output
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_keep_when_recognized
  doc: keep '#' when no cpp directive is recognized
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_do_emit_line_numbers
  doc: do not emit line numbers
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_lg
  doc: emit gcc-like line numbers
  type: boolean?
  inputBinding:
    prefix: -lg
- id: in_cc
  doc: disable C++-like comments
  type: boolean?
  inputBinding:
    prefix: -CC
- id: in_na
  doc: handle (or not) assertions
  type: boolean?
  inputBinding:
    prefix: -na
- id: in_disable_macros_extra
  doc: disable macros with extra arguments
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_understand_utf_
  doc: understand UTF-8 in source
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_enable_u_y
  doc: enable -a, -u and -Y
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_c_nine_zero
  doc: mimic C90 behaviour
  type: boolean?
  inputBinding:
    prefix: -c90
- id: in_disable_trigraph_support
  doc: disable trigraph support
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_wt
  doc: emit a final warning when trigaphs are encountered
  type: boolean?
  inputBinding:
    prefix: -wt
- id: in_wtt
  doc: emit warnings for each trigaph encountered
  type: boolean?
  inputBinding:
    prefix: -wtt
- id: in_wa
  doc: emit warnings that are usually useless
  type: boolean?
  inputBinding:
    prefix: -wa
- id: in_w_zero
  doc: disable standard warnings
  type: boolean?
  inputBinding:
    prefix: -w0
- id: in_add__before_standard_include_path
  doc: add 'directory' before the standard include path
  type: Directory?
  inputBinding:
    prefix: -I
- id: in_add__after_standard_include_path
  doc: add 'directory' after the standard include path
  type: Directory?
  inputBinding:
    prefix: -J
- id: in_zi
  doc: do not use the standard include path
  type: boolean?
  inputBinding:
    prefix: -zI
- id: in_emit_makefilelike_dependencies
  doc: emit Makefile-like dependencies instead of normal output
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_ma
  doc: emit also dependancies for system files
  type: boolean?
  inputBinding:
    prefix: -Ma
- id: in_store_output_file
  doc: store output in file
  type: File?
  inputBinding:
    prefix: -o
- id: in_u_macro
  doc: undefine 'macro'
  type: boolean?
  inputBinding:
    prefix: -Umacro
- id: in_a_foo
  doc: (bar)      assert foo(bar)
  type: boolean?
  inputBinding:
    prefix: -Afoo
- id: in_b_foo
  doc: (bar)      unassert foo(bar)
  type: boolean?
  inputBinding:
    prefix: -Bfoo
- id: in_predefine_systemdependant_macros
  doc: predefine system-dependant macros
  type: boolean?
  inputBinding:
    prefix: -Y
- id: in_predefine_special_macros
  doc: do not predefine special macros
  type: boolean?
  inputBinding:
    prefix: -Z
- id: in_emit_defined_macros
  doc: emit defined macros
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_emit_assertions
  doc: emit assertions
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_print_version_number
  doc: print version number and settings
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_store_output_file
  doc: store output in file
  type: File?
  outputBinding:
    glob: $(inputs.in_store_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- ucpp
