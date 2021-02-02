class: CommandLineTool
id: rdoc.cwl
inputs:
- id: in_access_or
  doc: support discontinued
  type: boolean
  inputBinding:
    prefix: --accessor
- id: in_diagram
  doc: support discontinued
  type: boolean
  inputBinding:
    prefix: --diagram
- id: in_help_output
  doc: support discontinued
  type: boolean
  inputBinding:
    prefix: --help-output
- id: in_image_format
  doc: was an option for --diagram
  type: boolean
  inputBinding:
    prefix: --image-format
- id: in_inline_source
  doc: source code is now always inlined
  type: boolean
  inputBinding:
    prefix: --inline-source
- id: in_merge
  doc: ri now always merges class information
  type: boolean
  inputBinding:
    prefix: --merge
- id: in_one_file
  doc: support discontinued
  type: boolean
  inputBinding:
    prefix: --one-file
- id: in_op_name
  doc: support discontinued
  type: boolean
  inputBinding:
    prefix: --op-name
- id: in_opname
  doc: support discontinued
  type: boolean
  inputBinding:
    prefix: --opname
- id: in_promiscuous
  doc: files always only document their content
  type: boolean
  inputBinding:
    prefix: --promiscuous
- id: in_ri_system
  doc: Ruby installers use other techniques
  type: boolean
  inputBinding:
    prefix: --ri-system
- id: in_preferred_specifies_encoding
  doc: preferred over --charset,  Specifies the output encoding.  All files
  type: string
  inputBinding:
    prefix: -e
- id: in_encoding
  doc: "read will be converted to this encoding.\nThe default encoding is UTF-8."
  type: boolean
  inputBinding:
    prefix: --encoding
- id: in_locale
  doc: Specifies the output locale.
  type: string
  inputBinding:
    prefix: --locale
- id: in_locale_data_dir
  doc: Specifies the directory where locale data live.
  type: Directory
  inputBinding:
    prefix: --locale-data-dir
- id: in_all
  doc: Synonym for --visibility=private.
  type: boolean
  inputBinding:
    prefix: --all
- id: in_exclude
  doc: "Do not process files or directories\nmatching PATTERN."
  type: string
  inputBinding:
    prefix: --exclude
- id: in_extension
  doc: "=OLD          Treat files ending with .new as if they\nended with .old. Using\
    \ '-E cgi=rb' will\ncause xxx.cgi to be parsed as a Ruby file."
  type: File
  inputBinding:
    prefix: --extension
- id: in__forceupdate_forces
  doc: ", --[no-]force-update          Forces rdoc to scan all sources even if\nnewer\
    \ than the flag file."
  type: boolean
  inputBinding:
    prefix: -U
- id: in_pipe
  doc: Convert RDoc on stdin to HTML
  type: boolean
  inputBinding:
    prefix: --pipe
- id: in_tab_width
  doc: Set the width of tab characters.
  type: string
  inputBinding:
    prefix: --tab-width
- id: in_visibility
  doc: "Minimum visibility to document a method.\nOne of 'public', 'protected' (the\
    \ default),\n'private' or 'nodoc' (show everything)"
  type: string
  inputBinding:
    prefix: --visibility
- id: in_markup
  doc: "The markup format for the named files.\nThe default is rdoc.  Valid values\
    \ are:\nmarkdown, rd, rdoc, tomdoc"
  type: string
  inputBinding:
    prefix: --markup
- id: in_root
  doc: "Root of the source tree documentation\nwill be generated for.  Set this when\n\
    building documentation outside the\nsource directory.  Default is the\ncurrent\
    \ directory."
  type: Directory
  inputBinding:
    prefix: --root
- id: in_page_dir
  doc: "Directory where guides, your FAQ or\nother pages not associated with a class\n\
    live.  Set this when you don't store\nsuch files at your project root.\nNOTE:\
    \ Do not use the same file name in\nthe page dir and the root of your project"
  type: File
  inputBinding:
    prefix: --page-dir
- id: in_force_output
  doc: "Forces rdoc to write the output files,\neven if the output directory exists\n\
    and does not seem to have been created\nby rdoc."
  type: Directory
  inputBinding:
    prefix: --force-output
- id: in_format
  doc: 'Set the output formatter.  One of:'
  type: string
  inputBinding:
    prefix: --format
- id: in_prints_report_undocumented
  doc: "[LEVEL],                       Prints a report on undocumented items.\n--[no-]coverage-report\
    \       Does not generate files.\n--[no-]dcov"
  type: boolean
  inputBinding:
    prefix: -C
- id: in_output
  doc: Set the output directory.
  type: Directory
  inputBinding:
    prefix: --output
- id: in_deprecated__diagram
  doc: "Deprecated --diagram option.\nPrevents firing debug mode\nwith legacy invocation."
  type: boolean
  inputBinding:
    prefix: -d
- id: in_charset
  doc: "Specifies the output HTML character-set.\nUse --encoding instead of --charset\
    \ if\navailable."
  type: string
  inputBinding:
    prefix: --charset
