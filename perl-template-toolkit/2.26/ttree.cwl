class: CommandLineTool
id: ../../../ttree.cwl
inputs:
- id: _process_files
  doc: (--all)          Process all files, regardless of modification
  type: boolean
  inputBinding:
    prefix: -a
- id: _recurse_recurse
  doc: (--recurse)      Recurse into sub-directories
  type: boolean
  inputBinding:
    prefix: -r
- id: _preserve_ownership
  doc: (--preserve)     Preserve file ownership and permission
  type: boolean
  inputBinding:
    prefix: -p
- id: _nothing_nothing
  doc: (--nothing)      Do nothing, just print summary (enables -v)
  type: boolean
  inputBinding:
    prefix: -n
- id: _verbose_verbose
  doc: '(--verbose)      Verbose mode. Use twice for more verbosity: -v -v'
  type: boolean
  inputBinding:
    prefix: -v
- id: _srcdir_source
  doc: (--src=DIR)      Source directory
  type: string
  inputBinding:
    prefix: -s
- id: _destdir_destination
  doc: (--dest=DIR)     Destination directory
  type: string
  inputBinding:
    prefix: -d
- id: _cfgdir_location
  doc: (--cfg=DIR)      Location of configuration files
  type: string
  inputBinding:
    prefix: -c
- id: _libdir_directory
  doc: (--lib=DIR)      Library directory (INCLUDE_PATH)  (multiple)
  type: string
  inputBinding:
    prefix: -l
- id: _filefile_read
  doc: (--file=FILE)    Read named configuration file     (multiple)
  type: File
  inputBinding:
    prefix: -f
- id: colour
  doc: / --color       Enable colo(u)rful verbose output.
  type: boolean
  inputBinding:
    prefix: --colour
- id: summary
  doc: Show processing summary.
  type: boolean
  inputBinding:
    prefix: --summary
- id: ignore
  doc: Ignore files matching REGEX
  type: string
  inputBinding:
    prefix: --ignore
- id: copy
  doc: Copy files matching REGEX
  type: string
  inputBinding:
    prefix: --copy
- id: link
  doc: Link files matching REGEX
  type: string
  inputBinding:
    prefix: --link
- id: accept
  doc: 'Process only files matching REGEX '
  type: string
  inputBinding:
    prefix: --accept
- id: depend
  doc: =bar,baz     Specify that 'foo' depends on 'bar' and 'baz'.
  type: string
  inputBinding:
    prefix: --depend
- id: depend_file
  doc: Read file dependancies from FILE.
  type: File
  inputBinding:
    prefix: --depend_file
- id: depend_debug
  doc: Enable debugging for dependencies
  type: boolean
  inputBinding:
    prefix: --depend_debug
- id: suffix
  doc: =new         Change any '.old' suffix to '.new'
  type: string
  inputBinding:
    prefix: --suffix
- id: binmode
  doc: Set binary mode of output files
  type: string
  inputBinding:
    prefix: --binmode
- id: encoding
  doc: Set encoding of input files
  type: string
  inputBinding:
    prefix: --encoding
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
  doc: Enable the ABSOLUTE option
  type: boolean
  inputBinding:
    prefix: --absolute
- id: relative
  doc: Enable the RELATIVE option
  type: boolean
  inputBinding:
    prefix: --relative
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
- id: perl_five_lib
  doc: Specify additional Perl library directories
  type: string
  inputBinding:
    prefix: --perl5lib
- id: template_module
  doc: Specify alternate Template module
  type: string
  inputBinding:
    prefix: --template_module
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ttree
