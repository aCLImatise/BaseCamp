version 1.0

task Scaladoc {
  input {
    Boolean? author
    Boolean? diagrams
    File? diagrams_dot_path
    Int? diagrams_dot_restart
    Int? diagrams_dot_timeout
    Int? diagrams_max_classes
    Int? diagrams_max_implicit_s
    Boolean? doc_external_doc
    String? doc_footer
    Boolean? doc_format
    String? doc_generator
    File? doc_no_compile
    File? doc_root_content
    File? doc_source_url
    String? doc_title
    Int? doc_version
    Boolean? expand_all_types
    Boolean? groups
    Boolean? implicit_s
    Boolean? implicit_s_hide
    Boolean? implicit_s_show_all
    Boolean? implicit_s_sound_shadowing
    Boolean? no_link_warnings
    Boolean? no_prefixes
    Boolean? raw_output
    Boolean? skip_packages
    Boolean? diagrams_debug
    Boolean? implicit_s_debug
    String? d_property
    Boolean? flag_pass_flag
    Boolean? pluginopt_pass_option
    Boolean? print_synopsis_advanced
    File? boot_classpath
    File? classpath
    Directory? destination_generated_classfiles
    File? dependency_file
    Boolean? deprecation
    String? encoding
    Boolean? explain_types
    File? ext_dirs
    Boolean? feature
    Boolean? level_set_level
    File? java_boot_classpath
    File? java_ext_dirs
    Boolean? language
    Boolean? no_specialization
    Boolean? no_boot_cp
    Boolean? nowarn
    Boolean? optimise
    Boolean? print
    File? sourcepath
    Boolean? target
    File? tool_cp
    Boolean? unchecked
    Boolean? uniqid
    Boolean? use_java_cp
    Boolean? use_manifest_cp
    Boolean? verbose
    Boolean? version
    String options
    String source_files
  }
  command <<<
    scaladoc \
      ~{options} \
      ~{source_files} \
      ~{if (author) then "-author" else ""} \
      ~{if (diagrams) then "-diagrams" else ""} \
      ~{if defined(diagrams_dot_path) then ("-diagrams-dot-path " +  '"' + diagrams_dot_path + '"') else ""} \
      ~{if defined(diagrams_dot_restart) then ("-diagrams-dot-restart " +  '"' + diagrams_dot_restart + '"') else ""} \
      ~{if defined(diagrams_dot_timeout) then ("-diagrams-dot-timeout " +  '"' + diagrams_dot_timeout + '"') else ""} \
      ~{if defined(diagrams_max_classes) then ("-diagrams-max-classes " +  '"' + diagrams_max_classes + '"') else ""} \
      ~{if defined(diagrams_max_implicit_s) then ("-diagrams-max-implicits " +  '"' + diagrams_max_implicit_s + '"') else ""} \
      ~{if (doc_external_doc) then "-doc-external-doc" else ""} \
      ~{if defined(doc_footer) then ("-doc-footer " +  '"' + doc_footer + '"') else ""} \
      ~{if (doc_format) then "-doc-format" else ""} \
      ~{if defined(doc_generator) then ("-doc-generator " +  '"' + doc_generator + '"') else ""} \
      ~{if defined(doc_no_compile) then ("-doc-no-compile " +  '"' + doc_no_compile + '"') else ""} \
      ~{if defined(doc_root_content) then ("-doc-root-content " +  '"' + doc_root_content + '"') else ""} \
      ~{if defined(doc_source_url) then ("-doc-source-url " +  '"' + doc_source_url + '"') else ""} \
      ~{if defined(doc_title) then ("-doc-title " +  '"' + doc_title + '"') else ""} \
      ~{if defined(doc_version) then ("-doc-version " +  '"' + doc_version + '"') else ""} \
      ~{if (expand_all_types) then "-expand-all-types" else ""} \
      ~{if (groups) then "-groups" else ""} \
      ~{if (implicit_s) then "-implicits" else ""} \
      ~{if (implicit_s_hide) then "-implicits-hide" else ""} \
      ~{if (implicit_s_show_all) then "-implicits-show-all" else ""} \
      ~{if (implicit_s_sound_shadowing) then "-implicits-sound-shadowing" else ""} \
      ~{if (no_link_warnings) then "-no-link-warnings" else ""} \
      ~{if (no_prefixes) then "-no-prefixes" else ""} \
      ~{if (raw_output) then "-raw-output" else ""} \
      ~{if (skip_packages) then "-skip-packages" else ""} \
      ~{if (diagrams_debug) then "-diagrams-debug" else ""} \
      ~{if (implicit_s_debug) then "-implicits-debug" else ""} \
      ~{if defined(d_property) then ("-Dproperty " +  '"' + d_property + '"') else ""} \
      ~{if (flag_pass_flag) then "-J" else ""} \
      ~{if (pluginopt_pass_option) then "-P" else ""} \
      ~{if (print_synopsis_advanced) then "-X" else ""} \
      ~{if defined(boot_classpath) then ("-bootclasspath " +  '"' + boot_classpath + '"') else ""} \
      ~{if defined(classpath) then ("-classpath " +  '"' + classpath + '"') else ""} \
      ~{if defined(destination_generated_classfiles) then ("-d " +  '"' + destination_generated_classfiles + '"') else ""} \
      ~{if defined(dependency_file) then ("-dependencyfile " +  '"' + dependency_file + '"') else ""} \
      ~{if (deprecation) then "-deprecation" else ""} \
      ~{if defined(encoding) then ("-encoding " +  '"' + encoding + '"') else ""} \
      ~{if (explain_types) then "-explaintypes" else ""} \
      ~{if defined(ext_dirs) then ("-extdirs " +  '"' + ext_dirs + '"') else ""} \
      ~{if (feature) then "-feature" else ""} \
      ~{if (level_set_level) then "-g" else ""} \
      ~{if defined(java_boot_classpath) then ("-javabootclasspath " +  '"' + java_boot_classpath + '"') else ""} \
      ~{if defined(java_ext_dirs) then ("-javaextdirs " +  '"' + java_ext_dirs + '"') else ""} \
      ~{if (language) then "-language" else ""} \
      ~{if (no_specialization) then "-no-specialization" else ""} \
      ~{if (no_boot_cp) then "-nobootcp" else ""} \
      ~{if (nowarn) then "-nowarn" else ""} \
      ~{if (optimise) then "-optimise" else ""} \
      ~{if (print) then "-print" else ""} \
      ~{if defined(sourcepath) then ("-sourcepath " +  '"' + sourcepath + '"') else ""} \
      ~{if (target) then "-target" else ""} \
      ~{if defined(tool_cp) then ("-toolcp " +  '"' + tool_cp + '"') else ""} \
      ~{if (unchecked) then "-unchecked" else ""} \
      ~{if (uniqid) then "-uniqid" else ""} \
      ~{if (use_java_cp) then "-usejavacp" else ""} \
      ~{if (use_manifest_cp) then "-usemanifestcp" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    author: "Include authors."
    diagrams: "Create inheritance diagrams for classes, traits and packages."
    diagrams_dot_path: "The path to the dot executable used to generate the inheritance diagrams. Eg: /usr/bin/dot"
    diagrams_dot_restart: "The number of times to restart a malfunctioning dot process before disabling diagrams (default: 5)"
    diagrams_dot_timeout: "The timeout before the graphviz dot util is forcefully closed, in seconds (default: 10)"
    diagrams_max_classes: "The maximum number of superclasses or subclasses to show in a diagram"
    diagrams_max_implicit_s: "The maximum number of implicitly converted classes to show in a diagram"
    doc_external_doc: ":<external-doc>            comma-separated list of classpath_entry_path#doc_URL pairs describing external dependencies."
    doc_footer: "A footer on every Scaladoc page, by default the EPFL/Lightbend copyright notice. Can be overridden with a custom footer."
    doc_format: ":<format>                        Selects in which format documentation is rendered (html) default:html"
    doc_generator: "The fully qualified name of a doclet class, which will be used to generate the documentation"
    doc_no_compile: "A directory containing sources which should be parsed, no more (e.g. AnyRef.scala)"
    doc_root_content: "The file from which the root package documentation should be imported."
    doc_source_url: "A URL pattern used to link to the source file; the following variables are available: ?{TPL_NAME}, ?{TPL_OWNER} and respectively ?{FILE_PATH}. For example, for `scala.collection.Seq`, the variables will be expanded to `Seq`, `scala.collection` and respectively `scala/collection/Seq` (without the backquotes). To obtain a relative path for ?{FILE_PATH} instead of an absolute one, use the -sourcepath setting."
    doc_title: "The overall name of the Scaladoc site"
    doc_version: "An optional version number, to be appended to the title"
    expand_all_types: "Expand all type aliases and abstract types into full template pages. (locally this can be done with the @template annotation)"
    groups: "Group similar functions together (based on the @group annotation)"
    implicit_s: "Document members inherited by implicit conversions."
    implicit_s_hide: ":<implicit(s)>               Hide the members inherited by the given comma separated, fully qualified implicit conversions. Add dot (.) to include default conversions."
    implicit_s_show_all: "Show members inherited by implicit conversions that are impossible in the default scope. (for example conversions that require Numeric[String] to be in scope)"
    implicit_s_sound_shadowing: "Use a sound implicit shadowing calculation. Note: this interacts badly with usecases, so only use it if you haven't defined usecase for implicitly inherited members."
    no_link_warnings: "Avoid warnings for ambiguous and incorrect links."
    no_prefixes: "Prevents generating prefixes in types, possibly creating ambiguous references, but significantly speeding up scaladoc."
    raw_output: "For each html file, create another .html.raw file containing only the text. (can be used for quickly diffing two scaladoc outputs)"
    skip_packages: "<<package1>:...:<packageN>>  A colon-delimited list of fully qualified package names that will be skipped from scaladoc."
    diagrams_debug: "Show debugging information for the diagram creation process."
    implicit_s_debug: "Show debugging information for members inherited by implicit conversions."
    d_property: "Pass -Dproperty=value directly to the runtime system."
    flag_pass_flag: "<flag>                        Pass <flag> directly to the runtime system."
    pluginopt_pass_option: ":<plugin>:<opt>               Pass an option to a plugin"
    print_synopsis_advanced: "Print a synopsis of advanced options."
    boot_classpath: "Override location of bootstrap class files."
    classpath: "Specify where to find user class files."
    destination_generated_classfiles: "destination for generated classfiles."
    dependency_file: "Set dependency tracking file."
    deprecation: "Emit warning and location for usages of deprecated APIs."
    encoding: "Specify character encoding used by source files."
    explain_types: "Explain type errors in more detail."
    ext_dirs: "Override location of installed extensions."
    feature: "Emit warning and location for usages of features that should be imported explicitly."
    level_set_level: ":<level>                      Set level of generated debugging info. (none,source,line,vars,notailcalls) default:vars"
    java_boot_classpath: "Override java boot classpath."
    java_ext_dirs: "Override java extdirs classpath."
    language: ":<_,feature,-feature>  Enable or disable language features: `_' for all, `-language:help' to list"
    no_specialization: "Ignore @specialize annotations."
    no_boot_cp: "Do not use the boot classpath for the scala jars."
    nowarn: "Generate no warnings."
    optimise: "Generates faster bytecode by applying optimisations to the program"
    print: "Print program with Scala-specific features removed."
    sourcepath: "Specify location(s) of source files."
    target: ":<target>                Target platform for object files. All JVM 1.5 targets are deprecated. (jvm-1.5,jvm-1.6,jvm-1.7,jvm-1.8) default:jvm-1.6"
    tool_cp: "Add to the runner classpath."
    unchecked: "Enable additional warnings where generated code depends on assumptions."
    uniqid: "Uniquely tag all identifiers in debugging output."
    use_java_cp: "Utilize the java.class.path in classpath resolution."
    use_manifest_cp: "Utilize the manifest in classpath resolution."
    verbose: "Output messages about what the compiler is doing."
    version: "Print product version and exit."
    options: ""
    source_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}