class: CommandLineTool
id: perl.cwl
inputs:
- id: in_specify_record_separator
  doc: '[octal]         specify record separator (\0, if no argument)'
  type: boolean?
  inputBinding:
    prefix: '-0'
- id: in_autosplit_mode_p
  doc: autosplit mode with -n or -p (splits $_ into @F)
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_enables_unicode_features
  doc: '[number/list]   enables the listed Unicode features'
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_check_syntax_runs
  doc: check syntax only (runs BEGIN and CHECK blocks)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_run_program_debugger
  doc: '[:debugger]     run program under debugger'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_set_debugging_flags
  doc: '[number/list]   set debugging flags (argument is a bit mask or alphabets)'
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_one_line_program
  doc: one line of program (several -e's allowed, omit programfile)
  type: string?
  inputBinding:
    prefix: -e
- id: in_e_enables_optional
  doc: like -e, but enables all optional features
  type: string?
  inputBinding:
    prefix: -E
- id: in_do_do_sitelibsitecustomizepl
  doc: don't do $sitelib/sitecustomize.pl at startup
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_pattern_split_pattern
  doc: /pattern/       split() pattern for -a switch (//'s are optional)
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_edit_files_place
  doc: '[extension]     edit <> files in place (makes backup if extension supplied)'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_i_directory
  doc: specify @INC/#include directory (several -I's allowed)
  type: boolean?
  inputBinding:
    prefix: -Idirectory
- id: in_enable_line_ending
  doc: '[octal]         enable line ending processing, specifies line terminator'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_assume_loop_program
  doc: assume "while (<>) { ... }" loop around program
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_assume_loop_line
  doc: assume loop like -n but print line also, like sed
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_enable_rudimentary_parsing
  doc: enable rudimentary parsing for switches after programfile
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_look_programfile_using
  doc: look for programfile using PATH environment variable
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_enable_tainting_warnings
  doc: enable tainting warnings
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_enable_tainting_checks
  doc: enable tainting checks
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_dump_core_parsing
  doc: dump core after parsing program
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_allow_unsafe_operations
  doc: allow unsafe operations
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_print_version_patchlevel
  doc: print version, patchlevel and license
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_print_configuration_summary
  doc: '[:variable]     print configuration summary (or a single Config.pm variable)'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_enable_many_warnings
  doc: enable many useful warnings
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_enable_all_warnings
  doc: enable all warnings
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_ignore_text_cd
  doc: '[directory]     ignore text before #!perl line (optionally cd to directory)'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_disable_all_warnings
  doc: disable all warnings
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_switches
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- perl
