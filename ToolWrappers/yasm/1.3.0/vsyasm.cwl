class: CommandLineTool
id: ../../../vsyasm.cwl
inputs:
- id: in_license
  doc: show license text
  type: boolean
  inputBinding:
    prefix: --license
- id: in_arch
  doc: select architecture (list with -a help)
  type: string
  inputBinding:
    prefix: --arch
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_parser
  doc: select parser (list with -p help)
  type: string
  inputBinding:
    prefix: --parser
- id: in_var_4
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_preproc
  doc: select preprocessor (list with -r help)
  type: string
  inputBinding:
    prefix: --preproc
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: in_o_format
  doc: select object format (list with -f help)
  type: string
  inputBinding:
    prefix: --oformat
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_d_format
  doc: select debugging format (list with -g help)
  type: string
  inputBinding:
    prefix: --dformat
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_l_format
  doc: select list format (list with -L help)
  type: string
  inputBinding:
    prefix: --lformat
- id: in_var_12
  doc: ''
  type: string
  inputBinding:
    prefix: -L
- id: in_list
  doc: name of list-file output directory
  type: File
  inputBinding:
    prefix: --list
- id: in_var_14
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_objdir
  doc: name of object-file output directory
  type: File
  inputBinding:
    prefix: --objdir
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_map_dir
  doc: name of map-file output directory
  type: File
  inputBinding:
    prefix: --mapdir
- id: in_list_ext
  doc: list-file extension (default `lst')
  type: File
  inputBinding:
    prefix: --listext
- id: in_objext
  doc: object-file extension (default is by object format)
  type: File
  inputBinding:
    prefix: --objext
- id: in_map_ext
  doc: map-file extension (default `map')
  type: File
  inputBinding:
    prefix: --mapext
- id: in_machine
  doc: select machine (list with -m help)
  type: string
  inputBinding:
    prefix: --machine
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_force_strict
  doc: treat all sized operands as if `strict' was used
  type: boolean
  inputBinding:
    prefix: --force-strict
- id: in_inhibits_warning_messages
  doc: inhibits warning messages
  type: boolean
  inputBinding:
    prefix: -w
- id: in_enablesdisables_warning
  doc: enables/disables warning
  type: boolean
  inputBinding:
    prefix: -W
- id: in_redirect_error_messages_file
  doc: redirect error messages to file
  type: File
  inputBinding:
    prefix: -E
- id: in_redirect_error_messages_stdout
  doc: redirect error messages to stdout
  type: boolean
  inputBinding:
    prefix: -s
- id: in_var_28
  doc: add include path
  type: File
  inputBinding:
    prefix: -i
- id: in_var_29
  doc: add include path
  type: File
  inputBinding:
    prefix: -I
- id: in_preinclude_file
  doc: pre-include file
  type: File
  inputBinding:
    prefix: -P
- id: in_var_31
  doc: <macro[=value]>      pre-define a macro, optionally to value
  type: boolean
  inputBinding:
    prefix: -d
- id: in_var_32
  doc: <macro[=value]>      pre-define a macro, optionally to value
  type: boolean
  inputBinding:
    prefix: -D
- id: in_var_33
  doc: undefine a macro
  type: string
  inputBinding:
    prefix: -u
- id: in_var_34
  doc: undefine a macro
  type: string
  inputBinding:
    prefix: -U
- id: in_select_errorwarning_gnu
  doc: select error/warning message style (`gnu' or `vc')
  type: string
  inputBinding:
    prefix: -X
- id: in_prefix
  doc: prepend argument to name of all external symbols
  type: string
  inputBinding:
    prefix: --prefix
- id: in_suffix
  doc: append argument to name of all external symbols
  type: string
  inputBinding:
    prefix: --suffix
- id: in_postfix
  doc: append argument to name of all external symbols
  type: string
  inputBinding:
    prefix: --postfix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_list
  doc: name of list-file output directory
  type: File
  outputBinding:
    glob: $(inputs.in_list)
- id: out_objdir
  doc: name of object-file output directory
  type: File
  outputBinding:
    glob: $(inputs.in_objdir)
- id: out_map_dir
  doc: name of map-file output directory
  type: File
  outputBinding:
    glob: $(inputs.in_map_dir)
cwlVersion: v1.1
baseCommand:
- vsyasm
