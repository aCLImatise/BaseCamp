class: CommandLineTool
id: tpage.cwl
inputs:
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: define
  doc: =value       Define template variable
  type: string
  inputBinding:
    prefix: --define
- id: interpolate
  doc: Interpolate '$var' references in text
  type: boolean
  inputBinding:
    prefix: --interpolate
- id: any_case
  doc: Accept directive keywords in any case.
  type: boolean
  inputBinding:
    prefix: --anycase
- id: pre_chomp
  doc: 'Chomp leading whitespace '
  type: boolean
  inputBinding:
    prefix: --pre_chomp
- id: post_chomp
  doc: Chomp trailing whitespace
  type: boolean
  inputBinding:
    prefix: --post_chomp
- id: trim
  doc: Trim blank lines around template blocks
  type: boolean
  inputBinding:
    prefix: --trim
- id: eval_perl
  doc: Evaluate [% PERL %] ... [% END %] code blocks
  type: boolean
  inputBinding:
    prefix: --eval_perl
- id: load_perl
  doc: Load regular Perl modules via USE directive
  type: boolean
  inputBinding:
    prefix: --load_perl
- id: absolute
  doc: Allow ABSOLUTE directories (enabled by default)
  type: boolean
  inputBinding:
    prefix: --absolute
- id: relative
  doc: Allow RELATIVE directories (enabled by default)
  type: boolean
  inputBinding:
    prefix: --relative
- id: include_path
  doc: 'Add directory to INCLUDE_PATH '
  type: string
  inputBinding:
    prefix: --include_path
- id: pre_process
  doc: Process TEMPLATE before each main template
  type: string
  inputBinding:
    prefix: --pre_process
- id: post_process
  doc: Process TEMPLATE after each main template
  type: string
  inputBinding:
    prefix: --post_process
- id: process
  doc: Process TEMPLATE instead of main template
  type: string
  inputBinding:
    prefix: --process
- id: wrapper
  doc: Process TEMPLATE wrapper around main template
  type: string
  inputBinding:
    prefix: --wrapper
- id: default
  doc: Use TEMPLATE as default
  type: string
  inputBinding:
    prefix: --default
- id: error
  doc: Use TEMPLATE to handle errors
  type: string
  inputBinding:
    prefix: --error
- id: debug
  doc: Set TT DEBUG option to STRING
  type: string
  inputBinding:
    prefix: --debug
- id: start_tag
  doc: STRING defines start of directive tag
  type: string
  inputBinding:
    prefix: --start_tag
- id: end_tag
  doc: STRING defined end of directive tag
  type: string
  inputBinding:
    prefix: --end_tag
- id: tag_style
  doc: 'Use pre-defined tag STYLE    '
  type: string
  inputBinding:
    prefix: --tag_style
- id: plugin_base
  doc: 'Base PACKAGE for plugins            '
  type: string
  inputBinding:
    prefix: --plugin_base
- id: compile_ext
  doc: File extension for compiled template files
  type: string
  inputBinding:
    prefix: --compile_ext
- id: compile_dir
  doc: Directory for compiled template files
  type: string
  inputBinding:
    prefix: --compile_dir
- id: perl5lib
  doc: Specify additional Perl library directories
  type: string
  inputBinding:
    prefix: --perl5lib
- id: template_module
  doc: Specify alternate Template module
  type: string
  inputBinding:
    prefix: --template_module
- id: while_max
  doc: Change '$Template::Directive::WHILE_MAX' default
  type: long
  inputBinding:
    prefix: --while_max
outputs: []
cwlVersion: v1.1
baseCommand:
- tpage
