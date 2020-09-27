class: CommandLineTool
id: javadoc.cwl
inputs:
- id: in_add_modules
  doc: "(,<module>)*\nRoot modules to resolve in addition to the initial modules,\n\
    or all modules on the module path if <module> is\nALL-MODULE-PATH."
  type: File
  inputBinding:
    prefix: --add-modules
- id: in_boot_classpath
  doc: "Override location of platform class files used for non-modular\nreleases"
  type: File
  inputBinding:
    prefix: -bootclasspath
- id: in_breakiterator
  doc: Compute first sentence with BreakIterator
  type: boolean
  inputBinding:
    prefix: -breakiterator
- id: in_class_path
  doc: Specify where to find user class files
  type: File
  inputBinding:
    prefix: --class-path
- id: in_doclet
  doc: Generate output via alternate doclet
  type: string
  inputBinding:
    prefix: -doclet
- id: in_doclet_path
  doc: Specify where to find doclet class files
  type: File
  inputBinding:
    prefix: -docletpath
- id: in_enable_preview
  doc: "Enable preview language features. To be used in conjunction with\neither -source\
    \ or --release."
  type: boolean
  inputBinding:
    prefix: --enable-preview
- id: in_encoding
  doc: Source file encoding name
  type: File
  inputBinding:
    prefix: -encoding
- id: in_exclude
  doc: Specify a list of packages to exclude
  type: string
  inputBinding:
    prefix: -exclude
- id: in_expand_requires
  doc: "Instructs the tool to expand the set of modules to be\ndocumented. By default,\
    \ only the modules given explicitly on\nthe command line will be documented. A\
    \ value of \"transitive\"\nwill additionally include all \"requires transitive\"\
    \ndependencies of those modules. A value of \"all\" will include\nall dependencies\
    \ of those modules."
  type: string
  inputBinding:
    prefix: --expand-requires
- id: in_ext_dirs
  doc: Override location of installed extensions
  type: string
  inputBinding:
    prefix: -extdirs
- id: in_help_extra
  doc: Print a synopsis of nonstandard options and exit
  type: boolean
  inputBinding:
    prefix: --help-extra
- id: in_flag_pass_flag
  doc: <flag>      Pass <flag> directly to the runtime system
  type: boolean
  inputBinding:
    prefix: -J
- id: in_limit_modules
  doc: "(,<module>)*\nLimit the universe of observable modules"
  type: string
  inputBinding:
    prefix: --limit-modules
- id: in_locale
  doc: Locale to be used, e.g. en_US or en_US_WIN
  type: string
  inputBinding:
    prefix: -locale
- id: in_module
  doc: "(,<module>)*\nDocument the specified module(s)"
  type: string
  inputBinding:
    prefix: --module
- id: in_module_path
  doc: Specify where to find application modules
  type: File
  inputBinding:
    prefix: --module-path
- id: in_module_source_path
  doc: Specify where to find input source files for multiple modules
  type: File
  inputBinding:
    prefix: --module-source-path
- id: in_package
  doc: "Show package/protected/public types and members. For\nnamed modules, show\
    \ all packages and all module details."
  type: boolean
  inputBinding:
    prefix: -package
- id: in_private
  doc: "Show all types and members. For named modules,\nshow all packages and all\
    \ module details."
  type: boolean
  inputBinding:
    prefix: -private
- id: in_protected
  doc: "Show protected/public types and members (default). For\nnamed modules, show\
    \ exported packages and the module's API."
  type: boolean
  inputBinding:
    prefix: -protected
- id: in_public
  doc: "Show only public types and members. For named modules,\nshow exported packages\
    \ and the module's API."
  type: boolean
  inputBinding:
    prefix: -public
- id: in_quiet
  doc: Do not display status messages
  type: boolean
  inputBinding:
    prefix: -quiet
- id: in_release
  doc: Provide source compatibility with specified release
  type: string
  inputBinding:
    prefix: --release
