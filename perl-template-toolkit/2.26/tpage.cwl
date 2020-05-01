#!/usr/bin/env cwl-runner

baseCommand:
- tpage
class: CommandLineTool
cwlVersion: v1.0
id: tpage
inputs:
- doc: ''
  id: files
  inputBinding:
    position: 0
  type: File
- doc: =value       Define template variable
  id: define
  inputBinding:
    prefix: --define
  type: string
- doc: Interpolate '$var' references in text
  id: interpolate
  inputBinding:
    prefix: --interpolate
  type: boolean
- doc: Accept directive keywords in any case.
  id: any_case
  inputBinding:
    prefix: --anycase
  type: boolean
- doc: 'Chomp leading whitespace '
  id: pre_chomp
  inputBinding:
    prefix: --pre_chomp
  type: boolean
- doc: Chomp trailing whitespace
  id: post_chomp
  inputBinding:
    prefix: --post_chomp
  type: boolean
- doc: Trim blank lines around template blocks
  id: trim
  inputBinding:
    prefix: --trim
  type: boolean
- doc: Evaluate [% PERL %] ... [% END %] code blocks
  id: eval_perl
  inputBinding:
    prefix: --eval_perl
  type: boolean
- doc: Load regular Perl modules via USE directive
  id: load_perl
  inputBinding:
    prefix: --load_perl
  type: boolean
- doc: Allow ABSOLUTE directories (enabled by default)
  id: absolute
  inputBinding:
    prefix: --absolute
  type: boolean
- doc: Allow RELATIVE directories (enabled by default)
  id: relative
  inputBinding:
    prefix: --relative
  type: boolean
- doc: 'Add directory to INCLUDE_PATH '
  id: include_path
  inputBinding:
    prefix: --include_path
  type: string
- doc: Process TEMPLATE before each main template
  id: pre_process
  inputBinding:
    prefix: --pre_process
  type: string
- doc: Process TEMPLATE after each main template
  id: post_process
  inputBinding:
    prefix: --post_process
  type: string
- doc: Process TEMPLATE instead of main template
  id: process
  inputBinding:
    prefix: --process
  type: string
- doc: Process TEMPLATE wrapper around main template
  id: wrapper
  inputBinding:
    prefix: --wrapper
  type: string
- doc: Use TEMPLATE as default
  id: default
  inputBinding:
    prefix: --default
  type: string
- doc: Use TEMPLATE to handle errors
  id: error
  inputBinding:
    prefix: --error
  type: string
- doc: Set TT DEBUG option to STRING
  id: debug
  inputBinding:
    prefix: --debug
  type: string
- doc: STRING defines start of directive tag
  id: start_tag
  inputBinding:
    prefix: --start_tag
  type: string
- doc: STRING defined end of directive tag
  id: end_tag
  inputBinding:
    prefix: --end_tag
  type: string
- doc: 'Use pre-defined tag STYLE    '
  id: tag_style
  inputBinding:
    prefix: --tag_style
  type: string
- doc: 'Base PACKAGE for plugins            '
  id: plugin_base
  inputBinding:
    prefix: --plugin_base
  type: string
- doc: File extension for compiled template files
  id: compile_ext
  inputBinding:
    prefix: --compile_ext
  type: string
- doc: Directory for compiled template files
  id: compile_dir
  inputBinding:
    prefix: --compile_dir
  type: string
- doc: Specify additional Perl library directories
  id: perl5lib
  inputBinding:
    prefix: --perl5lib
  type: string
- doc: Specify alternate Template module
  id: template_module
  inputBinding:
    prefix: --template_module
  type: string
- doc: Change '$Template::Directive::WHILE_MAX' default
  id: while_max
  inputBinding:
    prefix: --while_max
  type: long
