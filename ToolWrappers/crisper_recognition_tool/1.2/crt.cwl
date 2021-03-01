class: CommandLineTool
id: crt.cwl
inputs:
- id: in_d_three_two
  doc: use a 32-bit data model if available
  type: boolean?
  inputBinding:
    prefix: -d32
- id: in_d_six_four
  doc: use a 64-bit data model if available
  type: boolean?
  inputBinding:
    prefix: -d64
- id: in_server
  doc: "to select the \"server\" VM\nThe default VM is server,\nbecause you are running\
    \ on a server-class machine."
  type: boolean?
  inputBinding:
    prefix: -server
- id: in_classpath
  doc: "A : separated list of directories, JAR archives,\nand ZIP archives to search\
    \ for class files."
  type: File?
  inputBinding:
    prefix: -classpath
- id: in_namevalueset_system_property
  doc: "<name>=<value>\nset a system property"
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_verbose
  doc: ":[class|gc|jni]\nenable verbose output"
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_show_version
  doc: print product version and continue
  type: boolean?
  inputBinding:
    prefix: -showversion
- id: in_no_jre_restrict_search
  doc: "Warning: this feature is deprecated and will be removed\nin a future release.\n\
    include/exclude user private JREs in the version search"
  type: boolean?
  inputBinding:
    prefix: -no-jre-restrict-search
- id: in_print_help_nonstandard
  doc: print help on non-standard options
  type: boolean?
  inputBinding:
    prefix: -X
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
  doc: ":<libname>[=<options>]\nload native agent library <libname>, e.g. -agentlib:hprof\n\
    see also, -agentlib:jdwp=help and -agentlib:hprof=help"
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
  doc: ":<imagepath>\nshow splash screen with specified image"
  type: boolean?
  inputBinding:
    prefix: -splash
- id: in_options
  doc: ''
  type: boolean?
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
hints: []
cwlVersion: v1.1
baseCommand:
- crt