- id: in_show_members
  doc: "Specifies which members (fields, methods, etc.) will be\ndocumented, where\
    \ value can be one of \"public\", \"protected\",\n\"package\" or \"private\".\
    \ The default is \"protected\", which will\nshow public and protected members,\
    \ \"public\" will show only\npublic members, \"package\" will show public, protected\
    \ and\npackage members and \"private\" will show all members."
  type: string
  inputBinding:
    prefix: --show-members
- id: in_show_module_contents
  doc: "Specifies the documentation granularity of module\ndeclarations. Possible\
    \ values are \"api\" or \"all\"."
  type: string
  inputBinding:
    prefix: --show-module-contents
- id: in_show_packages
  doc: "Specifies which modules packages will be documented. Possible\nvalues are\
    \ \"exported\" or \"all\" packages."
  type: string
  inputBinding:
    prefix: --show-packages
- id: in_show_types
  doc: "Specifies which types (classes, interfaces, etc.) will be\ndocumented, where\
    \ value can be one of \"public\", \"protected\",\n\"package\" or \"private\".\
    \ The default is \"protected\", which will\nshow public and protected types, \"\
    public\" will show only\npublic types, \"package\" will show public, protected\
    \ and\npackage types and \"private\" will show all types."
  type: string
  inputBinding:
    prefix: --show-types
- id: in_source
  doc: Provide source compatibility with specified release
  type: string
  inputBinding:
    prefix: -source
- id: in_source_path
  doc: Specify where to find source files
  type: File
  inputBinding:
    prefix: --source-path
- id: in_subpackages
  doc: Specify subpackages to recursively load
  type: string
  inputBinding:
    prefix: -subpackages
- id: in_system
  doc: Override location of system modules used for modular releases
  type: string
  inputBinding:
    prefix: --system
- id: in_upgrade_module_path
  doc: Override location of upgradeable modules
  type: File
  inputBinding:
    prefix: --upgrade-module-path
- id: in_verbose
  doc: Output messages about what Javadoc is doing
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_add_stylesheet
  doc: Additional stylesheet file for the generated documentation
  type: File
  inputBinding:
    prefix: --add-stylesheet
- id: in_allow_script_in_comments
  doc: Allow JavaScript in options and comments
  type: boolean
  inputBinding:
    prefix: --allow-script-in-comments
- id: in_author
  doc: Include @author paragraphs
  type: boolean
  inputBinding:
    prefix: -author
- id: in_bottom
  doc: Include bottom text for each page
  type: string
  inputBinding:
    prefix: -bottom
- id: in_charset
  doc: Charset for cross-platform viewing of generated documentation
  type: string
  inputBinding:
    prefix: -charset
- id: in_destination_directory_output
  doc: Destination directory for output files
  type: Directory
  inputBinding:
    prefix: -d
- id: in_doc_encoding
  doc: Specify the character encoding for the output
  type: string
  inputBinding:
    prefix: -docencoding
- id: in_doc_files_subdirs
  doc: Recursively copy doc-file subdirectories
  type: boolean
  inputBinding:
    prefix: -docfilessubdirs
- id: in_doc_title
  doc: Include title for the overview page
  type: string
  inputBinding:
    prefix: -doctitle
- id: in_exclude_doc_files_subdir
  doc: ":..\nExclude any doc-files subdirectories with given name"
  type: string
  inputBinding:
    prefix: -excludedocfilessubdir
- id: in_footer
  doc: Include footer text for each page
  type: string
  inputBinding:
    prefix: -footer
- id: in_frames
  doc: Enable the use of frames in the generated output
  type: boolean
  inputBinding:
    prefix: --frames
- id: in_group
  doc: "<g1>:<g2>...\nGroup specified elements together in overview page"
  type: long
  inputBinding:
    prefix: -group
- id: in_header
  doc: Include header text for each page
  type: string
  inputBinding:
    prefix: -header
- id: in_help_file
  doc: Include file that help link links to
  type: File
  inputBinding:
    prefix: -helpfile
- id: in_html_four
  doc: Generate HTML 4.01 output
  type: boolean
  inputBinding:
    prefix: -html4
- id: in_html_five
  doc: Generate HTML 5 output
  type: boolean
  inputBinding:
    prefix: -html5
