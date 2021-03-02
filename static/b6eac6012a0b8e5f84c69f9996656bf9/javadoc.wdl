version 1.0

task Javadoc {
  input {
    File? add_modules
    File? boot_classpath
    Boolean? breakiterator
    File? class_path
    String? doclet
    File? doclet_path
    Boolean? enable_preview
    File? encoding
    String? exclude
    String? expand_requires
    String? ext_dirs
    Boolean? help_extra
    Boolean? flag_pass_flag
    String? limit_modules
    String? locale
    String? module
    File? module_path
    File? module_source_path
    Boolean? package
    Boolean? private
    Boolean? protected
    Boolean? public
    Boolean? quiet
    String? release
    String? show_members
    String? show_module_contents
    String? show_packages
    String? show_types
    String? source
    File? source_path
    String? subpackages
    String? system
    File? upgrade_module_path
    Boolean? verbose
    File? add_stylesheet
    Boolean? allow_script_in_comments
    Boolean? author
    String? bottom
    String? charset
    Directory? destination_directory_output
    String? doc_encoding
    Boolean? doc_files_subdirs
    String? doc_title
    String? exclude_doc_files_subdir
    String? footer
    Boolean? frames
    Int? group
    String? header
    File? help_file
    Boolean? html_four
    Boolean? html_five
    Boolean? java_fx
    Boolean? keywords
    String? link
    Int? link_offline
    Boolean? link_source
    File? main_stylesheet
    Boolean? no_comment
    Boolean? no_deprecated
    Boolean? no_deprecated_list
    Boolean? no_frames
    Boolean? no_help
    Boolean? no_index
    Boolean? no_navbar
    Int? no_qualifier
    Boolean? no_since
    Boolean? no_timestamp
    Boolean? no_tree
    Boolean? override_methods
    File? overview
    Boolean? serial_warn
    Int? source_tab
    Boolean? split_index
    String? tag
    Boolean? tag_let
    Boolean? tag_let_path
    String? top
    Boolean? use
    Boolean? version
    String? window_title
    String? package_names
    String? source_files
  }
  command <<<
    javadoc \
      ~{package_names} \
      ~{source_files} \
      ~{if defined(add_modules) then ("--add-modules " +  '"' + add_modules + '"') else ""} \
      ~{if defined(boot_classpath) then ("-bootclasspath " +  '"' + boot_classpath + '"') else ""} \
      ~{if (breakiterator) then "-breakiterator" else ""} \
      ~{if defined(class_path) then ("--class-path " +  '"' + class_path + '"') else ""} \
      ~{if defined(doclet) then ("-doclet " +  '"' + doclet + '"') else ""} \
      ~{if defined(doclet_path) then ("-docletpath " +  '"' + doclet_path + '"') else ""} \
      ~{if (enable_preview) then "--enable-preview" else ""} \
      ~{if defined(encoding) then ("-encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(exclude) then ("-exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(expand_requires) then ("--expand-requires " +  '"' + expand_requires + '"') else ""} \
      ~{if defined(ext_dirs) then ("-extdirs " +  '"' + ext_dirs + '"') else ""} \
      ~{if (help_extra) then "--help-extra" else ""} \
      ~{if (flag_pass_flag) then "-J" else ""} \
      ~{if defined(limit_modules) then ("--limit-modules " +  '"' + limit_modules + '"') else ""} \
      ~{if defined(locale) then ("-locale " +  '"' + locale + '"') else ""} \
      ~{if defined(module) then ("--module " +  '"' + module + '"') else ""} \
      ~{if defined(module_path) then ("--module-path " +  '"' + module_path + '"') else ""} \
      ~{if defined(module_source_path) then ("--module-source-path " +  '"' + module_source_path + '"') else ""} \
      ~{if (package) then "-package" else ""} \
      ~{if (private) then "-private" else ""} \
      ~{if (protected) then "-protected" else ""} \
      ~{if (public) then "-public" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{if defined(show_members) then ("--show-members " +  '"' + show_members + '"') else ""} \
      ~{if defined(show_module_contents) then ("--show-module-contents " +  '"' + show_module_contents + '"') else ""} \
      ~{if defined(show_packages) then ("--show-packages " +  '"' + show_packages + '"') else ""} \
      ~{if defined(show_types) then ("--show-types " +  '"' + show_types + '"') else ""} \
      ~{if defined(source) then ("-source " +  '"' + source + '"') else ""} \
      ~{if defined(source_path) then ("--source-path " +  '"' + source_path + '"') else ""} \
      ~{if defined(subpackages) then ("-subpackages " +  '"' + subpackages + '"') else ""} \
      ~{if defined(system) then ("--system " +  '"' + system + '"') else ""} \
      ~{if defined(upgrade_module_path) then ("--upgrade-module-path " +  '"' + upgrade_module_path + '"') else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if defined(add_stylesheet) then ("--add-stylesheet " +  '"' + add_stylesheet + '"') else ""} \
      ~{if (allow_script_in_comments) then "--allow-script-in-comments" else ""} \
      ~{if (author) then "-author" else ""} \
      ~{if defined(bottom) then ("-bottom " +  '"' + bottom + '"') else ""} \
      ~{if defined(charset) then ("-charset " +  '"' + charset + '"') else ""} \
      ~{if defined(destination_directory_output) then ("-d " +  '"' + destination_directory_output + '"') else ""} \
      ~{if defined(doc_encoding) then ("-docencoding " +  '"' + doc_encoding + '"') else ""} \
      ~{if (doc_files_subdirs) then "-docfilessubdirs" else ""} \
      ~{if defined(doc_title) then ("-doctitle " +  '"' + doc_title + '"') else ""} \
      ~{if defined(exclude_doc_files_subdir) then ("-excludedocfilessubdir " +  '"' + exclude_doc_files_subdir + '"') else ""} \
      ~{if defined(footer) then ("-footer " +  '"' + footer + '"') else ""} \
      ~{if (frames) then "--frames" else ""} \
      ~{if defined(group) then ("-group " +  '"' + group + '"') else ""} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if defined(help_file) then ("-helpfile " +  '"' + help_file + '"') else ""} \
      ~{if (html_four) then "-html4" else ""} \
      ~{if (html_five) then "-html5" else ""} \
      ~{if (java_fx) then "--javafx" else ""} \
      ~{if (keywords) then "-keywords" else ""} \
      ~{if defined(link) then ("-link " +  '"' + link + '"') else ""} \
      ~{if defined(link_offline) then ("-linkoffline " +  '"' + link_offline + '"') else ""} \
      ~{if (link_source) then "-linksource" else ""} \
      ~{if defined(main_stylesheet) then ("--main-stylesheet " +  '"' + main_stylesheet + '"') else ""} \
      ~{if (no_comment) then "-nocomment" else ""} \
      ~{if (no_deprecated) then "-nodeprecated" else ""} \
      ~{if (no_deprecated_list) then "-nodeprecatedlist" else ""} \
      ~{if (no_frames) then "--no-frames" else ""} \
      ~{if (no_help) then "-nohelp" else ""} \
      ~{if (no_index) then "-noindex" else ""} \
      ~{if (no_navbar) then "-nonavbar" else ""} \
      ~{if defined(no_qualifier) then ("-noqualifier " +  '"' + no_qualifier + '"') else ""} \
      ~{if (no_since) then "-nosince" else ""} \
      ~{if (no_timestamp) then "-notimestamp" else ""} \
      ~{if (no_tree) then "-notree" else ""} \
      ~{if (override_methods) then "--override-methods" else ""} \
      ~{if defined(overview) then ("-overview " +  '"' + overview + '"') else ""} \
      ~{if (serial_warn) then "-serialwarn" else ""} \
      ~{if defined(source_tab) then ("-sourcetab " +  '"' + source_tab + '"') else ""} \
      ~{if (split_index) then "-splitindex" else ""} \
      ~{if defined(tag) then ("-tag " +  '"' + tag + '"') else ""} \
      ~{if (tag_let) then "-taglet" else ""} \
      ~{if (tag_let_path) then "-tagletpath" else ""} \
      ~{if defined(top) then ("-top " +  '"' + top + '"') else ""} \
      ~{if (use) then "-use" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if defined(window_title) then ("-windowtitle " +  '"' + window_title + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add_modules: "(,<module>)*\\nRoot modules to resolve in addition to the initial modules,\\nor all modules on the module path if <module> is\\nALL-MODULE-PATH."
    boot_classpath: "Override location of platform class files used for non-modular\\nreleases"
    breakiterator: "Compute first sentence with BreakIterator"
    class_path: "Specify where to find user class files"
    doclet: "Generate output via alternate doclet"
    doclet_path: "Specify where to find doclet class files"
    enable_preview: "Enable preview language features. To be used in conjunction with\\neither -source or --release."
    encoding: "Source file encoding name"
    exclude: "Specify a list of packages to exclude"
    expand_requires: "Instructs the tool to expand the set of modules to be\\ndocumented. By default, only the modules given explicitly on\\nthe command line will be documented. A value of \\\"transitive\\\"\\nwill additionally include all \\\"requires transitive\\\"\\ndependencies of those modules. A value of \\\"all\\\" will include\\nall dependencies of those modules."
    ext_dirs: "Override location of installed extensions"
    help_extra: "Print a synopsis of nonstandard options and exit"
    flag_pass_flag: "<flag>      Pass <flag> directly to the runtime system"
    limit_modules: "(,<module>)*\\nLimit the universe of observable modules"
    locale: "Locale to be used, e.g. en_US or en_US_WIN"
    module: "(,<module>)*\\nDocument the specified module(s)"
    module_path: "Specify where to find application modules"
    module_source_path: "Specify where to find input source files for multiple modules"
    package: "Show package/protected/public types and members. For\\nnamed modules, show all packages and all module details."
    private: "Show all types and members. For named modules,\\nshow all packages and all module details."
    protected: "Show protected/public types and members (default). For\\nnamed modules, show exported packages and the module's API."
    public: "Show only public types and members. For named modules,\\nshow exported packages and the module's API."
    quiet: "Do not display status messages"
    release: "Provide source compatibility with specified release"
    show_members: "Specifies which members (fields, methods, etc.) will be\\ndocumented, where value can be one of \\\"public\\\", \\\"protected\\\",\\n\\\"package\\\" or \\\"private\\\". The default is \\\"protected\\\", which will\\nshow public and protected members, \\\"public\\\" will show only\\npublic members, \\\"package\\\" will show public, protected and\\npackage members and \\\"private\\\" will show all members."
    show_module_contents: "Specifies the documentation granularity of module\\ndeclarations. Possible values are \\\"api\\\" or \\\"all\\\"."
    show_packages: "Specifies which modules packages will be documented. Possible\\nvalues are \\\"exported\\\" or \\\"all\\\" packages."
    show_types: "Specifies which types (classes, interfaces, etc.) will be\\ndocumented, where value can be one of \\\"public\\\", \\\"protected\\\",\\n\\\"package\\\" or \\\"private\\\". The default is \\\"protected\\\", which will\\nshow public and protected types, \\\"public\\\" will show only\\npublic types, \\\"package\\\" will show public, protected and\\npackage types and \\\"private\\\" will show all types."
    source: "Provide source compatibility with specified release"
    source_path: "Specify where to find source files"
    subpackages: "Specify subpackages to recursively load"
    system: "Override location of system modules used for modular releases"
    upgrade_module_path: "Override location of upgradeable modules"
    verbose: "Output messages about what Javadoc is doing"
    add_stylesheet: "Additional stylesheet file for the generated documentation"
    allow_script_in_comments: "Allow JavaScript in options and comments"
    author: "Include @author paragraphs"
    bottom: "Include bottom text for each page"
    charset: "Charset for cross-platform viewing of generated documentation"
    destination_directory_output: "Destination directory for output files"
    doc_encoding: "Specify the character encoding for the output"
    doc_files_subdirs: "Recursively copy doc-file subdirectories"
    doc_title: "Include title for the overview page"
    exclude_doc_files_subdir: ":..\\nExclude any doc-files subdirectories with given name"
    footer: "Include footer text for each page"
    frames: "Enable the use of frames in the generated output"
    group: "<g1>:<g2>...\\nGroup specified elements together in overview page"
    header: "Include header text for each page"
    help_file: "Include file that help link links to"
    html_four: "Generate HTML 4.01 output"
    html_five: "Generate HTML 5 output"
    java_fx: "Enable JavaFX functionality"
    keywords: "Include HTML meta tags with package, class and member info"
    link: "Create links to javadoc output at <url>"
    link_offline: "<url2>\\nLink to docs at <url1> using package list at <url2>"
    link_source: "Generate source in HTML"
    main_stylesheet: "File to change style of the generated documentation"
    no_comment: "Suppress description and tags, generate only declarations"
    no_deprecated: "Do not include @deprecated information"
    no_deprecated_list: "Do not generate deprecated list"
    no_frames: "Disable the use of frames in the generated output (default)"
    no_help: "Do not generate help link"
    no_index: "Do not generate index"
    no_navbar: "Do not generate navigation bar"
    no_qualifier: ":<name2>:..\\nExclude the list of qualifiers from the output"
    no_since: "Do not include @since information"
    no_timestamp: "Do not include hidden time stamp"
    no_tree: "Do not generate class hierarchy"
    override_methods: "(detail|summary)\\nDocument overridden methods in the detail or summary sections"
    overview: "Read overview documentation from HTML file"
    serial_warn: "Generate warning about @serial tag"
    source_tab: "Specify the number of spaces each tab takes up in the source"
    split_index: "Split index into one file per letter"
    tag: ":<locations>:<header>\\nSpecify single argument custom tags"
    tag_let: "The fully qualified name of Taglet to register"
    tag_let_path: "The path to Taglets"
    top: "Include top text for each page"
    use: "Create class and package usage pages"
    version: "Include @version paragraphs"
    window_title: "Browser window title for the documentation"
    package_names: ""
    source_files: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_destination_directory_output = "${in_destination_directory_output}"
  }
}