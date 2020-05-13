class: CommandLineTool
id: query_testlists.cwl
inputs:
- id: debug
  doc: Print debug information (very verbose) to file /tmp/tmpyq76ofy5/query_testlists.log
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: Add additional context (time and file) to log messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: silent
  doc: Print only warnings and error messages
  type: boolean
  inputBinding:
    prefix: --silent
- id: count
  doc: Rather than listing tests, just give counts by category/machine/compiler.
  type: boolean
  inputBinding:
    prefix: --count
- id: list
  doc: Rather than listing tests, list the available options for --xml-category, --xml-machine,
    or --xml-compiler. (The singular and plural forms are equivalent - so '--list
    category' is equivalent to '--list categories', etc.)
  type: string
  inputBinding:
    prefix: --list
- id: show_options
  doc: For each test, also show options for that test (wallclock time, memory leak
    tolerance, etc.). (Has no effect with --list or --count options.)
  type: boolean
  inputBinding:
    prefix: --show-options
- id: define_test_types
  doc: At the top of the list of tests, define all of the possible test types. (Has
    no effect with --list or --count options.)
  type: boolean
  inputBinding:
    prefix: --define-testtypes
- id: xml_category
  doc: Only include tests in this category; default is all categories.
  type: string
  inputBinding:
    prefix: --xml-category
- id: xml_machine
  doc: Only include tests for this machine; default is all machines.
  type: string
  inputBinding:
    prefix: --xml-machine
- id: xml_compiler
  doc: Only include tests for this compiler; default is all compilers.
  type: string
  inputBinding:
    prefix: --xml-compiler
- id: xml_test_list
  doc: Path to testlist file from which tests are gathered; default is all files specified
    in config_files.xml.
  type: string
  inputBinding:
    prefix: --xml-testlist
outputs: []
cwlVersion: v1.1
baseCommand:
- query_testlists
