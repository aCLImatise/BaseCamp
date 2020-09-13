class: CommandLineTool
id: ../../../jdeps.cwl
inputs:
- id: in_var_0
  doc: ''
  type: string
  inputBinding:
    prefix: -dotoutput
- id: in_destination_directory_dot
  doc: Destination directory for DOT file output
  type: File
  inputBinding:
    prefix: --dot-output
- id: in_summary_print_dependency
  doc: -summary             Print dependency summary only.
  type: boolean
  inputBinding:
    prefix: -s
- id: in_verbose_print_dependencesequivalent
  doc: "-verbose             Print all class level dependences\nEquivalent to -verbose:class\
    \ -filter:none."
  type: boolean
  inputBinding:
    prefix: -v
- id: in_var_4
  doc: ''
  type: boolean
  inputBinding:
    prefix: -apionly
- id: in_restrict_analysis_apis
  doc: "Restrict analysis to APIs i.e. dependences\nfrom the signature of public and\
    \ protected\nmembers of public classes including field\ntype, method parameter\
    \ types, returned type,\nchecked exception types etc."
  type: boolean
  inputBinding:
    prefix: --api-only
- id: in_var_6
  doc: ''
  type: boolean
  inputBinding:
    prefix: -jdkinternals
- id: in_finds_classlevel_dependences
  doc: "Finds class-level dependences on JDK internal\nAPIs. By default, it analyzes\
    \ all classes\non --class-path and input files unless -include\noption is specified.\
    \ This option cannot be\nused with -p, -e and -s options.\nWARNING: JDK internal\
    \ APIs are inaccessible."
  type: boolean
  inputBinding:
    prefix: --jdk-internals
- id: in_cp
  doc: ''
  type: File
  inputBinding:
    prefix: -cp
- id: in_classpath
  doc: ''
  type: File
  inputBinding:
    prefix: -classpath
- id: in_class_path
  doc: Specify where to find class files
  type: File
  inputBinding:
    prefix: --class-path
- id: in_module_path
  doc: Specify module path
  type: File
  inputBinding:
    prefix: --module-path
- id: in_upgrade_module_path
  doc: Specify upgrade module path
  type: File
  inputBinding:
    prefix: --upgrade-module-path
- id: in_system
  doc: Specify an alternate system module path
  type: File
  inputBinding:
    prefix: --system
- id: in_add_modules
  doc: "[,<module-name>...]\nAdds modules to the root set for analysis"
  type: string
  inputBinding:
    prefix: --add-modules
- id: in_multi_release
  doc: "Specifies the version when processing\nmulti-release jar files.  <version>\
    \ should\nbe integer >= 9 or base."
  type: long
  inputBinding:
    prefix: --multi-release
- id: in_quiet_suppress_warning
  doc: -quiet               Suppress warning messages
  type: boolean
  inputBinding:
    prefix: -q
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_module
  doc: Specify the root module for analysis
  type: string
  inputBinding:
    prefix: --module
- id: in_generate_module_info
  doc: "Generate module-info.java under the specified\ndirectory. The specified JAR\
    \ files will be\nanalyzed. This option cannot be used with\n--dot-output or --class-path.\
    \ Use\n--generate-open-module option for open modules."
  type: File
  inputBinding:
    prefix: --generate-module-info
- id: in_generate_open_module
  doc: "Generate module-info.java for the specified\nJAR files under the specified\
    \ directory as\nopen modules. This option cannot be used with\n--dot-output or\
    \ --class-path."
  type: File
  inputBinding:
    prefix: --generate-open-module
- id: in_check
  doc: "[,<module-name>...\nAnalyze the dependence of the specified modules\nIt prints\
    \ the module descriptor, the resulting\nmodule dependences after analysis and\
    \ the\ngraph after transition reduction.  It also\nidentifies any unused qualified\
    \ exports."
  type: string
  inputBinding:
    prefix: --check
- id: in_list_deps
  doc: "Lists the module dependences.  It also prints\nany JDK internal API packages\
    \ if referenced.\nThis option does not show dependences on the\nclass path or\
    \ not found."
  type: boolean
  inputBinding:
    prefix: --list-deps
- id: in_list_reduced_deps
  doc: "Same as --list-deps with not listing\nthe implied reads edges from the module\
    \ graph.\nIf module M1 reads M2, and M2 requires\ntransitive on M3, then M1 reading\
    \ M3 is implied\nand is not shown in the graph."
  type: boolean
  inputBinding:
    prefix: --list-reduced-deps
- id: in_print_module_deps
  doc: "Same as --list-reduced-deps with printing\na comma-separated list of module\
    \ dependences.\nThis output can be used by jlink --add-modules\nin order to create\
    \ a custom image containing\nthose modules and their transitive dependences."
  type: boolean
  inputBinding:
    prefix: --print-module-deps
- id: in_var_25
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_package
  doc: ''
  type: string
  inputBinding:
    prefix: -package
- id: in_e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: in_regex
  doc: ''
  type: string
  inputBinding:
    prefix: -regex
- id: in_require
  doc: "Finds dependences matching the given module\nname (may be given multiple times).\
    \ --package,\n--regex, --require are mutual exclusive."
  type: string
  inputBinding:
    prefix: --require
- id: in_include
  doc: "Restrict analysis to classes matching pattern\nThis option filters the list\
    \ of classes to\nbe analyzed.  It can be used together with\n-p and -e which apply\
    \ pattern to the dependences"
  type: string
  inputBinding:
    prefix: -include
- id: in_profile_show_profile
  doc: -profile             Show profile containing a package
  type: boolean
  inputBinding:
    prefix: -P
- id: in_recursive_recursively_traverse
  doc: "-recursive           Recursively traverse all run-time dependences.\nThe -R\
    \ option implies -filter:none.  If -p,\n-e, -f option is specified, only the matching\n\
    dependences are analyzed."
  type: boolean
  inputBinding:
    prefix: -R
- id: in__inverse_analyzes
  doc: "--inverse            Analyzes the dependences per other given options\nand\
    \ then find all artifacts that directly\nand indirectly depend on the matching\
    \ nodes.\nThis is equivalent to the inverse of\ncompile-time view analysis and\
    \ print\ndependency summary.  This option must use\nwith --require, --package\
    \ or --regex option."
  type: boolean
  inputBinding:
    prefix: -I
- id: in_compile_time
  doc: "Compile-time view of transitive dependences\ni.e. compile-time view of -R\
    \ option.\nAnalyzes the dependences per other given options\nIf a dependence is\
    \ found from a directory,\na JAR file or a module, all classes in that\ncontaining\
    \ archive are analyzed.\n"
  type: boolean
  inputBinding:
    prefix: --compile-time
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_destination_directory_dot
  doc: Destination directory for DOT file output
  type: File
  outputBinding:
    glob: $(inputs.in_destination_directory_dot)
- id: out_generate_module_info
  doc: "Generate module-info.java under the specified\ndirectory. The specified JAR\
    \ files will be\nanalyzed. This option cannot be used with\n--dot-output or --class-path.\
    \ Use\n--generate-open-module option for open modules."
  type: File
  outputBinding:
    glob: $(inputs.in_generate_module_info)
- id: out_generate_open_module
  doc: "Generate module-info.java for the specified\nJAR files under the specified\
    \ directory as\nopen modules. This option cannot be used with\n--dot-output or\
    \ --class-path."
  type: File
  outputBinding:
    glob: $(inputs.in_generate_open_module)
cwlVersion: v1.1
baseCommand:
- jdeps
