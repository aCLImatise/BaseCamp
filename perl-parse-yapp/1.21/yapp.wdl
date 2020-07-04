version 1.0

task Yapp {
  input {
    String? give_parser_module
    Boolean? create_file_grammaroutput
    Boolean? create_standalone_module
    Boolean? disable_source_file
    String? create_file_outfile
    File? uses_file_filename
    String? adds_very_first
    Boolean? display_current_version
    Boolean? options
    Boolean? more_options
    String grammar
  }
  command <<<
    yapp \
      ~{grammar} \
      ~{if defined(give_parser_module) then ("-m " +  '"' + give_parser_module + '"') else ""} \
      ~{true="-v" false="" create_file_grammaroutput} \
      ~{true="-s" false="" create_standalone_module} \
      ~{true="-n" false="" disable_source_file} \
      ~{if defined(create_file_outfile) then ("-o " +  '"' + create_file_outfile + '"') else ""} \
      ~{if defined(uses_file_filename) then ("-t " +  '"' + uses_file_filename + '"') else ""} \
      ~{if defined(adds_very_first) then ("-b " +  '"' + adds_very_first + '"') else ""} \
      ~{true="-V" false="" display_current_version} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    give_parser_module: "Give your parser module the name <module> default is <grammar>"
    create_file_grammaroutput: "Create a file <grammar>.output describing your parser"
    create_standalone_module: "Create a standalone module in which the driver is included"
    disable_source_file: "Disable source file line numbering embedded in your parser"
    create_file_outfile: "Create the file <outfile> for your parser module Default is <grammar>.pm or, if -m A::Module::Name is specified, Name.pm"
    uses_file_filename: "Uses the file <filename> as a template for creating the parser module file.  Default is to use internal template defined in Parse::Yapp::Output"
    adds_very_first: "Adds '#!<shebang>' as the very first line of the output file"
    display_current_version: "Display current version of Parse::Yapp and gracefully exits"
    options: ""
    more_options: ""
    grammar: "The grammar file. If no suffix is given, and the file does not exists, .yp is added"
  }
}