- id: in_java_fx
  doc: Enable JavaFX functionality
  type: boolean
  inputBinding:
    prefix: --javafx
- id: in_keywords
  doc: Include HTML meta tags with package, class and member info
  type: boolean
  inputBinding:
    prefix: -keywords
- id: in_link
  doc: Create links to javadoc output at <url>
  type: string
  inputBinding:
    prefix: -link
- id: in_link_offline
  doc: "<url2>\nLink to docs at <url1> using package list at <url2>"
  type: long
  inputBinding:
    prefix: -linkoffline
- id: in_link_source
  doc: Generate source in HTML
  type: boolean
  inputBinding:
    prefix: -linksource
- id: in_main_stylesheet
  doc: File to change style of the generated documentation
  type: File
  inputBinding:
    prefix: --main-stylesheet
- id: in_no_comment
  doc: Suppress description and tags, generate only declarations
  type: boolean
  inputBinding:
    prefix: -nocomment
- id: in_no_deprecated
  doc: Do not include @deprecated information
  type: boolean
  inputBinding:
    prefix: -nodeprecated
- id: in_no_deprecated_list
  doc: Do not generate deprecated list
  type: boolean
  inputBinding:
    prefix: -nodeprecatedlist
- id: in_no_frames
  doc: Disable the use of frames in the generated output (default)
  type: boolean
  inputBinding:
    prefix: --no-frames
- id: in_no_help
  doc: Do not generate help link
  type: boolean
  inputBinding:
    prefix: -nohelp
- id: in_no_index
  doc: Do not generate index
  type: boolean
  inputBinding:
    prefix: -noindex
- id: in_no_navbar
  doc: Do not generate navigation bar
  type: boolean
  inputBinding:
    prefix: -nonavbar
- id: in_no_qualifier
  doc: ":<name2>:..\nExclude the list of qualifiers from the output"
  type: long
  inputBinding:
    prefix: -noqualifier
- id: in_no_since
  doc: Do not include @since information
  type: boolean
  inputBinding:
    prefix: -nosince
- id: in_no_timestamp
  doc: Do not include hidden time stamp
  type: boolean
  inputBinding:
    prefix: -notimestamp
- id: in_no_tree
  doc: Do not generate class hierarchy
  type: boolean
  inputBinding:
    prefix: -notree
- id: in_override_methods
  doc: "(detail|summary)\nDocument overridden methods in the detail or summary sections"
  type: boolean
  inputBinding:
    prefix: --override-methods
- id: in_overview
  doc: Read overview documentation from HTML file
  type: File
  inputBinding:
    prefix: -overview
- id: in_serial_warn
  doc: Generate warning about @serial tag
  type: boolean
  inputBinding:
    prefix: -serialwarn
- id: in_source_tab
  doc: Specify the number of spaces each tab takes up in the source
  type: long
  inputBinding:
    prefix: -sourcetab
- id: in_split_index
  doc: Split index into one file per letter
  type: boolean
  inputBinding:
    prefix: -splitindex
- id: in_tag
  doc: ":<locations>:<header>\nSpecify single argument custom tags"
  type: string
  inputBinding:
    prefix: -tag
- id: in_tag_let
  doc: The fully qualified name of Taglet to register
  type: boolean
  inputBinding:
    prefix: -taglet
- id: in_tag_let_path
  doc: The path to Taglets
  type: boolean
  inputBinding:
    prefix: -tagletpath
- id: in_top
  doc: Include top text for each page
  type: string
  inputBinding:
    prefix: -top
- id: in_use
  doc: Create class and package usage pages
  type: boolean
  inputBinding:
    prefix: -use
- id: in_version
  doc: Include @version paragraphs
  type: boolean
  inputBinding:
    prefix: -version
- id: in_window_title
  doc: Browser window title for the documentation
  type: string
  inputBinding:
    prefix: -windowtitle
- id: in_package_names
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_source_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_destination_directory_output
  doc: Destination directory for output files
  type: Directory
  outputBinding:
    glob: $(inputs.in_destination_directory_output)
cwlVersion: v1.1
baseCommand:
- javadoc
