version 1.0

task Java {
  input {
    String? module
    File? class_path
    File? module_path
    File? upgrade_module_path
    File? add_modules
    Boolean? list_modules
    String? describe_module
    Boolean? dry_run
    Boolean? validate_modules
    Boolean? namevalueset_system_property
    Boolean? verbose
    Boolean? version
    Boolean? print_continue_continue
    Boolean? print_product_version
    Boolean? show_module_resolution
    Boolean? print_help_error
    Boolean? help_extra
    Boolean? ea
    Boolean? enable_assertions
    Boolean? da
    Boolean? disable_assertions
    Boolean? enable_system_assertions
    Boolean? disable_system_assertions
    Boolean? agent_lib
    Boolean? agent_path
    Boolean? java_agent
    Boolean? splash
    Boolean? disable_at_files
    Boolean? enable_preview
    String main_class
    String? args_dot_dot_dot
  }
  command <<<
    java \
      ~{main_class} \
      ~{args_dot_dot_dot} \
      ~{if defined(module) then ("--module " +  '"' + module + '"') else ""} \
      ~{if defined(class_path) then ("--class-path " +  '"' + class_path + '"') else ""} \
      ~{if defined(module_path) then ("--module-path " +  '"' + module_path + '"') else ""} \
      ~{if defined(upgrade_module_path) then ("--upgrade-module-path " +  '"' + upgrade_module_path + '"') else ""} \
      ~{if defined(add_modules) then ("--add-modules " +  '"' + add_modules + '"') else ""} \
      ~{if (list_modules) then "--list-modules" else ""} \
      ~{if defined(describe_module) then ("--describe-module " +  '"' + describe_module + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (validate_modules) then "--validate-modules" else ""} \
      ~{if (namevalueset_system_property) then "-D" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (print_continue_continue) then "-showversion" else ""} \
      ~{if (print_product_version) then "--show-version" else ""} \
      ~{if (show_module_resolution) then "--show-module-resolution" else ""} \
      ~{if (print_help_error) then "-X" else ""} \
      ~{if (help_extra) then "--help-extra" else ""} \
      ~{if (ea) then "-ea" else ""} \
      ~{if (enable_assertions) then "-enableassertions" else ""} \
      ~{if (da) then "-da" else ""} \
      ~{if (disable_assertions) then "-disableassertions" else ""} \
      ~{if (enable_system_assertions) then "-enablesystemassertions" else ""} \
      ~{if (disable_system_assertions) then "-disablesystemassertions" else ""} \
      ~{if (agent_lib) then "-agentlib" else ""} \
      ~{if (agent_path) then "-agentpath" else ""} \
      ~{if (java_agent) then "-javaagent" else ""} \
      ~{if (splash) then "-splash" else ""} \
      ~{if (disable_at_files) then "-disable-@files" else ""} \
      ~{if (enable_preview) then "--enable-preview" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    module: "/<mainclass> are passed as the arguments to"
    class_path: "A : separated list of directories, JAR archives,\\nand ZIP archives to search for class files."
    module_path: "...\\nA : separated list of directories, each directory\\nis a directory of modules."
    upgrade_module_path: "...\\nA : separated list of directories, each directory\\nis a directory of modules that replace upgradeable\\nmodules in the runtime image"
    add_modules: "[,<module name>...]\\nroot modules to resolve in addition to the initial module.\\n<module name> can also be ALL-DEFAULT, ALL-SYSTEM,\\nALL-MODULE-PATH."
    list_modules: "list observable modules and exit"
    describe_module: "describe a module and exit"
    dry_run: "create VM and load main class but do not execute main method.\\nThe --dry-run option may be useful for validating the\\ncommand-line options such as the module system configuration."
    validate_modules: "validate all modules and exit\\nThe --validate-modules option may be useful for finding\\nconflicts and other errors with modules on the module path."
    namevalueset_system_property: "<name>=<value>\\nset a system property"
    verbose: ":[class|module|gc|jni]\\nenable verbose output"
    version: "print product version to the error stream and exit"
    print_continue_continue: "print product version to the error stream and continue"
    print_product_version: "print product version to the output stream and continue"
    show_module_resolution: "show module resolution output during startup"
    print_help_error: "print help on extra options to the error stream"
    help_extra: "print help on extra options to the output stream"
    ea: "[:<packagename>...|:<classname>]"
    enable_assertions: "[:<packagename>...|:<classname>]\\nenable assertions with specified granularity"
    da: "[:<packagename>...|:<classname>]"
    disable_assertions: "[:<packagename>...|:<classname>]\\ndisable assertions with specified granularity"
    enable_system_assertions: "enable system assertions"
    disable_system_assertions: "disable system assertions"
    agent_lib: ":<libname>[=<options>]\\nload native agent library <libname>, e.g. -agentlib:jdwp\\nsee also -agentlib:jdwp=help"
    agent_path: ":<pathname>[=<options>]\\nload native agent library by full pathname"
    java_agent: ":<jarpath>[=<options>]\\nload Java programming language agent, see java.lang.instrument"
    splash: ":<imagepath>\\nshow splash screen with specified image\\nHiDPI scaled images are automatically supported and used\\nif available. The unscaled image filename, e.g. image.ext,\\nshould always be passed as the argument to the -splash option.\\nThe most appropriate scaled image provided will be picked up\\nautomatically.\\nSee the SplashScreen API documentation for more information"
    disable_at_files: "prevent further argument file expansion"
    enable_preview: "allow classes to depend on preview features of this release"
    main_class: ""
    args_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}