- id: in_hyperlink_all
  doc: "Generate hyperlinks for all words that\ncorrespond to known methods, even\
    \ if they\ndo not start with '#' or '::' (legacy\nbehavior)."
  type: boolean
  inputBinding:
    prefix: --hyperlink-all
- id: in_main
  doc: NAME will be the initial page displayed.
  type: string
  inputBinding:
    prefix: --main
- id: in__linenumbers_include
  doc: ", --[no-]line-numbers          Include line numbers in the source code.\n\
    By default, only the number of the first\nline is displayed, in a leading comment."
  type: boolean
  inputBinding:
    prefix: -N
- id: in_show_hash
  doc: "A name of the form #name in a comment is a\npossible hyperlink to an instance\
    \ method\nname. When displayed, the '#' is removed\nunless this option is specified."
  type: boolean
  inputBinding:
    prefix: --show-hash
- id: in_template
  doc: "Set the template used when generating\noutput. The default depends on the\n\
    formatter used."
  type: string
  inputBinding:
    prefix: --template
- id: in_template_stylesheets
  doc: "Set (or add to) the list of files to\ninclude with the html template."
  type: string
  inputBinding:
    prefix: --template-stylesheets
- id: in_title
  doc: Set TITLE as the title for HTML output.
  type: string
  inputBinding:
    prefix: --title
- id: in_copy_files
  doc: "Specify a file or directory to copy static\nfiles from.\nIf a file is given\
    \ it will be copied into\nthe output dir.  If a directory is given the\nentire\
    \ directory will be copied.\nYou can use this multiple times"
  type: File
  inputBinding:
    prefix: --copy-files
- id: in_web_cvs
  doc: "Specify a URL for linking to a web frontend\nto CVS. If the URL contains a\
    \ '%s', the\nname of the current file will be\nsubstituted; if the URL doesn't\
    \ contain a\n'%s', the filename will be appended to it."
  type: File
  inputBinding:
    prefix: --webcvs
- id: in_generate_output_the
  doc: "Generate output for use by `ri`. The files\nare stored in the '.rdoc' directory\
    \ under\nyour home directory unless overridden by a\nsubsequent --op parameter,\
    \ so no special\nprivileges are needed."
  type: Directory
  inputBinding:
    prefix: --ri
- id: in_ri_site
  doc: "Generate output for use by `ri`. The files\nare stored in a site-wide directory,\n\
    making them accessible to others, so\nspecial privileges are needed."
  type: Directory
  inputBinding:
    prefix: --ri-site
- id: in_write_options
  doc: "Write .rdoc_options to the current\ndirectory with the given options.  Not\
    \ all\noptions will be used.  See RDoc::Options\nfor details."
  type: boolean
  inputBinding:
    prefix: --write-options
- id: in__debug_lots
  doc: ", --[no-]debug                 Displays lots on internal stuff.\n--[no-]ignore-invalid\
    \        Ignore invalid options and continue\n(default true)."
  type: boolean
  inputBinding:
    prefix: -D
- id: in_quiet
  doc: Don't show progress as we parse.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Display extra progress as RDoc parses
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_processed_dot
  doc: How RDoc generates output depends on the output formatter being used, and on
  type: string
  inputBinding:
    position: 0
- id: in_pot
  doc: '- creates .pot file'
  type: string
  inputBinding:
    position: 0
- id: in_creates_ri_files
  doc: '- creates ri data files'
  type: string
  inputBinding:
    position: 1
- id: in_dark_fish
  doc: pot
  type: string
  inputBinding:
    position: 0
- id: in_i__includedirectories
  doc: -i, --include=DIRECTORIES        Set (or add to) the list of directories to
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_output
  doc: "Forces rdoc to write the output files,\neven if the output directory exists\n\
    and does not seem to have been created\nby rdoc."
  type: Directory
  outputBinding:
    glob: $(inputs.in_force_output)
- id: out_output
  doc: Set the output directory.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
- id: out_copy_files
  doc: "Specify a file or directory to copy static\nfiles from.\nIf a file is given\
    \ it will be copied into\nthe output dir.  If a directory is given the\nentire\
    \ directory will be copied.\nYou can use this multiple times"
  type: File
  outputBinding:
    glob: $(inputs.in_copy_files)
- id: out_generate_output_the
  doc: "Generate output for use by `ri`. The files\nare stored in the '.rdoc' directory\
    \ under\nyour home directory unless overridden by a\nsubsequent --op parameter,\
    \ so no special\nprivileges are needed."
  type: Directory
  outputBinding:
    glob: $(inputs.in_generate_output_the)
- id: out_ri_site
  doc: "Generate output for use by `ri`. The files\nare stored in a site-wide directory,\n\
    making them accessible to others, so\nspecial privileges are needed."
  type: Directory
  outputBinding:
    glob: $(inputs.in_ri_site)
cwlVersion: v1.1
baseCommand:
- rdoc
