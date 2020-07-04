version 1.0

task QueryTestlists {
  input {
    Boolean? debug
    Boolean? verbose
    Boolean? silent
    Boolean? count
    String? list
    Boolean? show_options
    Boolean? define_test_types
    String? xml_category
    String? xml_machine
    String? xml_compiler
    String? xml_test_list
  }
  command <<<
    query_testlists \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--silent" false="" silent} \
      ~{true="--count" false="" count} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{true="--show-options" false="" show_options} \
      ~{true="--define-testtypes" false="" define_test_types} \
      ~{if defined(xml_category) then ("--xml-category " +  '"' + xml_category + '"') else ""} \
      ~{if defined(xml_machine) then ("--xml-machine " +  '"' + xml_machine + '"') else ""} \
      ~{if defined(xml_compiler) then ("--xml-compiler " +  '"' + xml_compiler + '"') else ""} \
      ~{if defined(xml_test_list) then ("--xml-testlist " +  '"' + xml_test_list + '"') else ""}
  >>>
  parameter_meta {
    debug: "Print debug information (very verbose) to file /tmp/tmpeksbd5_3/query_testlists.log"
    verbose: "Add additional context (time and file) to log messages"
    silent: "Print only warnings and error messages"
    count: "Rather than listing tests, just give counts by category/machine/compiler."
    list: "Rather than listing tests, list the available options for --xml-category, --xml-machine, or --xml-compiler. (The singular and plural forms are equivalent - so '--list category' is equivalent to '--list categories', etc.)"
    show_options: "For each test, also show options for that test (wallclock time, memory leak tolerance, etc.). (Has no effect with --list or --count options.)"
    define_test_types: "At the top of the list of tests, define all of the possible test types. (Has no effect with --list or --count options.)"
    xml_category: "Only include tests in this category; default is all categories."
    xml_machine: "Only include tests for this machine; default is all machines."
    xml_compiler: "Only include tests for this compiler; default is all compilers."
    xml_test_list: "Path to testlist file from which tests are gathered; default is all files specified in config_files.xml."
  }
}