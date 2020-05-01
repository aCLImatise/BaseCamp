#!/usr/bin/env cwl-runner

baseCommand:
- rdoc
class: CommandLineTool
cwlVersion: v1.0
id: rdoc
inputs:
- doc: support discontinued
  id: access_or
  inputBinding:
    prefix: --accessor
  type: boolean
- doc: support discontinued
  id: diagram
  inputBinding:
    prefix: --diagram
  type: boolean
- doc: support discontinued
  id: help_output
  inputBinding:
    prefix: --help-output
  type: boolean
- doc: was an option for --diagram
  id: image_format
  inputBinding:
    prefix: --image-format
  type: boolean
- doc: source code is now always inlined
  id: inline_source
  inputBinding:
    prefix: --inline-source
  type: boolean
- doc: ri now always merges class information
  id: merge
  inputBinding:
    prefix: --merge
  type: boolean
- doc: support discontinued
  id: one_file
  inputBinding:
    prefix: --one-file
  type: boolean
- doc: support discontinued
  id: op_name
  inputBinding:
    prefix: --op-name
  type: boolean
- doc: support discontinued
  id: opname
  inputBinding:
    prefix: --opname
  type: boolean
- doc: files always only document their content
  id: promiscuous
  inputBinding:
    prefix: --promiscuous
  type: boolean
- doc: Ruby installers use other techniques
  id: ri_system
  inputBinding:
    prefix: --ri-system
  type: boolean
- doc: preferred over --charset,  Specifies the output encoding.  All files
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: read will be converted to this encoding. The default encoding is UTF-8.
  id: encoding
  inputBinding:
    prefix: --encoding
  type: boolean
- doc: Specifies the output locale.
  id: locale
  inputBinding:
    prefix: --locale
  type: string
- doc: Specifies the directory where locale data live.
  id: locale_data_dir
  inputBinding:
    prefix: --locale-data-dir
  type: string
- doc: Synonym for --visibility=private.
  id: all
  inputBinding:
    prefix: --all
  type: boolean
- doc: Do not process files or directories matching PATTERN.
  id: exclude
  inputBinding:
    prefix: --exclude
  type: string
- doc: =OLD          Treat files ending with .new as if they ended with .old. Using
    '-E cgi=rb' will cause xxx.cgi to be parsed as a Ruby file.
  id: extension
  inputBinding:
    prefix: --extension
  type: string
- doc: ', --[no-]force-update          Forces rdoc to scan all sources even if newer
    than the flag file.'
  id: u
  inputBinding:
    prefix: -U
  type: boolean
- doc: Convert RDoc on stdin to HTML
  id: pipe
  inputBinding:
    prefix: --pipe
  type: boolean
- doc: Set the width of tab characters.
  id: tab_width
  inputBinding:
    prefix: --tab-width
  type: string
- doc: Minimum visibility to document a method. One of 'public', 'protected' (the
    default), 'private' or 'nodoc' (show everything)
  id: visibility
  inputBinding:
    prefix: --visibility
  type: string
- doc: 'The markup format for the named files. The default is rdoc.  Valid values
    are: markdown, rd, rdoc, tomdoc'
  id: markup
  inputBinding:
    prefix: --markup
  type: string
- doc: Root of the source tree documentation will be generated for.  Set this when
    building documentation outside the source directory.  Default is the current directory.
  id: root
  inputBinding:
    prefix: --root
  type: string
- doc: "Directory where guides, your FAQ or other pages not associated with a class\
    \ live.  Set this when you don't store such files at your project root. NOTE:\
    \ Do not use the same file name in the page dir and the root of your project"
  id: page_dir
  inputBinding:
    prefix: --page-dir
  type: string
- doc: Forces rdoc to write the output files, even if the output directory exists
    and does not seem to have been created by rdoc.
  id: force_output
  inputBinding:
    prefix: --force-output
  type: boolean
- doc: 'Set the output formatter.  One of: darkfish pot ri'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: 'Set (or add to) the list of directories to be searched when satisfying :include:
    requests. Can be used more than once.'
  id: include
  inputBinding:
    prefix: --include
  type: string
- doc: '[LEVEL],                       Prints a report on undocumented items. --[no-]coverage-report       Does
    not generate files. --[no-]dcov'
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: Set the output directory.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Deprecated --diagram option. Prevents firing debug mode with legacy invocation.
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: Specifies the output HTML character-set. Use --encoding instead of --charset
    if available.
  id: charset
  inputBinding:
    prefix: --charset
  type: string
- doc: Generate hyperlinks for all words that correspond to known methods, even if
    they do not start with '#' or '::' (legacy behavior).
  id: hyperlink_all
  inputBinding:
    prefix: --hyperlink-all
  type: boolean
- doc: NAME will be the initial page displayed.
  id: main
  inputBinding:
    prefix: --main
  type: string
- doc: ', --[no-]line-numbers          Include line numbers in the source code. By
    default, only the number of the first line is displayed, in a leading comment.'
  id: n
  inputBinding:
    prefix: -N
  type: boolean
- doc: "A name of the form #name in a comment is a possible hyperlink to an instance\
    \ method name. When displayed, the '#' is removed unless this option is specified."
  id: show_hash
  inputBinding:
    prefix: --show-hash
  type: boolean
- doc: Set the template used when generating output. The default depends on the formatter
    used.
  id: template
  inputBinding:
    prefix: --template
  type: string
- doc: Set (or add to) the list of files to include with the html template.
  id: template_stylesheets
  inputBinding:
    prefix: --template-stylesheets
  type: File
- doc: Set TITLE as the title for HTML output.
  id: title
  inputBinding:
    prefix: --title
  type: string
- doc: Specify a file or directory to copy static files from. If a file is given it
    will be copied into the output dir.  If a directory is given the entire directory
    will be copied. You can use this multiple times
  id: copy_files
  inputBinding:
    prefix: --copy-files
  type: File
- doc: Specify a URL for linking to a web frontend to CVS. If the URL contains a '%s',
    the name of the current file will be substituted; if the URL doesn't contain a
    '%s', the filename will be appended to it.
  id: web_cvs
  inputBinding:
    prefix: --webcvs
  type: string
- doc: Generate output for use by `ri`. The files are stored in the '.rdoc' directory
    under your home directory unless overridden by a subsequent --op parameter, so
    no special privileges are needed.
  id: ri
  inputBinding:
    prefix: --ri
  type: boolean
- doc: Generate output for use by `ri`. The files are stored in a site-wide directory,
    making them accessible to others, so special privileges are needed.
  id: ri_site
  inputBinding:
    prefix: --ri-site
  type: boolean
- doc: ', --[no-]debug                 Displays lots on internal stuff. --[no-]ignore-invalid        Ignore
    invalid options and continue (default true).'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: Don't show progress as we parse.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Display extra progress as RDoc parses
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
