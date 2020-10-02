class: CommandLineTool
id: crt.cwl
inputs:
- id: in_d_three_two
  doc: "use a 32-bit data model if available\n-d64          use a 64-bit data model\
    \ if available\n-server       to select the \"server\" VM\nThe default VM is server,\n\
    because you are running on a server-class machine.\n-cp <class search path of\
    \ directories and zip/jar files>\n-classpath <class search path of directories\
    \ and zip/jar files>\nA : separated list of directories, JAR archives,\nand ZIP\
    \ archives to search for class files.\n-D<name>=<value>\nset a system property\n\
    -verbose:[class|gc|jni]\nenable verbose output\n-version      print product version\
    \ and exit\n-version:<value>\nWarning: this feature is deprecated and will be\
    \ removed\nin a future release.\nrequire the specified version to run\n-showversion\
    \  print product version and continue\n-jre-restrict-search | -no-jre-restrict-search\n\
    Warning: this feature is deprecated and will be removed\nin a future release.\n\
    include/exclude user private JREs in the version search\n-? -help      print this\
    \ help message\n-X            print help on non-standard options\n-ea[:<packagename>...|:<classname>]\n\
    -enableassertions[:<packagename>...|:<classname>]\nenable assertions with specified\
    \ granularity\n-da[:<packagename>...|:<classname>]\n-disableassertions[:<packagename>...|:<classname>]\n\
    disable assertions with specified granularity\n-esa | -enablesystemassertions\n\
    enable system assertions\n-dsa | -disablesystemassertions\ndisable system assertions\n\
    -agentlib:<libname>[=<options>]\nload native agent library <libname>, e.g. -agentlib:hprof\n\
    see also, -agentlib:jdwp=help and -agentlib:hprof=help\n-agentpath:<pathname>[=<options>]\n\
    load native agent library by full pathname\n-javaagent:<jarpath>[=<options>]\n\
    load Java programming language agent, see java.lang.instrument\n-splash:<imagepath>\n\
    show splash screen with specified image"
  type: File
  inputBinding:
    prefix: -d32
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_or
  doc: "java [-options] -jar jarfile [args...]\n(to execute a jar file)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_d_three_two
  doc: "use a 32-bit data model if available\n-d64          use a 64-bit data model\
    \ if available\n-server       to select the \"server\" VM\nThe default VM is server,\n\
    because you are running on a server-class machine.\n-cp <class search path of\
    \ directories and zip/jar files>\n-classpath <class search path of directories\
    \ and zip/jar files>\nA : separated list of directories, JAR archives,\nand ZIP\
    \ archives to search for class files.\n-D<name>=<value>\nset a system property\n\
    -verbose:[class|gc|jni]\nenable verbose output\n-version      print product version\
    \ and exit\n-version:<value>\nWarning: this feature is deprecated and will be\
    \ removed\nin a future release.\nrequire the specified version to run\n-showversion\
    \  print product version and continue\n-jre-restrict-search | -no-jre-restrict-search\n\
    Warning: this feature is deprecated and will be removed\nin a future release.\n\
    include/exclude user private JREs in the version search\n-? -help      print this\
    \ help message\n-X            print help on non-standard options\n-ea[:<packagename>...|:<classname>]\n\
    -enableassertions[:<packagename>...|:<classname>]\nenable assertions with specified\
    \ granularity\n-da[:<packagename>...|:<classname>]\n-disableassertions[:<packagename>...|:<classname>]\n\
    disable assertions with specified granularity\n-esa | -enablesystemassertions\n\
    enable system assertions\n-dsa | -disablesystemassertions\ndisable system assertions\n\
    -agentlib:<libname>[=<options>]\nload native agent library <libname>, e.g. -agentlib:hprof\n\
    see also, -agentlib:jdwp=help and -agentlib:hprof=help\n-agentpath:<pathname>[=<options>]\n\
    load native agent library by full pathname\n-javaagent:<jarpath>[=<options>]\n\
    load Java programming language agent, see java.lang.instrument\n-splash:<imagepath>\n\
    show splash screen with specified image"
  type: File
  outputBinding:
    glob: $(inputs.in_d_three_two)
cwlVersion: v1.1
baseCommand:
- crt
