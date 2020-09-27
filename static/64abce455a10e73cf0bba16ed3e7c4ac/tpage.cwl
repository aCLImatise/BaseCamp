class: CommandLineTool
id: tpage.cwl
inputs:
- id: in_define
  doc: =value       Define template variable
  type: string
  inputBinding:
    prefix: --define
- id: in_interpolate
  doc: Interpolate '$var' references in text
  type: boolean
  inputBinding:
    prefix: --interpolate
- id: in_any_case
  doc: Accept directive keywords in any case.
  type: boolean
  inputBinding:
    prefix: --anycase
- id: in_pre_chomp
  doc: Chomp leading whitespace
  type: boolean
  inputBinding:
    prefix: --pre_chomp
- id: in_post_chomp
  doc: Chomp trailing whitespace
  type: boolean
  inputBinding:
    prefix: --post_chomp
- id: in_trim
  doc: Trim blank lines around template blocks
  type: boolean
  inputBinding:
    prefix: --trim
- id: in_eval_perl
  doc: Evaluate [% PERL %] ... [% END %] code blocks
  type: boolean
  inputBinding:
    prefix: --eval_perl
- id: in_load_perl
  doc: Load regular Perl modules via USE directive
  type: boolean
  inputBinding:
    prefix: --load_perl
- id: in_absolute
  doc: Allow ABSOLUTE directories (enabled by default)
  type: boolean
  inputBinding:
    prefix: --absolute
- id: in_relative
  doc: Allow RELATIVE directories (enabled by default)
  type: boolean
  inputBinding:
    prefix: --relative
- id: in_include_path
  doc: Add directory to INCLUDE_PATH
  type: Directory
  inputBinding:
    prefix: --include_path
- id: in_pre_process
  doc: Process TEMPLATE before each main template
  type: string
  inputBinding:
    prefix: --pre_process
- id: in_post_process
  doc: Process TEMPLATE after each main template
  type: string
  inputBinding:
    prefix: --post_process
- id: in_process
  doc: Process TEMPLATE instead of main template
  type: string
  inputBinding:
    prefix: --process
- id: in_wrapper
  doc: Process TEMPLATE wrapper around main template
  type: string
  inputBinding:
    prefix: --wrapper
- id: in_default
  doc: Use TEMPLATE as default
  type: string
  inputBinding:
    prefix: --default
- id: in_error
  doc: Use TEMPLATE to handle errors
  type: string
  inputBinding:
    prefix: --error
- id: in_debug
  doc: Set TT DEBUG option to STRING
  type: string
  inputBinding:
    prefix: --debug
- id: in_start_tag
  doc: STRING defines start of directive tag
  type: string
  inputBinding:
    prefix: --start_tag
- id: in_end_tag
  doc: STRING defined end of directive tag
  type: string
  inputBinding:
    prefix: --end_tag
- id: in_tag_style
  doc: Use pre-defined tag STYLE
  type: string
  inputBinding:
    prefix: --tag_style
- id: in_plugin_base
  doc: Base PACKAGE for plugins
  type: string
  inputBinding:
    prefix: --plugin_base
- id: in_compile_ext
  doc: File extension for compiled template files
  type: File
  inputBinding:
    prefix: --compile_ext
- id: in_compile_dir
  doc: Directory for compiled template files
  type: Directory
  inputBinding:
    prefix: --compile_dir
- id: in_perl_five_lib
  doc: Specify additional Perl library directories
  type: long
  inputBinding:
    prefix: --perl5lib
- id: in_template_module
  doc: Specify alternate Template module
  type: string
  inputBinding:
    prefix: --template_module
- id: in_while_max
  doc: Change '$Template::Directive::WHILE_MAX' default
  type: long
  inputBinding:
    prefix: --while_max
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tpage
