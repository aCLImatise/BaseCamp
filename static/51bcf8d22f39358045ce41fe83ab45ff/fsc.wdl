version 1.0

task Fsc {
  input {
    Boolean? ipv_four
    Int? max_idle
    String? port
    Boolean? reset
    Boolean? server
    Boolean? shutdown
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
    fsc \
      ~{options} \
      ~{source_files} \
      ~{if (ipv_four) then "-ipv4" else ""} \
      ~{if defined(max_idle) then ("-max-idle " +  '"' + max_idle + '"') else ""} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{if (reset) then "-reset" else ""} \
      ~{if (server) then "-server" else ""} \
      ~{if (shutdown) then "-shutdown" else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    ipv_four: "Use IPv4 rather than IPv6 for the server socket"
    max_idle: "Set idle timeout in minutes for fsc (use 0 for no timeout)"
    port: "Search and start compile server in given port only"
    reset: "Reset compile server caches"
    server: "<hostname:portnumber>  Specify compile server socket"
    shutdown: "Shutdown compile server"
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