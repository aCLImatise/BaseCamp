version 1.0

task Jaotc {
  input {
    File? output_file_name
    String? class_name
    String? jar
    String? module
    Directory? directory
    File? search_path
    File? compile_commands
    Boolean? compile_for_tiered
    Boolean? compile_with_assertions
    Int? compile_threads
    Boolean? ignore_errors
    Boolean? exit_on_error
    Boolean? info
    Boolean? verbose
    Boolean? debug
    Boolean? linker_path
    Boolean? flag_pass_flag
    String list
  }
  command <<<
    jaotc \
      ~{list} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(class_name) then ("--class-name " +  '"' + class_name + '"') else ""} \
      ~{if defined(jar) then ("--jar " +  '"' + jar + '"') else ""} \
      ~{if defined(module) then ("--module " +  '"' + module + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(search_path) then ("--search-path " +  '"' + search_path + '"') else ""} \
      ~{if defined(compile_commands) then ("--compile-commands " +  '"' + compile_commands + '"') else ""} \
      ~{if (compile_for_tiered) then "--compile-for-tiered" else ""} \
      ~{if (compile_with_assertions) then "--compile-with-assertions" else ""} \
      ~{if defined(compile_threads) then ("--compile-threads " +  '"' + compile_threads + '"') else ""} \
      ~{if (ignore_errors) then "--ignore-errors" else ""} \
      ~{if (exit_on_error) then "--exit-on-error" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (linker_path) then "--linker-path" else ""} \
      ~{if (flag_pass_flag) then "-J" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_name: "Output file name"
    class_name: "List of classes to compile"
    jar: "List of jar files to compile"
    module: "List of modules to compile"
    directory: "List of directories where to search for files to compile"
    search_path: "List of directories where to search for specified files"
    compile_commands: "Name of file with compile commands"
    compile_for_tiered: "Generate profiling code for tiered compilation"
    compile_with_assertions: "Compile with java assertions"
    compile_threads: "Number of compilation threads to be used"
    ignore_errors: "Ignores all exceptions thrown during class loading"
    exit_on_error: "Exit on compilation errors"
    info: "Print information during compilation"
    verbose: "Print verbose information"
    debug: "Print debug information"
    linker_path: "Full path to linker executable"
    flag_pass_flag: "<flag>                   Pass <flag> directly to the runtime system"
    list: "A : separated list of class names, modules, jar files\\nor directories which contain class files."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}