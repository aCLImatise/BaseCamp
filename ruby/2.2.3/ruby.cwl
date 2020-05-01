#!/usr/bin/env cwl-runner

baseCommand:
- ruby
class: CommandLineTool
cwlVersion: v1.0
id: ruby
inputs:
- doc: 'rubygems (default: enabled)'
  id: gems
  inputBinding:
    position: 0
  type: string
- doc: 'RUBYOPT environment variable (default: enabled)'
  id: ruby_opt
  inputBinding:
    position: 1
  type: string
- doc: autosplit mode with -n or -p (splits $_ into $F)
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: check syntax only
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: cd to directory before executing your script
  id: c_directory
  inputBinding:
    prefix: -Cdirectory
  type: boolean
- doc: set debugging flags (set $DEBUG to true)
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: "'command'    one line of script. Several -e's allowed. Omit [programfile]"
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '[:in], --encoding=ex[:in] specify the default external and internal character
    encodings'
  id: eex
  inputBinding:
    prefix: -Eex
  type: boolean
- doc: split() pattern for autosplit (-a)
  id: f_pattern
  inputBinding:
    prefix: -Fpattern
  type: boolean
- doc: '[extension]   edit ARGV files in place (make backup if extension supplied)'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: specify $LOAD_PATH directory (may be used more than once)
  id: i_directory
  inputBinding:
    prefix: -Idirectory
  type: boolean
- doc: enable line ending processing
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: assume 'while gets(); ... end' loop around your script
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: assume loop like -n but print line also like sed
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: require the library before executing your script
  id: r_library
  inputBinding:
    prefix: -rlibrary
  type: boolean
- doc: enable some switch parsing for switches after script name
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: look for the script using PATH environment variable
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: '[level=1]     turn on tainting checks'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: print version number, then turn on verbose mode
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: turn warnings on for your script
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: '[level=2]     set warning level; 0=silence, 1=medium, 2=verbose'
  id: w
  inputBinding:
    prefix: -W
  type: boolean
- doc: '[directory]   strip off text before #!ruby line and perhaps cd to directory'
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: print the copyright
  id: copyright
  inputBinding:
    prefix: --copyright
  type: boolean
- doc: '[,...], --disable=feature[,...] enable or disable features'
  id: enable
  inputBinding:
    prefix: --enable
  type: string
- doc: specify the default external or internal character encoding
  id: external_encoding
  inputBinding:
    prefix: --external-encoding
  type: string
