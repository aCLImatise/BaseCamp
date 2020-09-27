class: CommandLineTool
id: jshell.cwl
inputs:
- id: in_class_path
  doc: Specify where to find user class files
  type: File
  inputBinding:
    prefix: --class-path
- id: in_module_path
  doc: Specify where to find application modules
  type: File
  inputBinding:
    prefix: --module-path
- id: in_add_modules
  doc: "(,<module>)*\nSpecify modules to resolve, or all modules on the\nmodule path\
    \ if <module> is ALL-MODULE-PATHs"
  type: File
  inputBinding:
    prefix: --add-modules
- id: in_enable_preview
  doc: Allow code to depend on preview features of this release
  type: boolean
  inputBinding:
    prefix: --enable-preview
- id: in_startup
  doc: One run replacement for the startup definitions
  type: File
  inputBinding:
    prefix: --startup
- id: in_no_startup
  doc: Do not run the startup definitions
  type: boolean
  inputBinding:
    prefix: --no-startup
- id: in_feedback
  doc: "Specify the initial feedback mode. The mode may be\npredefined (silent, concise,\
    \ normal, or verbose) or\npreviously user-defined"
  type: string
  inputBinding:
    prefix: --feedback
- id: in_quiet_feedback_same
  doc: 'Quiet feedback.  Same as: --feedback concise'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_really_quiet_feedback
  doc: 'Really quiet feedback.  Same as: --feedback silent'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_verbose_feedback_same
  doc: 'Verbose feedback.  Same as: --feedback verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_flag_pass_flag
  doc: "<flag>              Pass <flag> directly to the runtime system.\nUse one -J\
    \ for each runtime flag or flag argument"
  type: boolean
  inputBinding:
    prefix: -J
- id: in_flag_pass_remote
  doc: "<flag>              Pass <flag> to the remote runtime system.\nUse one -R\
    \ for each remote flag or flag argument"
  type: boolean
  inputBinding:
    prefix: -R
- id: in_flag_pass_compileruse
  doc: "<flag>              Pass <flag> to the compiler.\nUse one -C for each compiler\
    \ flag or flag argument"
  type: boolean
  inputBinding:
    prefix: -C
- id: in_show_version
  doc: Print version information and continue
  type: boolean
  inputBinding:
    prefix: --show-version
- id: in_help_extra
  doc: Print help on non-standard options and exit
  type: boolean
  inputBinding:
    prefix: --help-extra
- id: in_load_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jshell
