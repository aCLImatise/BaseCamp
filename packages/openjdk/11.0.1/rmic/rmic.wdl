version 1.0

task Rmic {
  input {
    String? invalid_option_argument
    Boolean? keep
    Boolean? keep_generated
    Boolean? v_one_dot_one
    Boolean? v_compat
    Boolean? v_one_dot_two
    Boolean? generate_debugging_info
    Boolean? nowarn
    Boolean? no_write
    Boolean? verbose
    File? classpath
    File? boot_classpath
    Directory? specify_where_place
    Boolean? runtime_flag_argument
    String options
    String class_names
  }
  command <<<
    rmic \
      ~{options} \
      ~{class_names} \
      ~{if defined(invalid_option_argument) then ("-h " +  '"' + invalid_option_argument + '"') else ""} \
      ~{if (keep) then "-keep" else ""} \
      ~{if (keep_generated) then "-keepgenerated" else ""} \
      ~{if (v_one_dot_one) then "-v1.1" else ""} \
      ~{if (v_compat) then "-vcompat" else ""} \
      ~{if (v_one_dot_two) then "-v1.2" else ""} \
      ~{if (generate_debugging_info) then "-g" else ""} \
      ~{if (nowarn) then "-nowarn" else ""} \
      ~{if (no_write) then "-nowrite" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if defined(classpath) then ("-classpath " +  '"' + classpath + '"') else ""} \
      ~{if defined(boot_classpath) then ("-bootclasspath " +  '"' + boot_classpath + '"') else ""} \
      ~{if defined(specify_where_place) then ("-d " +  '"' + specify_where_place + '"') else ""} \
      ~{if (runtime_flag_argument) then "-J" else ""}
  >>>
  parameter_meta {
    invalid_option_argument: "an invalid option or argument."
    keep: "Do not delete intermediate generated source files"
    keep_generated: "(same as \\\"-keep\\\")"
    v_one_dot_one: "Create stubs/skeletons for 1.1 stub protocol version (deprecated)"
    v_compat: "Create stubs/skeletons compatible with both\\n1.1 and 1.2 stub protocol versions (deprecated)"
    v_one_dot_two: "(default) Create stubs for 1.2 stub protocol version only (deprecated)"
    generate_debugging_info: "Generate debugging info"
    nowarn: "Generate no warnings"
    no_write: "Do not write compiled classes to the file system"
    verbose: "Output messages about what the compiler is doing"
    classpath: "Specify where to find input class files"
    boot_classpath: "Override location of bootstrap class files"
    specify_where_place: "Specify where to place generated class files"
    runtime_flag_argument: "<runtime flag>       Pass argument to the java interpreter"
    options: ""
    class_names: ""
  }
  output {
    File out_stdout = stdout()
  }
}