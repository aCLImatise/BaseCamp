class: CommandLineTool
id: ruby.cwl
inputs:
- id: in_specify_record_separator
  doc: '[octal]       specify record separator (\0, if no argument)'
  type: boolean
  inputBinding:
    prefix: '-0'
- id: in_autosplit_mode_n
  doc: autosplit mode with -n or -p (splits $_ into $F)
  type: boolean
  inputBinding:
    prefix: -a
- id: in_check_syntax_only
  doc: check syntax only
  type: boolean
  inputBinding:
    prefix: -c
- id: in_c_directory
  doc: cd to directory before executing your script
  type: boolean
  inputBinding:
    prefix: -Cdirectory
- id: in_debug
  doc: set debugging flags (set $DEBUG to true)
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_s_allowed_omit
  doc: "'command'    one line of script. Several -e's allowed. Omit [programfile]"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_eex
  doc: "[:in], --encoding=ex[:in]\nspecify the default external and internal character\
    \ encodings"
  type: boolean
  inputBinding:
    prefix: -Eex
- id: in_f_pattern
  doc: split() pattern for autosplit (-a)
  type: boolean
  inputBinding:
    prefix: -Fpattern
- id: in_edit_argv_files
  doc: '[extension]   edit ARGV files in place (make backup if extension supplied)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_i_directory
  doc: specify $LOAD_PATH directory (may be used more than once)
  type: boolean
  inputBinding:
    prefix: -Idirectory
- id: in_enable_line_processing
  doc: enable line ending processing
  type: boolean
  inputBinding:
    prefix: -l
- id: in_assume_loop_script
  doc: assume 'while gets(); ... end' loop around your script
  type: boolean
  inputBinding:
    prefix: -n
- id: in_assume_loop_n
  doc: assume loop like -n but print line also like sed
  type: boolean
  inputBinding:
    prefix: -p
- id: in_r_library
  doc: require the library before executing your script
  type: boolean
  inputBinding:
    prefix: -rlibrary
- id: in_enable_switch_parsing
  doc: enable some switch parsing for switches after script name
  type: boolean
  inputBinding:
    prefix: -s
- id: in_look_script_using
  doc: look for the script using PATH environment variable
  type: boolean
  inputBinding:
    prefix: -S
- id: in_turn_tainting_checks
  doc: '[level=1]     turn on tainting checks'
  type: boolean
  inputBinding:
    prefix: -T
- id: in_verbose
  doc: print version number, then turn on verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_turn_warnings_script
  doc: turn warnings on for your script
  type: boolean
  inputBinding:
    prefix: -w
- id: in_set_level_verbose
  doc: '[level=2]     set warning level; 0=silence, 1=medium, 2=verbose'
  type: boolean
  inputBinding:
    prefix: -W
- id: in_strip_text_ruby
  doc: '[directory]   strip off text before #!ruby line and perhaps cd to directory'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_copyright
  doc: print the copyright
  type: boolean
  inputBinding:
    prefix: --copyright
- id: in_enable
  doc: "[,...], --disable=feature[,...]\nenable or disable features"
  type: string
  inputBinding:
    prefix: --enable
- id: in_external_encoding
  doc: specify the default external or internal character encoding
  type: string
  inputBinding:
    prefix: --external-encoding
- id: in_gems
  doc: 'rubygems (default: enabled)'
  type: string
  inputBinding:
    position: 0
- id: in_ruby_opt
  doc: 'RUBYOPT environment variable (default: enabled)'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ruby
