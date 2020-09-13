version 1.0

task Javac {
  input {
    Boolean? a_key
    File? add_modules
    File? boot_class_path
    File? class_path
    Directory? specify_where_place_generated_class_files
    Boolean? deprecation
    Boolean? enable_preview
    String? encoding
    File? endorsed_dirs
    String? ext_dirs
    Directory? specify_where_place_generated
    Boolean? help_extra
    Boolean? implicit
    Boolean? flag_pass_flag
    String? limit_modules
    String? module
    File? module_path
    File? module_source_path
    String? module_version
    Boolean? nowarn
    Boolean? parameters
    Boolean? proc
    Int? processor
    File? processor_module_path
    File? processor_path
    String? profile
    Int? release
    Directory? specify_where_place_generated_source_files
    String? source
    File? source_path
    String? system
    String? target
    File? upgrade_module_path
    Boolean? verbose
    Boolean? werror
  }
  command <<<
    javac \
      ~{if (a_key) then "-Akey" else ""} \
      ~{if defined(add_modules) then ("--add-modules " +  '"' + add_modules + '"') else ""} \
      ~{if defined(boot_class_path) then ("--boot-class-path " +  '"' + boot_class_path + '"') else ""} \
      ~{if defined(class_path) then ("--class-path " +  '"' + class_path + '"') else ""} \
      ~{if defined(specify_where_place_generated_class_files) then ("-d " +  '"' + specify_where_place_generated_class_files + '"') else ""} \
      ~{if (deprecation) then "-deprecation" else ""} \
      ~{if (enable_preview) then "--enable-preview" else ""} \
      ~{if defined(encoding) then ("-encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(endorsed_dirs) then ("-endorseddirs " +  '"' + endorsed_dirs + '"') else ""} \
      ~{if defined(ext_dirs) then ("-extdirs " +  '"' + ext_dirs + '"') else ""} \
      ~{if defined(specify_where_place_generated) then ("-h " +  '"' + specify_where_place_generated + '"') else ""} \
      ~{if (help_extra) then "--help-extra" else ""} \
      ~{if (implicit) then "-implicit" else ""} \
      ~{if (flag_pass_flag) then "-J" else ""} \
      ~{if defined(limit_modules) then ("--limit-modules " +  '"' + limit_modules + '"') else ""} \
      ~{if defined(module) then ("--module " +  '"' + module + '"') else ""} \
      ~{if defined(module_path) then ("--module-path " +  '"' + module_path + '"') else ""} \
      ~{if defined(module_source_path) then ("--module-source-path " +  '"' + module_source_path + '"') else ""} \
      ~{if defined(module_version) then ("--module-version " +  '"' + module_version + '"') else ""} \
      ~{if (nowarn) then "-nowarn" else ""} \
      ~{if (parameters) then "-parameters" else ""} \
      ~{if (proc) then "-proc" else ""} \
      ~{if defined(processor) then ("-processor " +  '"' + processor + '"') else ""} \
      ~{if defined(processor_module_path) then ("--processor-module-path " +  '"' + processor_module_path + '"') else ""} \
      ~{if defined(processor_path) then ("--processor-path " +  '"' + processor_path + '"') else ""} \
      ~{if defined(profile) then ("-profile " +  '"' + profile + '"') else ""} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{if defined(specify_where_place_generated_source_files) then ("-s " +  '"' + specify_where_place_generated_source_files + '"') else ""} \
      ~{if defined(source) then ("-source " +  '"' + source + '"') else ""} \
      ~{if defined(source_path) then ("--source-path " +  '"' + source_path + '"') else ""} \
      ~{if defined(system) then ("--system " +  '"' + system + '"') else ""} \
      ~{if defined(target) then ("-target " +  '"' + target + '"') else ""} \
      ~{if defined(upgrade_module_path) then ("--upgrade-module-path " +  '"' + upgrade_module_path + '"') else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (werror) then "-Werror" else ""}
  >>>
  parameter_meta {
    a_key: "[=value]                Options to pass to annotation processors"
    add_modules: "(,<module>)*\\nRoot modules to resolve in addition to the initial modules, or all modules\\non the module path if <module> is ALL-MODULE-PATH."
    boot_class_path: "Override location of bootstrap class files"
    class_path: "Specify where to find user class files and annotation processors"
    specify_where_place_generated_class_files: "Specify where to place generated class files"
    deprecation: "Output source locations where deprecated APIs are used"
    enable_preview: "Enable preview language features. To be used in conjunction with either -source or --release."
    encoding: "Specify character encoding used by source files"
    endorsed_dirs: "Override location of endorsed standards path"
    ext_dirs: "Override location of installed extensions"
    specify_where_place_generated: "Specify where to place generated native header files"
    help_extra: "Print help on extra options"
    implicit: ":{none,class}\\nSpecify whether or not to generate class files for implicitly referenced files"
    flag_pass_flag: "<flag>                     Pass <flag> directly to the runtime system"
    limit_modules: "(,<module>)*\\nLimit the universe of observable modules"
    module: "Compile only the specified module, check timestamps"
    module_path: "Specify where to find application modules"
    module_source_path: "Specify where to find input source files for multiple modules"
    module_version: "Specify version of modules that are being compiled"
    nowarn: "Generate no warnings"
    parameters: "Generate metadata for reflection on method parameters"
    proc: ":{none,only}\\nControl whether annotation processing and/or compilation is done."
    processor: "[,<class2>,<class3>...]\\nNames of the annotation processors to run; bypasses default discovery process"
    processor_module_path: "Specify a module path where to find annotation processors"
    processor_path: "Specify where to find annotation processors"
    profile: "Check that API used is available in the specified profile"
    release: "Compile for a specific VM version. Supported targets: 6, 7, 8, 9, 10, 11"
    specify_where_place_generated_source_files: "Specify where to place generated source files"
    source: "Provide source compatibility with specified release"
    source_path: "Specify where to find input source files"
    system: "|none          Override location of system modules"
    target: "Generate class files for specific VM version"
    upgrade_module_path: "Override location of upgradeable modules"
    verbose: "Output messages about what the compiler is doing"
    werror: "Terminate compilation if warnings occur"
  }
  output {
    File out_stdout = stdout()
  }
}