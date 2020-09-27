class: CommandLineTool
id: java.cwl
inputs:
- id: in_module
  doc: /<mainclass> are passed as the arguments to
  type: string
  inputBinding:
    prefix: --module
- id: in_cp
  doc: "-classpath <class search path of directories and zip/jar files>\n--class-path\
    \ <class search path of directories and zip/jar files>\nA : separated list of\
    \ directories, JAR archives,\nand ZIP archives to search for class files.\n-p\
    \ <module path>\n--module-path <module path>...\nA : separated list of directories,\
    \ each directory\nis a directory of modules.\n--upgrade-module-path <module path>...\n\
    A : separated list of directories, each directory\nis a directory of modules that\
    \ replace upgradeable\nmodules in the runtime image\n--add-modules <module name>[,<module\
    \ name>...]\nroot modules to resolve in addition to the initial module.\n<module\
    \ name> can also be ALL-DEFAULT, ALL-SYSTEM,\nALL-MODULE-PATH.\n--list-modules\n\
    list observable modules and exit\n-d <module name>\n--describe-module <module\
    \ name>\ndescribe a module and exit\n--dry-run     create VM and load main class\
    \ but do not execute main method.\nThe --dry-run option may be useful for validating\
    \ the\ncommand-line options such as the module system configuration.\n--validate-modules\n\
    validate all modules and exit\nThe --validate-modules option may be useful for\
    \ finding\nconflicts and other errors with modules on the module path.\n-D<name>=<value>\n\
    set a system property\n-verbose:[class|module|gc|jni]\nenable verbose output\n\
    -version      print product version to the error stream and exit\n--version  \
    \   print product version to the output stream and exit\n-showversion  print product\
    \ version to the error stream and continue\n--show-version\nprint product version\
    \ to the output stream and continue\n--show-module-resolution\nshow module resolution\
    \ output during startup\n-? -h -help\nprint this help message to the error stream\n\
    --help        print this help message to the output stream\n-X            print\
    \ help on extra options to the error stream\n--help-extra  print help on extra\
    \ options to the output stream\n-ea[:<packagename>...|:<classname>]\n-enableassertions[:<packagename>...|:<classname>]\n\
    enable assertions with specified granularity\n-da[:<packagename>...|:<classname>]\n\
    -disableassertions[:<packagename>...|:<classname>]\ndisable assertions with specified\
    \ granularity\n-esa | -enablesystemassertions\nenable system assertions\n-dsa\
    \ | -disablesystemassertions\ndisable system assertions\n-agentlib:<libname>[=<options>]\n\
    load native agent library <libname>, e.g. -agentlib:jdwp\nsee also -agentlib:jdwp=help\n\
    -agentpath:<pathname>[=<options>]\nload native agent library by full pathname\n\
    -javaagent:<jarpath>[=<options>]\nload Java programming language agent, see java.lang.instrument\n\
    -splash:<imagepath>\nshow splash screen with specified image\nHiDPI scaled images\
    \ are automatically supported and used\nif available. The unscaled image filename,\
    \ e.g. image.ext,\nshould always be passed as the argument to the -splash option.\n\
    The most appropriate scaled image provided will be picked up\nautomatically.\n\
    See the SplashScreen API documentation for more information\n@argument files\n\
    one or more argument files containing options\n-disable-@files\nprevent further\
    \ argument file expansion\n--enable-preview\nallow classes to depend on preview\
    \ features of this release"
  type: File
  inputBinding:
    prefix: -cp
- id: in_main_class
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_args_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_cp
  doc: "-classpath <class search path of directories and zip/jar files>\n--class-path\
    \ <class search path of directories and zip/jar files>\nA : separated list of\
    \ directories, JAR archives,\nand ZIP archives to search for class files.\n-p\
    \ <module path>\n--module-path <module path>...\nA : separated list of directories,\
    \ each directory\nis a directory of modules.\n--upgrade-module-path <module path>...\n\
    A : separated list of directories, each directory\nis a directory of modules that\
    \ replace upgradeable\nmodules in the runtime image\n--add-modules <module name>[,<module\
    \ name>...]\nroot modules to resolve in addition to the initial module.\n<module\
    \ name> can also be ALL-DEFAULT, ALL-SYSTEM,\nALL-MODULE-PATH.\n--list-modules\n\
    list observable modules and exit\n-d <module name>\n--describe-module <module\
    \ name>\ndescribe a module and exit\n--dry-run     create VM and load main class\
    \ but do not execute main method.\nThe --dry-run option may be useful for validating\
    \ the\ncommand-line options such as the module system configuration.\n--validate-modules\n\
    validate all modules and exit\nThe --validate-modules option may be useful for\
    \ finding\nconflicts and other errors with modules on the module path.\n-D<name>=<value>\n\
    set a system property\n-verbose:[class|module|gc|jni]\nenable verbose output\n\
    -version      print product version to the error stream and exit\n--version  \
    \   print product version to the output stream and exit\n-showversion  print product\
    \ version to the error stream and continue\n--show-version\nprint product version\
    \ to the output stream and continue\n--show-module-resolution\nshow module resolution\
    \ output during startup\n-? -h -help\nprint this help message to the error stream\n\
    --help        print this help message to the output stream\n-X            print\
    \ help on extra options to the error stream\n--help-extra  print help on extra\
    \ options to the output stream\n-ea[:<packagename>...|:<classname>]\n-enableassertions[:<packagename>...|:<classname>]\n\
    enable assertions with specified granularity\n-da[:<packagename>...|:<classname>]\n\
    -disableassertions[:<packagename>...|:<classname>]\ndisable assertions with specified\
    \ granularity\n-esa | -enablesystemassertions\nenable system assertions\n-dsa\
    \ | -disablesystemassertions\ndisable system assertions\n-agentlib:<libname>[=<options>]\n\
    load native agent library <libname>, e.g. -agentlib:jdwp\nsee also -agentlib:jdwp=help\n\
    -agentpath:<pathname>[=<options>]\nload native agent library by full pathname\n\
    -javaagent:<jarpath>[=<options>]\nload Java programming language agent, see java.lang.instrument\n\
    -splash:<imagepath>\nshow splash screen with specified image\nHiDPI scaled images\
    \ are automatically supported and used\nif available. The unscaled image filename,\
    \ e.g. image.ext,\nshould always be passed as the argument to the -splash option.\n\
    The most appropriate scaled image provided will be picked up\nautomatically.\n\
    See the SplashScreen API documentation for more information\n@argument files\n\
    one or more argument files containing options\n-disable-@files\nprevent further\
    \ argument file expansion\n--enable-preview\nallow classes to depend on preview\
    \ features of this release"
  type: File
  outputBinding:
    glob: $(inputs.in_cp)
cwlVersion: v1.1
baseCommand:
- java
