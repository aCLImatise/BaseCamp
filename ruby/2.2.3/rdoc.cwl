class: CommandLineTool
id: rdoc.cwl
inputs:
- id: access_or
  doc: support discontinued
  type: boolean
  inputBinding:
    prefix: --accessor
- id: diagram
  doc: support discontinued
  type: boolean
  inputBinding:
    prefix: --diagram
- id: help_output
  doc: support discontinued
  type: boolean
  inputBinding:
    prefix: --help-output
- id: image_format
  doc: was an option for --diagram
  type: boolean
  inputBinding:
    prefix: --image-format
- id: inline_source
  doc: source code is now always inlined
  type: boolean
  inputBinding:
    prefix: --inline-source
- id: merge
  doc: ri now always merges class information
  type: boolean
  inputBinding:
    prefix: --merge
- id: one_file
  doc: support discontinued
  type: boolean
  inputBinding:
    prefix: --one-file
- id: op_name
  doc: support discontinued
  type: boolean
  inputBinding:
    prefix: --op-name
- id: opname
  doc: support discontinued
  type: boolean
  inputBinding:
    prefix: --opname
- id: promiscuous
  doc: files always only document their content
  type: boolean
  inputBinding:
    prefix: --promiscuous
- id: ri_system
  doc: Ruby installers use other techniques
  type: boolean
  inputBinding:
    prefix: --ri-system
- id: e
  doc: preferred over --charset,  Specifies the output encoding.  All files
  type: string
  inputBinding:
    prefix: -e
- id: encoding
  doc: read will be converted to this encoding. The default encoding is UTF-8.
  type: boolean
  inputBinding:
    prefix: --encoding
- id: locale
  doc: Specifies the output locale.
  type: string
  inputBinding:
    prefix: --locale
- id: locale_data_dir
  doc: Specifies the directory where locale data live.
  type: string
  inputBinding:
    prefix: --locale-data-dir
- id: all
  doc: Synonym for --visibility=private.
  type: boolean
  inputBinding:
    prefix: --all
- id: exclude
  doc: Do not process files or directories matching PATTERN.
  type: string
  inputBinding:
    prefix: --exclude
- id: extension
  doc: =OLD          Treat files ending with .new as if they ended with .old. Using
    '-E cgi=rb' will cause xxx.cgi to be parsed as a Ruby file.
  type: string
  inputBinding:
    prefix: --extension
- id: u
  doc: ', --[no-]force-update          Forces rdoc to scan all sources even if newer
    than the flag file.'
  type: boolean
  inputBinding:
    prefix: -U
- id: pipe
  doc: Convert RDoc on stdin to HTML
  type: boolean
  inputBinding:
    prefix: --pipe
- id: tab_width
  doc: Set the width of tab characters.
  type: string
  inputBinding:
    prefix: --tab-width
- id: visibility
  doc: Minimum visibility to document a method. One of 'public', 'protected' (the
    default), 'private' or 'nodoc' (show everything)
  type: string
  inputBinding:
    prefix: --visibility
- id: markup
  doc: 'The markup format for the named files. The default is rdoc.  Valid values
    are: markdown, rd, rdoc, tomdoc'
  type: string
  inputBinding:
    prefix: --markup
- id: root
  doc: Root of the source tree documentation will be generated for.  Set this when
    building documentation outside the source directory.  Default is the current directory.
  type: string
  inputBinding:
    prefix: --root
- id: page_dir
  doc: "Directory where guides, your FAQ or other pages not associated with a class\
    \ live.  Set this when you don't store such files at your project root. NOTE:\
    \ Do not use the same file name in the page dir and the root of your project"
  type: string
  inputBinding:
    prefix: --page-dir
- id: force_output
  doc: Forces rdoc to write the output files, even if the output directory exists
    and does not seem to have been created by rdoc.
  type: boolean
  inputBinding:
    prefix: --force-output
- id: format
  doc: 'Set the output formatter.  One of: darkfish pot ri'
  type: string
  inputBinding:
    prefix: --format
- id: include
  doc: 'Set (or add to) the list of directories to be searched when satisfying :include:
    requests. Can be used more than once.'
  type: string
  inputBinding:
    prefix: --include
- id: c
  doc: '[LEVEL],                       Prints a report on undocumented items. --[no-]coverage-report       Does
    not generate files. --[no-]dcov'
  type: boolean
  inputBinding:
    prefix: -C
- id: output
  doc: Set the output directory.
  type: string
  inputBinding:
    prefix: --output
- id: d
  doc: Deprecated --diagram option. Prevents firing debug mode with legacy invocation.
  type: boolean
  inputBinding:
    prefix: -d
- id: charset
  doc: Specifies the output HTML character-set. Use --encoding instead of --charset
    if available.
  type: string
  inputBinding:
    prefix: --charset
- id: hyperlink_all
  doc: Generate hyperlinks for all words that correspond to known methods, even if
    they do not start with '#' or '::' (legacy behavior).
  type: boolean
  inputBinding:
    prefix: --hyperlink-all
- id: main
  doc: NAME will be the initial page displayed.
  type: string
  inputBinding:
    prefix: --main
- id: n
  doc: ', --[no-]line-numbers          Include line numbers in the source code. By
    default, only the number of the first line is displayed, in a leading comment.'
  type: boolean
  inputBinding:
    prefix: -N
- id: show_hash
  doc: "A name of the form #name in a comment is a possible hyperlink to an instance\
    \ method name. When displayed, the '#' is removed unless this option is specified."
  type: boolean
  inputBinding:
    prefix: --show-hash
- id: template
  doc: Set the template used when generating output. The default depends on the formatter
    used.
  type: string
  inputBinding:
    prefix: --template
- id: template_stylesheets
  doc: Set (or add to) the list of files to include with the html template.
  type: File
  inputBinding:
    prefix: --template-stylesheets
- id: title
  doc: Set TITLE as the title for HTML output.
  type: string
  inputBinding:
    prefix: --title
- id: copy_files
  doc: Specify a file or directory to copy static files from. If a file is given it
    will be copied into the output dir.  If a directory is given the entire directory
    will be copied. You can use this multiple times
  type: File
  inputBinding:
    prefix: --copy-files
- id: web_cvs
  doc: Specify a URL for linking to a web frontend to CVS. If the URL contains a '%s',
    the name of the current file will be substituted; if the URL doesn't contain a
    '%s', the filename will be appended to it.
  type: string
  inputBinding:
    prefix: --webcvs
- id: ri
  doc: Generate output for use by `ri`. The files are stored in the '.rdoc' directory
    under your home directory unless overridden by a subsequent --op parameter, so
    no special privileges are needed.
  type: boolean
  inputBinding:
    prefix: --ri
- id: ri_site
  doc: Generate output for use by `ri`. The files are stored in a site-wide directory,
    making them accessible to others, so special privileges are needed.
  type: boolean
  inputBinding:
    prefix: --ri-site
- id: d
  doc: ', --[no-]debug                 Displays lots on internal stuff. --[no-]ignore-invalid        Ignore
    invalid options and continue (default true).'
  type: boolean
  inputBinding:
    prefix: -D
- id: quiet
  doc: Don't show progress as we parse.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Display extra progress as RDoc parses
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- rdoc
