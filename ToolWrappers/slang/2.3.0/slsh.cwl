class: CommandLineTool
id: slsh.cwl
inputs:
- id: in_execute_slang_code
  doc: Execute 'string' as S-Lang code
  type: string
  inputBinding:
    prefix: -e
- id: in_compile_debugging_code
  doc: Compile with debugging code, tracebacks, etc
  type: boolean
  inputBinding:
    prefix: -g
- id: in_load_init_file
  doc: Don't load personal init file
  type: boolean
  inputBinding:
    prefix: -n
- id: in_in_it
  doc: Use this file instead of ~/.slshrc
  type: File
  inputBinding:
    prefix: --init
- id: in_no_readline
  doc: Do not use readline
  type: boolean
  inputBinding:
    prefix: --no-readline
- id: in_force_interactive_input
  doc: Force interactive input
  type: boolean
  inputBinding:
    prefix: -i
- id: in_quiet
  doc: Do not print startup messages
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_test_mode_slshmain
  doc: Test mode.  If slsh_main exists, do not call it
  type: boolean
  inputBinding:
    prefix: -t
- id: in_show_verbose_messages
  doc: Show verbose loading messages
  type: boolean
  inputBinding:
    prefix: -v
- id: in_d_name
  doc: "Define \"name\" as a preprocessor symbol\nNote: - and -i are mutually exclusive"
  type: boolean
  inputBinding:
    prefix: -Dname
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- slsh
