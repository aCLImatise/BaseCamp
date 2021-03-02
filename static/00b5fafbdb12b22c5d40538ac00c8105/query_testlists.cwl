class: CommandLineTool
id: query_testlists.cwl
inputs:
- id: in_debug
  doc: Print debug information (very verbose) to file /query_testlists.log
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: Add additional context (time and file) to log messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_silent
  doc: Print only warnings and error messages
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_count
  doc: Rather than listing tests, just give counts by category/machine/compiler.
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_list
  doc: "Rather than listing tests, list the available options for\n--xml-category,\
    \ --xml-machine, or --xml-compiler.\n(The singular and plural forms are equivalent\
    \ - so '--list category'\nis equivalent to '--list categories', etc.)"
  type: string?
  inputBinding:
    prefix: --list
- id: in_show_options
  doc: "For each test, also show options for that test\n(wallclock time, memory leak\
    \ tolerance, etc.).\n(Has no effect with --list or --count options.)"
  type: boolean?
  inputBinding:
    prefix: --show-options
- id: in_define_test_types
  doc: "At the top of the list of tests, define all of the possible test types.\n\
    (Has no effect with --list or --count options.)"
  type: boolean?
  inputBinding:
    prefix: --define-testtypes
- id: in_xml_category
  doc: Only include tests in this category; default is all categories.
  type: string?
  inputBinding:
    prefix: --xml-category
- id: in_xml_machine
  doc: Only include tests for this machine; default is all machines.
  type: string?
  inputBinding:
    prefix: --xml-machine
- id: in_xml_compiler
  doc: Only include tests for this compiler; default is all compilers.
  type: string?
  inputBinding:
    prefix: --xml-compiler
- id: in_xml_test_list
  doc: "Path to testlist file from which tests are gathered;\ndefault is all files\
    \ specified in config_files.xml.\n"
  type: File?
  inputBinding:
    prefix: --xml-testlist
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- query_testlists
