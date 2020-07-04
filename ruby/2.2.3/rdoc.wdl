version 1.0

task Rdoc {
  input {
    Boolean? access_or
    Boolean? diagram
    Boolean? help_output
    Boolean? image_format
    Boolean? inline_source
    Boolean? merge
    Boolean? one_file
    Boolean? op_name
    Boolean? opname
    Boolean? promiscuous
    Boolean? ri_system
    String? preferred__charset
    Boolean? encoding
    String? locale
    String? locale_data_dir
    Boolean? all
    String? exclude
    String? extension
    Boolean? _forceupdate_forces
    Boolean? pipe
    String? tab_width
    String? visibility
    String? markup
    String? root
    String? page_dir
    Boolean? force_output
    String? format
    String? include
    Boolean? dcov
    String? set_output_directory
    Boolean? deprecated__diagram
    String? charset
    Boolean? hyperlink_all
    String? main
    Boolean? _linenumbers_include
    Boolean? show_hash
    String? template
    File? template_stylesheets
    String? title
    File? copy_files
    String? web_cvs
    Boolean? ri
    Boolean? ri_site
    Boolean? _ignoreinvalid_ignore
    Boolean? quiet
    Boolean? verbose
    String? names_dot_dot_dot
  }
  command <<<
    rdoc \
      ~{names_dot_dot_dot} \
      ~{true="--accessor" false="" access_or} \
      ~{true="--diagram" false="" diagram} \
      ~{true="--help-output" false="" help_output} \
      ~{true="--image-format" false="" image_format} \
      ~{true="--inline-source" false="" inline_source} \
      ~{true="--merge" false="" merge} \
      ~{true="--one-file" false="" one_file} \
      ~{true="--op-name" false="" op_name} \
      ~{true="--opname" false="" opname} \
      ~{true="--promiscuous" false="" promiscuous} \
      ~{true="--ri-system" false="" ri_system} \
      ~{if defined(preferred__charset) then ("-e " +  '"' + preferred__charset + '"') else ""} \
      ~{true="--encoding" false="" encoding} \
      ~{if defined(locale) then ("--locale " +  '"' + locale + '"') else ""} \
      ~{if defined(locale_data_dir) then ("--locale-data-dir " +  '"' + locale_data_dir + '"') else ""} \
      ~{true="--all" false="" all} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{true="-U" false="" _forceupdate_forces} \
      ~{true="--pipe" false="" pipe} \
      ~{if defined(tab_width) then ("--tab-width " +  '"' + tab_width + '"') else ""} \
      ~{if defined(visibility) then ("--visibility " +  '"' + visibility + '"') else ""} \
      ~{if defined(markup) then ("--markup " +  '"' + markup + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(page_dir) then ("--page-dir " +  '"' + page_dir + '"') else ""} \
      ~{true="--force-output" false="" force_output} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{true="-C" false="" dcov} \
      ~{if defined(set_output_directory) then ("--output " +  '"' + set_output_directory + '"') else ""} \
      ~{true="-d" false="" deprecated__diagram} \
      ~{if defined(charset) then ("--charset " +  '"' + charset + '"') else ""} \
      ~{true="--hyperlink-all" false="" hyperlink_all} \
      ~{if defined(main) then ("--main " +  '"' + main + '"') else ""} \
      ~{true="-N" false="" _linenumbers_include} \
      ~{true="--show-hash" false="" show_hash} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if defined(template_stylesheets) then ("--template-stylesheets " +  '"' + template_stylesheets + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(copy_files) then ("--copy-files " +  '"' + copy_files + '"') else ""} \
      ~{if defined(web_cvs) then ("--webcvs " +  '"' + web_cvs + '"') else ""} \
      ~{true="--ri" false="" ri} \
      ~{true="--ri-site" false="" ri_site} \
      ~{true="-D" false="" _ignoreinvalid_ignore} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    access_or: "support discontinued"
    diagram: "support discontinued"
    help_output: "support discontinued"
    image_format: "was an option for --diagram"
    inline_source: "source code is now always inlined"
    merge: "ri now always merges class information"
    one_file: "support discontinued"
    op_name: "support discontinued"
    opname: "support discontinued"
    promiscuous: "files always only document their content"
    ri_system: "Ruby installers use other techniques"
    preferred__charset: "preferred over --charset,  Specifies the output encoding.  All files"
    encoding: "read will be converted to this encoding. The default encoding is UTF-8."
    locale: "Specifies the output locale."
    locale_data_dir: "Specifies the directory where locale data live."
    all: "Synonym for --visibility=private."
    exclude: "Do not process files or directories matching PATTERN."
    extension: "=OLD          Treat files ending with .new as if they ended with .old. Using '-E cgi=rb' will cause xxx.cgi to be parsed as a Ruby file."
    _forceupdate_forces: ", --[no-]force-update          Forces rdoc to scan all sources even if newer than the flag file."
    pipe: "Convert RDoc on stdin to HTML"
    tab_width: "Set the width of tab characters."
    visibility: "Minimum visibility to document a method. One of 'public', 'protected' (the default), 'private' or 'nodoc' (show everything)"
    markup: "The markup format for the named files. The default is rdoc.  Valid values are: markdown, rd, rdoc, tomdoc"
    root: "Root of the source tree documentation will be generated for.  Set this when building documentation outside the source directory.  Default is the current directory."
    page_dir: "Directory where guides, your FAQ or other pages not associated with a class live.  Set this when you don't store such files at your project root. NOTE: Do not use the same file name in the page dir and the root of your project"
    force_output: "Forces rdoc to write the output files, even if the output directory exists and does not seem to have been created by rdoc."
    format: "Set the output formatter.  One of: darkfish pot ri"
    include: "Set (or add to) the list of directories to be searched when satisfying :include: requests. Can be used more than once."
    dcov: "[LEVEL],                       Prints a report on undocumented items. --[no-]coverage-report       Does not generate files. --[no-]dcov"
    set_output_directory: "Set the output directory."
    deprecated__diagram: "Deprecated --diagram option. Prevents firing debug mode with legacy invocation."
    charset: "Specifies the output HTML character-set. Use --encoding instead of --charset if available."
    hyperlink_all: "Generate hyperlinks for all words that correspond to known methods, even if they do not start with '#' or '::' (legacy behavior)."
    main: "NAME will be the initial page displayed."
    _linenumbers_include: ", --[no-]line-numbers          Include line numbers in the source code. By default, only the number of the first line is displayed, in a leading comment."
    show_hash: "A name of the form #name in a comment is a possible hyperlink to an instance method name. When displayed, the '#' is removed unless this option is specified."
    template: "Set the template used when generating output. The default depends on the formatter used."
    template_stylesheets: "Set (or add to) the list of files to include with the html template."
    title: "Set TITLE as the title for HTML output."
    copy_files: "Specify a file or directory to copy static files from. If a file is given it will be copied into the output dir.  If a directory is given the entire directory will be copied. You can use this multiple times"
    web_cvs: "Specify a URL for linking to a web frontend to CVS. If the URL contains a '%s', the name of the current file will be substituted; if the URL doesn't contain a '%s', the filename will be appended to it."
    ri: "Generate output for use by `ri`. The files are stored in the '.rdoc' directory under your home directory unless overridden by a subsequent --op parameter, so no special privileges are needed."
    ri_site: "Generate output for use by `ri`. The files are stored in a site-wide directory, making them accessible to others, so special privileges are needed."
    _ignoreinvalid_ignore: ", --[no-]debug                 Displays lots on internal stuff. --[no-]ignore-invalid        Ignore invalid options and continue (default true)."
    quiet: "Don't show progress as we parse."
    verbose: "Display extra progress as RDoc parses"
    names_dot_dot_dot: ""
  }
}