class: CommandLineTool
id: ttree.cwl
inputs:
- id: in__process_files
  doc: (--all)          Process all files, regardless of modification
  type: boolean?
  inputBinding:
    prefix: -a
- id: in__recurse_recurse
  doc: (--recurse)      Recurse into sub-directories
  type: boolean?
  inputBinding:
    prefix: -r
- id: in__preserve_ownership
  doc: (--preserve)     Preserve file ownership and permission
  type: boolean?
  inputBinding:
    prefix: -p
- id: in__nothing_do
  doc: (--nothing)      Do nothing, just print summary (enables -v)
  type: boolean?
  inputBinding:
    prefix: -n
- id: in__verbose_verbose
  doc: '(--verbose)      Verbose mode. Use twice for more verbosity: -v -v'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in__srcdir_source
  doc: (--src=DIR)      Source directory
  type: Directory?
  inputBinding:
    prefix: -s
- id: in_destdir_destination_directory
  doc: (--dest=DIR)     Destination directory
  type: Directory?
  inputBinding:
    prefix: -d
- id: in__cfgdir_location
  doc: (--cfg=DIR)      Location of configuration files
  type: string?
  inputBinding:
    prefix: -c
- id: in__libdir_library
  doc: (--lib=DIR)      Library directory (INCLUDE_PATH)  (multiple)
  type: Directory?
  inputBinding:
    prefix: -l
- id: in__filefile_read
  doc: (--file=FILE)    Read named configuration file     (multiple)
  type: File?
  inputBinding:
    prefix: -f
- id: in_colour
  doc: Enable colo(u)rful verbose output.
  type: boolean?
  inputBinding:
    prefix: --colour
- id: in_summary
  doc: Show processing summary.
  type: boolean?
  inputBinding:
    prefix: --summary
- id: in_ignore
  doc: Ignore files matching REGEX
  type: string?
  inputBinding:
    prefix: --ignore
- id: in_copy
  doc: Copy files matching REGEX
  type: string?
  inputBinding:
    prefix: --copy
- id: in_link
  doc: Link files matching REGEX
  type: string?
  inputBinding:
    prefix: --link
- id: in_accept
  doc: Process only files matching REGEX
  type: string?
  inputBinding:
    prefix: --accept
- id: in_depend
  doc: =bar,baz     Specify that 'foo' depends on 'bar' and 'baz'.
  type: string?
  inputBinding:
    prefix: --depend
- id: in_depend_file
  doc: Read file dependancies from FILE.
  type: File?
  inputBinding:
    prefix: --depend_file
- id: in_depend_debug
  doc: Enable debugging for dependencies
  type: boolean?
  inputBinding:
    prefix: --depend_debug
- id: in_suffix
  doc: =new         Change any '.old' suffix to '.new'
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_binmode
  doc: Set binary mode of output files
  type: string?
  inputBinding:
    prefix: --binmode
- id: in_encoding
  doc: Set encoding of input files
  type: string?
  inputBinding:
    prefix: --encoding
- id: in_define
  doc: =value       Define template variable
  type: string?
  inputBinding:
    prefix: --define
- id: in_interpolate
  doc: Interpolate '$var' references in text
  type: boolean?
  inputBinding:
    prefix: --interpolate
- id: in_any_case
  doc: Accept directive keywords in any case.
  type: boolean?
  inputBinding:
    prefix: --anycase
- id: in_pre_chomp
  doc: Chomp leading whitespace
  type: boolean?
  inputBinding:
    prefix: --pre_chomp
- id: in_post_chomp
  doc: Chomp trailing whitespace
  type: boolean?
  inputBinding:
    prefix: --post_chomp
- id: in_trim
  doc: Trim blank lines around template blocks
  type: boolean?
  inputBinding:
    prefix: --trim
- id: in_eval_perl
  doc: Evaluate [% PERL %] ... [% END %] code blocks
  type: boolean?
  inputBinding:
    prefix: --eval_perl
- id: in_load_perl
  doc: Load regular Perl modules via USE directive
  type: boolean?
  inputBinding:
    prefix: --load_perl
- id: in_absolute
  doc: Enable the ABSOLUTE option
  type: boolean?
  inputBinding:
    prefix: --absolute
- id: in_relative
  doc: Enable the RELATIVE option
  type: boolean?
  inputBinding:
    prefix: --relative
- id: in_pre_process
  doc: Process TEMPLATE before each main template
  type: string?
  inputBinding:
    prefix: --pre_process
- id: in_post_process
  doc: Process TEMPLATE after each main template
  type: string?
  inputBinding:
    prefix: --post_process
- id: in_process
  doc: Process TEMPLATE instead of main template
  type: string?
  inputBinding:
    prefix: --process
- id: in_wrapper
  doc: Process TEMPLATE wrapper around main template
  type: string?
  inputBinding:
    prefix: --wrapper
- id: in_default
  doc: Use TEMPLATE as default
  type: string?
  inputBinding:
    prefix: --default
- id: in_error
  doc: Use TEMPLATE to handle errors
  type: string?
  inputBinding:
    prefix: --error
- id: in_debug
  doc: Set TT DEBUG option to STRING
  type: string?
  inputBinding:
    prefix: --debug
- id: in_start_tag
  doc: STRING defines start of directive tag
  type: string?
  inputBinding:
    prefix: --start_tag
- id: in_end_tag
  doc: STRING defined end of directive tag
  type: string?
  inputBinding:
    prefix: --end_tag
- id: in_tag_style
  doc: Use pre-defined tag STYLE
  type: string?
  inputBinding:
    prefix: --tag_style
- id: in_plugin_base
  doc: Base PACKAGE for plugins
  type: string?
  inputBinding:
    prefix: --plugin_base
- id: in_compile_ext
  doc: File extension for compiled template files
  type: File?
  inputBinding:
    prefix: --compile_ext
- id: in_compile_dir
  doc: Directory for compiled template files
  type: Directory?
  inputBinding:
    prefix: --compile_dir
- id: in_perl_five_lib
  doc: Specify additional Perl library directories
  type: long?
  inputBinding:
    prefix: --perl5lib
- id: in_template_module
  doc: Specify alternate Template module
  type: string?
  inputBinding:
    prefix: --template_module
- id: in_files
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
- ttree
