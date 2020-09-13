version 1.0

task Javap {
  input {
    Boolean? version
    Boolean? verbose
    Boolean? print_line_number
    Boolean? public
    Boolean? protected
    Boolean? package
    Boolean? private
    Boolean? disassemble_the_code
    Boolean? print_internal_type
    Boolean? sysinfo
    Boolean? constants
    String? module
    File? module_path
    String? system
    File? class_path
    File? classpath
    File? cp
    File? boot_classpath
    File path_slash_to_slash_my_class_dot_class
  }
  command <<<
    javap \
      ~{path_slash_to_slash_my_class_dot_class} \
      ~{if (version) then "-version" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (print_line_number) then "-l" else ""} \
      ~{if (public) then "-public" else ""} \
      ~{if (protected) then "-protected" else ""} \
      ~{if (package) then "-package" else ""} \
      ~{if (private) then "-private" else ""} \
      ~{if (disassemble_the_code) then "-c" else ""} \
      ~{if (print_internal_type) then "-s" else ""} \
      ~{if (sysinfo) then "-sysinfo" else ""} \
      ~{if (constants) then "-constants" else ""} \
      ~{if defined(module) then ("--module " +  '"' + module + '"') else ""} \
      ~{if defined(module_path) then ("--module-path " +  '"' + module_path + '"') else ""} \
      ~{if defined(system) then ("--system " +  '"' + system + '"') else ""} \
      ~{if defined(class_path) then ("--class-path " +  '"' + class_path + '"') else ""} \
      ~{if defined(classpath) then ("-classpath " +  '"' + classpath + '"') else ""} \
      ~{if defined(cp) then ("-cp " +  '"' + cp + '"') else ""} \
      ~{if defined(boot_classpath) then ("-bootclasspath " +  '"' + boot_classpath + '"') else ""}
  >>>
  parameter_meta {
    version: "Version information"
    verbose: "Print additional information"
    print_line_number: "Print line number and local variable tables"
    public: "Show only public classes and members"
    protected: "Show protected/public classes and members"
    package: "Show package/protected/public classes\\nand members (default)"
    private: "Show all classes and members"
    disassemble_the_code: "Disassemble the code"
    print_internal_type: "Print internal type signatures"
    sysinfo: "Show system info (path, size, date, MD5 hash)\\nof class being processed"
    constants: "Show final constants"
    module: "Specify module containing classes to be disassembled"
    module_path: "Specify where to find application modules"
    system: "Specify where to find system modules"
    class_path: "Specify where to find user class files"
    classpath: "Specify where to find user class files"
    cp: "Specify where to find user class files"
    boot_classpath: "Override location of bootstrap class files"
    path_slash_to_slash_my_class_dot_class: "jar:file:///path/to/MyJar.jar!/mypkg/MyClass.class"
  }
  output {
    File out_stdout = stdout()
  }
}