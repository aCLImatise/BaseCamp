version 1.0

task Qsignature {
  input {
    File? d_three_two
    Boolean? options
    String or
  }
  command <<<
    qsignature \
      ~{or} \
      ~{if (d_three_two) then "-d32" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    d_three_two: "use a 32-bit data model if available\\n-d64          use a 64-bit data model if available\\n-server       to select the \\\"server\\\" VM\\nThe default VM is server,\\nbecause you are running on a server-class machine.\\n-cp <class search path of directories and zip/jar files>\\n-classpath <class search path of directories and zip/jar files>\\nA : separated list of directories, JAR archives,\\nand ZIP archives to search for class files.\\n-D<name>=<value>\\nset a system property\\n-verbose:[class|gc|jni]\\nenable verbose output\\n-version      print product version and exit\\n-version:<value>\\nWarning: this feature is deprecated and will be removed\\nin a future release.\\nrequire the specified version to run\\n-showversion  print product version and continue\\n-jre-restrict-search | -no-jre-restrict-search\\nWarning: this feature is deprecated and will be removed\\nin a future release.\\ninclude/exclude user private JREs in the version search\\n-? -help      print this help message\\n-X            print help on non-standard options\\n-ea[:<packagename>...|:<classname>]\\n-enableassertions[:<packagename>...|:<classname>]\\nenable assertions with specified granularity\\n-da[:<packagename>...|:<classname>]\\n-disableassertions[:<packagename>...|:<classname>]\\ndisable assertions with specified granularity\\n-esa | -enablesystemassertions\\nenable system assertions\\n-dsa | -disablesystemassertions\\ndisable system assertions\\n-agentlib:<libname>[=<options>]\\nload native agent library <libname>, e.g. -agentlib:hprof\\nsee also, -agentlib:jdwp=help and -agentlib:hprof=help\\n-agentpath:<pathname>[=<options>]\\nload native agent library by full pathname\\n-javaagent:<jarpath>[=<options>]\\nload Java programming language agent, see java.lang.instrument\\n-splash:<imagepath>\\nshow splash screen with specified image"
    options: ""
    or: "java [-options] -jar jarfile [args...]\\n(to execute a jar file)"
  }
  output {
    File out_stdout = stdout()
    File out_d_three_two = "${in_d_three_two}"
  }
}