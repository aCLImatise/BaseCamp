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
    String? preferred_charset_specifies
    Boolean? encoding
    String? locale
    Directory? locale_data_dir
    Boolean? all
    String? exclude
    File? extension
    Boolean? forceupdate_forces_rdoc
    Boolean? pipe
    String? tab_width
    String? visibility
    String? markup
    Directory? root
    File? page_dir
    Directory? force_output
    String? format
    Boolean? prints_report_undocumented
    Directory? set_output_directory
    Boolean? deprecated__optionprevents
    String? charset
    Boolean? hyperlink_all
    String? main
    Boolean? _linenumbers_include
    Boolean? show_hash
    String? template
    String? template_stylesheets
    String? title
    File? copy_files
    File? web_cvs
    Directory? generate_output_the
    Directory? ri_site
    Boolean? write_options
    Boolean? _debug_lots
    Boolean? quiet
    Boolean? verbose
    String processed_dot
    String pot
    String creates_data_files
    String dark_fish
    String i__includedirectories
  }
  command <<<
    rdoc \
      ~{processed_dot} \
      ~{pot} \
      ~{creates_data_files} \
      ~{dark_fish} \
      ~{i__includedirectories} \
      ~{if (access_or) then "--accessor" else ""} \
      ~{if (diagram) then "--diagram" else ""} \
      ~{if (help_output) then "--help-output" else ""} \
      ~{if (image_format) then "--image-format" else ""} \
      ~{if (inline_source) then "--inline-source" else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if (one_file) then "--one-file" else ""} \
      ~{if (op_name) then "--op-name" else ""} \
      ~{if (opname) then "--opname" else ""} \
      ~{if (promiscuous) then "--promiscuous" else ""} \
      ~{if (ri_system) then "--ri-system" else ""} \
      ~{if defined(preferred_charset_specifies) then ("-e " +  '"' + preferred_charset_specifies + '"') else ""} \
      ~{if (encoding) then "--encoding" else ""} \
      ~{if defined(locale) then ("--locale " +  '"' + locale + '"') else ""} \
      ~{if defined(locale_data_dir) then ("--locale-data-dir " +  '"' + locale_data_dir + '"') else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if (forceupdate_forces_rdoc) then "-U" else ""} \
      ~{if (pipe) then "--pipe" else ""} \
      ~{if defined(tab_width) then ("--tab-width " +  '"' + tab_width + '"') else ""} \
      ~{if defined(visibility) then ("--visibility " +  '"' + visibility + '"') else ""} \
      ~{if defined(markup) then ("--markup " +  '"' + markup + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(page_dir) then ("--page-dir " +  '"' + page_dir + '"') else ""} \
      ~{if (force_output) then "--force-output" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (prints_report_undocumented) then "-C" else ""} \
      ~{if defined(set_output_directory) then ("--output " +  '"' + set_output_directory + '"') else ""} \
      ~{if (deprecated__optionprevents) then "-d" else ""} \
      ~{if defined(charset) then ("--charset " +  '"' + charset + '"') else ""} \
      ~{if (hyperlink_all) then "--hyperlink-all" else ""} \
      ~{if defined(main) then ("--main " +  '"' + main + '"') else ""} \
      ~{if (_linenumbers_include) then "-N" else ""} \
      ~{if (show_hash) then "--show-hash" else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if defined(template_stylesheets) then ("--template-stylesheets " +  '"' + template_stylesheets + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(copy_files) then ("--copy-files " +  '"' + copy_files + '"') else ""} \
      ~{if defined(web_cvs) then ("--webcvs " +  '"' + web_cvs + '"') else ""} \
      ~{if (generate_output_the) then "--ri" else ""} \
      ~{if (ri_site) then "--ri-site" else ""} \
      ~{if (write_options) then "--write-options" else ""} \
      ~{if (_debug_lots) then "-D" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    preferred_charset_specifies: "preferred over --charset,  Specifies the output encoding.  All files"
    encoding: "read will be converted to this encoding.\\nThe default encoding is UTF-8."
    locale: "Specifies the output locale."
    locale_data_dir: "Specifies the directory where locale data live."
    all: "Synonym for --visibility=private."
    exclude: "Do not process files or directories\\nmatching PATTERN."
    extension: "=OLD          Treat files ending with .new as if they\\nended with .old. Using '-E cgi=rb' will\\ncause xxx.cgi to be parsed as a Ruby file."
    forceupdate_forces_rdoc: ", --[no-]force-update          Forces rdoc to scan all sources even if\\nnewer than the flag file."
    pipe: "Convert RDoc on stdin to HTML"
    tab_width: "Set the width of tab characters."
    visibility: "Minimum visibility to document a method.\\nOne of 'public', 'protected' (the default),\\n'private' or 'nodoc' (show everything)"
    markup: "The markup format for the named files.\\nThe default is rdoc.  Valid values are:\\nmarkdown, rd, rdoc, tomdoc"
    root: "Root of the source tree documentation\\nwill be generated for.  Set this when\\nbuilding documentation outside the\\nsource directory.  Default is the\\ncurrent directory."
    page_dir: "Directory where guides, your FAQ or\\nother pages not associated with a class\\nlive.  Set this when you don't store\\nsuch files at your project root.\\nNOTE: Do not use the same file name in\\nthe page dir and the root of your project"
    force_output: "Forces rdoc to write the output files,\\neven if the output directory exists\\nand does not seem to have been created\\nby rdoc."
    format: "Set the output formatter.  One of:"
    prints_report_undocumented: "[LEVEL],                       Prints a report on undocumented items.\\n--[no-]coverage-report       Does not generate files.\\n--[no-]dcov"
    set_output_directory: "Set the output directory."
    deprecated__optionprevents: "Deprecated --diagram option.\\nPrevents firing debug mode\\nwith legacy invocation."
    charset: "Specifies the output HTML character-set.\\nUse --encoding instead of --charset if\\navailable."
    hyperlink_all: "Generate hyperlinks for all words that\\ncorrespond to known methods, even if they\\ndo not start with '#' or '::' (legacy\\nbehavior)."
    main: "NAME will be the initial page displayed."
    _linenumbers_include: ", --[no-]line-numbers          Include line numbers in the source code.\\nBy default, only the number of the first\\nline is displayed, in a leading comment."
    show_hash: "A name of the form #name in a comment is a\\npossible hyperlink to an instance method\\nname. When displayed, the '#' is removed\\nunless this option is specified."
    template: "Set the template used when generating\\noutput. The default depends on the\\nformatter used."
    template_stylesheets: "Set (or add to) the list of files to\\ninclude with the html template."
    title: "Set TITLE as the title for HTML output."
    copy_files: "Specify a file or directory to copy static\\nfiles from.\\nIf a file is given it will be copied into\\nthe output dir.  If a directory is given the\\nentire directory will be copied.\\nYou can use this multiple times"
    web_cvs: "Specify a URL for linking to a web frontend\\nto CVS. If the URL contains a '%s', the\\nname of the current file will be\\nsubstituted; if the URL doesn't contain a\\n'%s', the filename will be appended to it."
    generate_output_the: "Generate output for use by `ri`. The files\\nare stored in the '.rdoc' directory under\\nyour home directory unless overridden by a\\nsubsequent --op parameter, so no special\\nprivileges are needed."
    ri_site: "Generate output for use by `ri`. The files\\nare stored in a site-wide directory,\\nmaking them accessible to others, so\\nspecial privileges are needed."
    write_options: "Write .rdoc_options to the current\\ndirectory with the given options.  Not all\\noptions will be used.  See RDoc::Options\\nfor details."
    _debug_lots: ", --[no-]debug                 Displays lots on internal stuff.\\n--[no-]ignore-invalid        Ignore invalid options and continue\\n(default true)."
    quiet: "Don't show progress as we parse."
    verbose: "Display extra progress as RDoc parses"
    processed_dot: "How RDoc generates output depends on the output formatter being used, and on"
    pot: "- creates .pot file"
    creates_data_files: "- creates ri data files"
    dark_fish: "pot"
    i__includedirectories: "-i, --include=DIRECTORIES        Set (or add to) the list of directories to"
  }
  output {
    File out_stdout = stdout()
    Directory out_force_output = "${in_force_output}"
    Directory out_set_output_directory = "${in_set_output_directory}"
    File out_copy_files = "${in_copy_files}"
    Directory out_generate_output_the = "${in_generate_output_the}"
    Directory out_ri_site = "${in_ri_site}"
  }
}