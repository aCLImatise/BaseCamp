class: CommandLineTool
id: yasm.cwl
inputs:
- id: in_license
  doc: show license text
  type: boolean?
  inputBinding:
    prefix: --license
- id: in_arch
  doc: select architecture (list with -a help)
  type: string?
  inputBinding:
    prefix: --arch
- id: in_parser
  doc: select parser (list with -p help)
  type: string?
  inputBinding:
    prefix: --parser
- id: in_preproc
  doc: select preprocessor (list with -r help)
  type: string?
  inputBinding:
    prefix: --preproc
- id: in_o_format
  doc: select object format (list with -f help)
  type: string?
  inputBinding:
    prefix: --oformat
- id: in_d_format
  doc: select debugging format (list with -g help)
  type: string?
  inputBinding:
    prefix: --dformat
- id: in_l_format
  doc: select list format (list with -L help)
  type: string?
  inputBinding:
    prefix: --lformat
- id: in_list
  doc: name of list-file output
  type: File?
  inputBinding:
    prefix: --list
- id: in_objfile
  doc: name of object-file output
  type: File?
  inputBinding:
    prefix: --objfile
- id: in_map_file
  doc: name of map-file output
  type: File?
  inputBinding:
    prefix: --mapfile
- id: in_machine
  doc: select machine (list with -m help)
  type: string?
  inputBinding:
    prefix: --machine
- id: in_force_strict
  doc: treat all sized operands as if `strict' was used
  type: string?
  inputBinding:
    prefix: --force-strict
- id: in_inhibits_warning_messages
  doc: inhibits warning messages
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_enablesdisables_warning
  doc: enables/disables warning
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_generate_makefile_dependencies
  doc: generate Makefile dependencies on stdout
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_redirect_error_messages_file
  doc: redirect error messages to file
  type: File?
  inputBinding:
    prefix: -E
- id: in_redirect_error_messages_stdout
  doc: redirect error messages to stdout
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_preproc_only
  doc: preprocess only (writes output to stdout by default)
  type: boolean?
  inputBinding:
    prefix: --preproc-only
- id: in_var_18
  doc: add include path
  type: File?
  inputBinding:
    prefix: -i
- id: in_var_19
  doc: add include path
  type: File?
  inputBinding:
    prefix: -I
- id: in_preinclude_file
  doc: pre-include file
  type: File?
  inputBinding:
    prefix: -P
- id: in_var_21
  doc: <macro[=value]>      pre-define a macro, optionally to value
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_var_22
  doc: <macro[=value]>      pre-define a macro, optionally to value
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_var_23
  doc: undefine a macro
  type: string?
  inputBinding:
    prefix: -u
- id: in_var_24
  doc: undefine a macro
  type: string?
  inputBinding:
    prefix: -U
- id: in_select_errorwarning_message
  doc: select error/warning message style (`gnu' or `vc')
  type: string?
  inputBinding:
    prefix: -X
- id: in_prefix
  doc: prepend argument to name of all external symbols
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_suffix
  doc: append argument to name of all external symbols
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_postfix
  doc: append argument to name of all external symbols
  type: string?
  inputBinding:
    prefix: --postfix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_list
  doc: name of list-file output
  type: File?
  outputBinding:
    glob: $(inputs.in_list)
- id: out_objfile
  doc: name of object-file output
  type: File?
  outputBinding:
    glob: $(inputs.in_objfile)
- id: out_map_file
  doc: name of map-file output
  type: File?
  outputBinding:
    glob: $(inputs.in_map_file)
hints: []
cwlVersion: v1.1
baseCommand:
- yasm
