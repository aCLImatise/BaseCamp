class: CommandLineTool
id: run_anything.pl.cwl
inputs:
- id: in_module
  doc: /<mainclass> are passed as the arguments to
  type: string?
  inputBinding:
    prefix: --module
- id: in_class_path
  doc: "A : separated list of directories, JAR archives,\nand ZIP archives to search\
    \ for class files."
  type: File?
  inputBinding:
    prefix: --class-path
- id: in_module_path
  doc: "...\nA : separated list of directories, each directory\nis a directory of\
    \ modules."
  type: File?
  inputBinding:
    prefix: --module-path
- id: in_upgrade_module_path
  doc: "...\nA : separated list of directories, each directory\nis a directory of\
    \ modules that replace upgradeable\nmodules in the runtime image"
  type: File?
  inputBinding:
    prefix: --upgrade-module-path
- id: in_add_modules
  doc: "[,<module name>...]\nroot modules to resolve in addition to the initial module.\n\
    <module name> can also be ALL-DEFAULT, ALL-SYSTEM,\nALL-MODULE-PATH."
  type: File?
  inputBinding:
    prefix: --add-modules
- id: in_list_modules
  doc: list observable modules and exit
  type: boolean?
  inputBinding:
    prefix: --list-modules
- id: in_describe_module
  doc: describe a module and exit
  type: string?
  inputBinding:
    prefix: --describe-module
- id: in_dry_run
  doc: "create VM and load main class but do not execute main method.\nThe --dry-run\
    \ option may be useful for validating the\ncommand-line options such as the module\
    \ system configuration."
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_validate_modules
  doc: "validate all modules and exit\nThe --validate-modules option may be useful\
    \ for finding\nconflicts and other errors with modules on the module path."
  type: boolean?
  inputBinding:
    prefix: --validate-modules
- id: in_namevalueset_system_property
  doc: "<name>=<value>\nset a system property"
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_verbose
  doc: ":[class|module|gc|jni]\nenable verbose output"
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_version
  doc: print product version to the error stream and exit
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_print_continue_continue
  doc: print product version to the error stream and continue
  type: boolean?
  inputBinding:
    prefix: -showversion
- id: in_print_product_version
  doc: print product version to the output stream and continue
  type: boolean?
  inputBinding:
    prefix: --show-version
- id: in_show_module_resolution
  doc: show module resolution output during startup
  type: boolean?
  inputBinding:
    prefix: --show-module-resolution
- id: in_print_help_error
  doc: print help on extra options to the error stream
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_help_extra
  doc: print help on extra options to the output stream
  type: boolean?
  inputBinding:
    prefix: --help-extra
- id: in_ea
  doc: '[:<packagename>...|:<classname>]'
  type: boolean?
  inputBinding:
    prefix: -ea
- id: in_enable_assertions
  doc: "[:<packagename>...|:<classname>]\nenable assertions with specified granularity"
  type: boolean?
  inputBinding:
    prefix: -enableassertions
- id: in_da
  doc: '[:<packagename>...|:<classname>]'
  type: boolean?
  inputBinding:
    prefix: -da
- id: in_disable_assertions
  doc: "[:<packagename>...|:<classname>]\ndisable assertions with specified granularity"
  type: boolean?
  inputBinding:
    prefix: -disableassertions
- id: in_enable_system_assertions
  doc: enable system assertions
  type: boolean?
  inputBinding:
    prefix: -enablesystemassertions
- id: in_disable_system_assertions
  doc: disable system assertions
  type: boolean?
  inputBinding:
    prefix: -disablesystemassertions
- id: in_agent_lib
  doc: ":<libname>[=<options>]\nload native agent library <libname>, e.g. -agentlib:jdwp\n\
    see also -agentlib:jdwp=help"
  type: boolean?
  inputBinding:
    prefix: -agentlib
- id: in_agent_path
  doc: ":<pathname>[=<options>]\nload native agent library by full pathname"
  type: boolean?
  inputBinding:
    prefix: -agentpath
- id: in_java_agent
  doc: ":<jarpath>[=<options>]\nload Java programming language agent, see java.lang.instrument"
  type: boolean?
  inputBinding:
    prefix: -javaagent
- id: in_splash
  doc: ":<imagepath>\nshow splash screen with specified image\nHiDPI scaled images\
    \ are automatically supported and used\nif available. The unscaled image filename,\
    \ e.g. image.ext,\nshould always be passed as the argument to the -splash option.\n\
    The most appropriate scaled image provided will be picked up\nautomatically.\n\
    See the SplashScreen API documentation for more information"
  type: boolean?
  inputBinding:
    prefix: -splash
- id: in_disable_at_files
  doc: prevent further argument file expansion
  type: boolean?
  inputBinding:
    prefix: -disable-@files
- id: in_enable_preview
  doc: allow classes to depend on preview features of this release
  type: boolean?
  inputBinding:
    prefix: --enable-preview
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_main_class
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_args_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_anything.pl
