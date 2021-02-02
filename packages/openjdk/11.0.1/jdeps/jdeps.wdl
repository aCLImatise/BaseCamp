version 1.0

task Jdeps {
  input {
    String? var_0
    File? destination_directory_dot
    Boolean? summary_print_dependency
    Boolean? verbose_print_dependencesequivalent
    Boolean? var_4
    Boolean? restrict_analysis_apis
    Boolean? var_6
    Boolean? finds_classlevel_dependences
    File? cp
    File? classpath
    File? class_path
    File? module_path
    File? upgrade_module_path
    File? system
    String? add_modules
    Int? multi_release
    Boolean? quiet_suppress_warning
    String? m
    String? module
    File? generate_module_info
    File? generate_open_module
    String? check
    Boolean? list_deps
    Boolean? list_reduced_deps
    Boolean? print_module_deps
    String? var_25
    String? package
    String? e
    String? regex
    String? require
    String? include
    Boolean? profile_show_profile
    Boolean? recursive_recursively_traverse
    Boolean? _inverse_analyzes
    Boolean? compile_time
  }
  command <<<
    jdeps \
      ~{if defined(var_0) then ("-dotoutput " +  '"' + var_0 + '"') else ""} \
      ~{if defined(destination_directory_dot) then ("--dot-output " +  '"' + destination_directory_dot + '"') else ""} \
      ~{if (summary_print_dependency) then "-s" else ""} \
      ~{if (verbose_print_dependencesequivalent) then "-v" else ""} \
      ~{if (var_4) then "-apionly" else ""} \
      ~{if (restrict_analysis_apis) then "--api-only" else ""} \
      ~{if (var_6) then "-jdkinternals" else ""} \
      ~{if (finds_classlevel_dependences) then "--jdk-internals" else ""} \
      ~{if defined(cp) then ("-cp " +  '"' + cp + '"') else ""} \
      ~{if defined(classpath) then ("-classpath " +  '"' + classpath + '"') else ""} \
      ~{if defined(class_path) then ("--class-path " +  '"' + class_path + '"') else ""} \
      ~{if defined(module_path) then ("--module-path " +  '"' + module_path + '"') else ""} \
      ~{if defined(upgrade_module_path) then ("--upgrade-module-path " +  '"' + upgrade_module_path + '"') else ""} \
      ~{if defined(system) then ("--system " +  '"' + system + '"') else ""} \
      ~{if defined(add_modules) then ("--add-modules " +  '"' + add_modules + '"') else ""} \
      ~{if defined(multi_release) then ("--multi-release " +  '"' + multi_release + '"') else ""} \
      ~{if (quiet_suppress_warning) then "-q" else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(module) then ("--module " +  '"' + module + '"') else ""} \
      ~{if defined(generate_module_info) then ("--generate-module-info " +  '"' + generate_module_info + '"') else ""} \
      ~{if defined(generate_open_module) then ("--generate-open-module " +  '"' + generate_open_module + '"') else ""} \
      ~{if defined(check) then ("--check " +  '"' + check + '"') else ""} \
      ~{if (list_deps) then "--list-deps" else ""} \
      ~{if (list_reduced_deps) then "--list-reduced-deps" else ""} \
      ~{if (print_module_deps) then "--print-module-deps" else ""} \
      ~{if defined(var_25) then ("-p " +  '"' + var_25 + '"') else ""} \
      ~{if defined(package) then ("-package " +  '"' + package + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(regex) then ("-regex " +  '"' + regex + '"') else ""} \
      ~{if defined(require) then ("--require " +  '"' + require + '"') else ""} \
      ~{if defined(include) then ("-include " +  '"' + include + '"') else ""} \
      ~{if (profile_show_profile) then "-P" else ""} \
      ~{if (recursive_recursively_traverse) then "-R" else ""} \
      ~{if (_inverse_analyzes) then "-I" else ""} \
      ~{if (compile_time) then "--compile-time" else ""}
  >>>
  parameter_meta {
    var_0: ""
    destination_directory_dot: "Destination directory for DOT file output"
    summary_print_dependency: "-summary             Print dependency summary only."
    verbose_print_dependencesequivalent: "-verbose             Print all class level dependences\\nEquivalent to -verbose:class -filter:none."
    var_4: ""
    restrict_analysis_apis: "Restrict analysis to APIs i.e. dependences\\nfrom the signature of public and protected\\nmembers of public classes including field\\ntype, method parameter types, returned type,\\nchecked exception types etc."
    var_6: ""
    finds_classlevel_dependences: "Finds class-level dependences on JDK internal\\nAPIs. By default, it analyzes all classes\\non --class-path and input files unless -include\\noption is specified. This option cannot be\\nused with -p, -e and -s options.\\nWARNING: JDK internal APIs are inaccessible."
    cp: ""
    classpath: ""
    class_path: "Specify where to find class files"
    module_path: "Specify module path"
    upgrade_module_path: "Specify upgrade module path"
    system: "Specify an alternate system module path"
    add_modules: "[,<module-name>...]\\nAdds modules to the root set for analysis"
    multi_release: "Specifies the version when processing\\nmulti-release jar files.  <version> should\\nbe integer >= 9 or base."
    quiet_suppress_warning: "-quiet               Suppress warning messages"
    m: ""
    module: "Specify the root module for analysis"
    generate_module_info: "Generate module-info.java under the specified\\ndirectory. The specified JAR files will be\\nanalyzed. This option cannot be used with\\n--dot-output or --class-path. Use\\n--generate-open-module option for open modules."
    generate_open_module: "Generate module-info.java for the specified\\nJAR files under the specified directory as\\nopen modules. This option cannot be used with\\n--dot-output or --class-path."
    check: "[,<module-name>...\\nAnalyze the dependence of the specified modules\\nIt prints the module descriptor, the resulting\\nmodule dependences after analysis and the\\ngraph after transition reduction.  It also\\nidentifies any unused qualified exports."
    list_deps: "Lists the module dependences.  It also prints\\nany JDK internal API packages if referenced.\\nThis option does not show dependences on the\\nclass path or not found."
    list_reduced_deps: "Same as --list-deps with not listing\\nthe implied reads edges from the module graph.\\nIf module M1 reads M2, and M2 requires\\ntransitive on M3, then M1 reading M3 is implied\\nand is not shown in the graph."
    print_module_deps: "Same as --list-reduced-deps with printing\\na comma-separated list of module dependences.\\nThis output can be used by jlink --add-modules\\nin order to create a custom image containing\\nthose modules and their transitive dependences."
    var_25: ""
    package: ""
    e: ""
    regex: ""
    require: "Finds dependences matching the given module\\nname (may be given multiple times). --package,\\n--regex, --require are mutual exclusive."
    include: "Restrict analysis to classes matching pattern\\nThis option filters the list of classes to\\nbe analyzed.  It can be used together with\\n-p and -e which apply pattern to the dependences"
    profile_show_profile: "-profile             Show profile containing a package"
    recursive_recursively_traverse: "-recursive           Recursively traverse all run-time dependences.\\nThe -R option implies -filter:none.  If -p,\\n-e, -f option is specified, only the matching\\ndependences are analyzed."
    _inverse_analyzes: "--inverse            Analyzes the dependences per other given options\\nand then find all artifacts that directly\\nand indirectly depend on the matching nodes.\\nThis is equivalent to the inverse of\\ncompile-time view analysis and print\\ndependency summary.  This option must use\\nwith --require, --package or --regex option."
    compile_time: "Compile-time view of transitive dependences\\ni.e. compile-time view of -R option.\\nAnalyzes the dependences per other given options\\nIf a dependence is found from a directory,\\na JAR file or a module, all classes in that\\ncontaining archive are analyzed.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_destination_directory_dot = "${in_destination_directory_dot}"
    File out_generate_module_info = "${in_generate_module_info}"
    File out_generate_open_module = "${in_generate_open_module}"
  }
}