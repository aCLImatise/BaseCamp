version 1.0

task Yapp {
  input {
    String? give_parser_module
    File? create_file_grammaroutput
    Boolean? create_standalone_module
    Boolean? disable_source_file
    File? create_file_outfile
    File? uses_file_filename
    File? adds_very_first
    Boolean? display_current_version
    Boolean? more_options
    Boolean? options
    String grammar
  }
  command <<<
    yapp \
      ~{grammar} \
      ~{if defined(give_parser_module) then ("-m " +  '"' + give_parser_module + '"') else ""} \
      ~{if (create_file_grammaroutput) then "-v" else ""} \
      ~{if (create_standalone_module) then "-s" else ""} \
      ~{if (disable_source_file) then "-n" else ""} \
      ~{if defined(create_file_outfile) then ("-o " +  '"' + create_file_outfile + '"') else ""} \
      ~{if defined(uses_file_filename) then ("-t " +  '"' + uses_file_filename + '"') else ""} \
      ~{if defined(adds_very_first) then ("-b " +  '"' + adds_very_first + '"') else ""} \
      ~{if (display_current_version) then "-V" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    give_parser_module: "Give your parser module the name <module>\\ndefault is <grammar>"
    create_file_grammaroutput: "Create a file <grammar>.output describing your parser"
    create_standalone_module: "Create a standalone module in which the driver is included"
    disable_source_file: "Disable source file line numbering embedded in your parser"
    create_file_outfile: "Create the file <outfile> for your parser module\\nDefault is <grammar>.pm or, if -m A::Module::Name is\\nspecified, Name.pm"
    uses_file_filename: "Uses the file <filename> as a template for creating the parser\\nmodule file.  Default is to use internal template defined\\nin Parse::Yapp::Output"
    adds_very_first: "Adds '#!<shebang>' as the very first line of the output file"
    display_current_version: "Display current version of Parse::Yapp and gracefully exits"
    more_options: ""
    options: ""
    grammar: "The grammar file. If no suffix is given, and the file\\ndoes not exists, .yp is added"
  }
  output {
    File out_stdout = stdout()
    File out_create_file_grammaroutput = "${in_create_file_grammaroutput}"
    File out_uses_file_filename = "${in_uses_file_filename}"
    File out_adds_very_first = "${in_adds_very_first}"
  }
}