class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ruby.cwl
inputs:
- id: specify_record_separator
  doc: '[octal]       specify record separator (\0, if no argument)'
  type: boolean
  inputBinding:
    prefix: '-0'
- id: autosplit_mode_n
  doc: autosplit mode with -n or -p (splits $_ into $F)
  type: boolean
  inputBinding:
    prefix: -a
- id: check_syntax_only
  doc: check syntax only
  type: boolean
  inputBinding:
    prefix: -c
- id: c_directory
  doc: cd to directory before executing your script
  type: boolean
  inputBinding:
    prefix: -Cdirectory
- id: debug
  doc: set debugging flags (set $DEBUG to true)
  type: boolean
  inputBinding:
    prefix: --debug
- id: s_allowed_omit
  doc: "'command'    one line of script. Several -e's allowed. Omit [programfile]"
  type: boolean
  inputBinding:
    prefix: -e
- id: eex
  doc: '[:in], --encoding=ex[:in] specify the default external and internal character
    encodings'
  type: boolean
  inputBinding:
    prefix: -Eex
- id: f_pattern
  doc: split() pattern for autosplit (-a)
  type: boolean
  inputBinding:
    prefix: -Fpattern
- id: edit_argv_files
  doc: '[extension]   edit ARGV files in place (make backup if extension supplied)'
  type: boolean
  inputBinding:
    prefix: -i
- id: i_directory
  doc: specify $LOAD_PATH directory (may be used more than once)
  type: boolean
  inputBinding:
    prefix: -Idirectory
- id: enable_line_ending
  doc: enable line ending processing
  type: boolean
  inputBinding:
    prefix: -l
- id: assume_loop_script
  doc: assume 'while gets(); ... end' loop around your script
  type: boolean
  inputBinding:
    prefix: -n
- id: assume_loop_n
  doc: assume loop like -n but print line also like sed
  type: boolean
  inputBinding:
    prefix: -p
- id: r_library
  doc: require the library before executing your script
  type: boolean
  inputBinding:
    prefix: -rlibrary
- id: enable_switch_parsing
  doc: enable some switch parsing for switches after script name
  type: boolean
  inputBinding:
    prefix: -s
- id: look_script_using
  doc: look for the script using PATH environment variable
  type: boolean
  inputBinding:
    prefix: -S
- id: turn_tainting_checks
  doc: '[level=1]     turn on tainting checks'
  type: boolean
  inputBinding:
    prefix: -T
- id: verbose
  doc: print version number, then turn on verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: turn_warnings_script
  doc: turn warnings on for your script
  type: boolean
  inputBinding:
    prefix: -w
- id: set_warning_verbose
  doc: '[level=2]     set warning level; 0=silence, 1=medium, 2=verbose'
  type: boolean
  inputBinding:
    prefix: -W
- id: strip_text_cd
  doc: '[directory]   strip off text before #!ruby line and perhaps cd to directory'
  type: boolean
  inputBinding:
    prefix: -x
- id: copyright
  doc: print the copyright
  type: boolean
  inputBinding:
    prefix: --copyright
- id: enable
  doc: '[,...], --disable=feature[,...] enable or disable features'
  type: string
  inputBinding:
    prefix: --enable
- id: external_encoding
  doc: specify the default external or internal character encoding
  type: string
  inputBinding:
    prefix: --external-encoding
- id: gems
  doc: 'rubygems (default: enabled)'
  type: string
  inputBinding:
    position: 0
- id: ruby_opt
  doc: 'RUBYOPT environment variable (default: enabled)'
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ruby
