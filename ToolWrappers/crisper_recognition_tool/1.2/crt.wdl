version 1.0

task Crt {
  input {
    Boolean? d_three_two
    Boolean? d_six_four
    Boolean? server
    File? cp
    File? classpath
    Boolean? namevalueset_system_property
    Boolean? verbose
    Boolean? show_version
    Boolean? jre_restrict_search
    Boolean? print_help_nonstandard
    Boolean? ea
    Boolean? enable_assertions
    Boolean? da
    Boolean? disable_assertions
    Boolean? esa
    Boolean? dsa
    Boolean? agent_lib
    Boolean? agent_path
    Boolean? java_agent
    Boolean? splash
    Boolean? options
    String or
  }
  command <<<
    crt \
      ~{or} \
      ~{if (d_three_two) then "-d32" else ""} \
      ~{if (d_six_four) then "-d64" else ""} \
      ~{if (server) then "-server" else ""} \
      ~{if defined(cp) then ("-cp " +  '"' + cp + '"') else ""} \
      ~{if defined(classpath) then ("-classpath " +  '"' + classpath + '"') else ""} \
      ~{if (namevalueset_system_property) then "-D" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (show_version) then "-showversion" else ""} \
      ~{if (jre_restrict_search) then "-jre-restrict-search" else ""} \
      ~{if (print_help_nonstandard) then "-X" else ""} \
      ~{if (ea) then "-ea" else ""} \
      ~{if (enable_assertions) then "-enableassertions" else ""} \
      ~{if (da) then "-da" else ""} \
      ~{if (disable_assertions) then "-disableassertions" else ""} \
      ~{if (esa) then "-esa" else ""} \
      ~{if (dsa) then "-dsa" else ""} \
      ~{if (agent_lib) then "-agentlib" else ""} \
      ~{if (agent_path) then "-agentpath" else ""} \
      ~{if (java_agent) then "-javaagent" else ""} \
      ~{if (splash) then "-splash" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    d_three_two: "use a 32-bit data model if available"
    d_six_four: "use a 64-bit data model if available"
    server: "to select the \\\"server\\\" VM\\nThe default VM is server,\\nbecause you are running on a server-class machine."
    cp: ""
    classpath: "A : separated list of directories, JAR archives,\\nand ZIP archives to search for class files."
    namevalueset_system_property: "<name>=<value>\\nset a system property"
    verbose: ":[class|gc|jni]\\nenable verbose output"
    show_version: "print product version and continue"
    jre_restrict_search: "| -no-jre-restrict-search\\nWarning: this feature is deprecated and will be removed\\nin a future release.\\ninclude/exclude user private JREs in the version search"
    print_help_nonstandard: "print help on non-standard options"
    ea: "[:<packagename>...|:<classname>]"
    enable_assertions: "[:<packagename>...|:<classname>]\\nenable assertions with specified granularity"
    da: "[:<packagename>...|:<classname>]"
    disable_assertions: "[:<packagename>...|:<classname>]\\ndisable assertions with specified granularity"
    esa: "| -enablesystemassertions\\nenable system assertions"
    dsa: "| -disablesystemassertions\\ndisable system assertions"
    agent_lib: ":<libname>[=<options>]\\nload native agent library <libname>, e.g. -agentlib:hprof\\nsee also, -agentlib:jdwp=help and -agentlib:hprof=help"
    agent_path: ":<pathname>[=<options>]\\nload native agent library by full pathname"
    java_agent: ":<jarpath>[=<options>]\\nload Java programming language agent, see java.lang.instrument"
    splash: ":<imagepath>\\nshow splash screen with specified image"
    options: ""
    or: "java [-options] -jar jarfile [args...]\\n(to execute a jar file)"
  }
  output {
    File out_stdout = stdout()
  }
}