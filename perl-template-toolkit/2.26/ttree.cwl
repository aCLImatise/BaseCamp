#!/usr/bin/env cwl-runner

baseCommand:
- ttree
class: CommandLineTool
cwlVersion: v1.0
id: ttree
inputs:
- doc: ''
  id: files
  inputBinding:
    position: 0
  type: File
- doc: (--all)          Process all files, regardless of modification
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: (--recurse)      Recurse into sub-directories
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: (--preserve)     Preserve file ownership and permission
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: (--nothing)      Do nothing, just print summary (enables -v)
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '(--verbose)      Verbose mode. Use twice for more verbosity: -v -v'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: (--src=DIR)      Source directory
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: (--dest=DIR)     Destination directory
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: (--cfg=DIR)      Location of configuration files
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: (--lib=DIR)      Library directory (INCLUDE_PATH)  (multiple)
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: (--file=FILE)    Read named configuration file     (multiple)
  id: f
  inputBinding:
    prefix: -f
  type: File
- doc: / --color       Enable colo(u)rful verbose output.
  id: colour
  inputBinding:
    prefix: --colour
  type: boolean
- doc: Show processing summary.
  id: summary
  inputBinding:
    prefix: --summary
  type: boolean
- doc: Ignore files matching REGEX
  id: ignore
  inputBinding:
    prefix: --ignore
  type: string
- doc: Copy files matching REGEX
  id: copy
  inputBinding:
    prefix: --copy
  type: string
- doc: Link files matching REGEX
  id: link
  inputBinding:
    prefix: --link
  type: string
- doc: 'Process only files matching REGEX '
  id: accept
  inputBinding:
    prefix: --accept
  type: string
- doc: =bar,baz     Specify that 'foo' depends on 'bar' and 'baz'.
  id: depend
  inputBinding:
    prefix: --depend
  type: string
- doc: Read file dependancies from FILE.
  id: depend_file
  inputBinding:
    prefix: --depend_file
  type: File
- doc: Enable debugging for dependencies
  id: depend_debug
  inputBinding:
    prefix: --depend_debug
  type: boolean
- doc: =new         Change any '.old' suffix to '.new'
  id: suffix
  inputBinding:
    prefix: --suffix
  type: string
- doc: Set binary mode of output files
  id: binmode
  inputBinding:
    prefix: --binmode
  type: string
- doc: Set encoding of input files
  id: encoding
  inputBinding:
    prefix: --encoding
  type: string
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
- doc: Enable the ABSOLUTE option
  id: absolute
  inputBinding:
    prefix: --absolute
  type: boolean
- doc: Enable the RELATIVE option
  id: relative
  inputBinding:
    prefix: --relative
  type: boolean
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
