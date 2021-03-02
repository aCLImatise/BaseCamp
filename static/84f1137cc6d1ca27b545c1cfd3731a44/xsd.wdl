version 1.0

task Xsd {
  input {
    String help
    String version
    String cxx_tree
    String cxx_parser
  }
  command <<<
    xsd \
      ~{help} \
      ~{version} \
      ~{cxx_tree} \
      ~{cxx_parser}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help: "Print usage information and exit. Use\\n'help <cmd>' for command-specific options."
    version: "Print version and exit."
    cxx_tree: "Generate the C++/Tree mapping."
    cxx_parser: "Generate the C++/Parser mapping."
  }
  output {
    File out_stdout = stdout()
  }
}