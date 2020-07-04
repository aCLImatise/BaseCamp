version 1.0

task Eoulsan.sh {
  input {
    Boolean? about
    File? conf
    File? javahome_path
    String? jvm_arguments_server
    Boolean? license
    File? log
    String? loglevel
    Int? maximal_memory_usage
    String? additional_classpath_eoulsan
    Boolean? propertyvalue_set_configuration
    Boolean? version
    File? jvm_working_directory
    String action
    String arguments
  }
  command <<<
    eoulsan.sh \
      ~{action} \
      ~{arguments} \
      ~{true="-about" false="" about} \
      ~{if defined(conf) then ("-conf " +  '"' + conf + '"') else ""} \
      ~{if defined(javahome_path) then ("-j " +  '"' + javahome_path + '"') else ""} \
      ~{if defined(jvm_arguments_server) then ("-J " +  '"' + jvm_arguments_server + '"') else ""} \
      ~{true="-license" false="" license} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if defined(loglevel) then ("-loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(maximal_memory_usage) then ("-m " +  '"' + maximal_memory_usage + '"') else ""} \
      ~{if defined(additional_classpath_eoulsan) then ("-p " +  '"' + additional_classpath_eoulsan + '"') else ""} \
      ~{true="-s" false="" propertyvalue_set_configuration} \
      ~{true="-version" false="" version} \
      ~{if defined(jvm_working_directory) then ("-w " +  '"' + jvm_working_directory + '"') else ""}
  >>>
  parameter_meta {
    about: "display information about this software"
    conf: "configuration file to use"
    javahome_path: "JAVA_HOME path"
    jvm_arguments_server: "JVM arguments (-server by default)"
    license: "display information about the license of this software"
    log: "external log file"
    loglevel: "log level"
    maximal_memory_usage: "maximal memory usage for JVM in MB (4096 by default)"
    additional_classpath_eoulsan: "additional classpath for eoulsan plugins"
    propertyvalue_set_configuration: "<property=value>   set a configuration setting. This option can be used several times"
    version: "show version of the software"
    jvm_working_directory: "JVM working directory"
    action: ""
    arguments: ""
  }
}