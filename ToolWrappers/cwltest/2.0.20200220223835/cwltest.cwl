class: CommandLineTool
id: ../../../cwltest.cwl
inputs:
- id: in_test
  doc: YAML file describing test cases
  type: File
  inputBinding:
    prefix: --test
- id: in_basedir
  doc: Basedir to use for tests
  type: string
  inputBinding:
    prefix: --basedir
- id: in_list_tests_then
  doc: List tests then exit
  type: boolean
  inputBinding:
    prefix: -l
- id: in_run_specific_tests_format
  doc: Run specific tests, format is 1,3-6,9
  type: long
  inputBinding:
    prefix: -n
- id: in_run_specific_tests_using
  doc: "Run specific tests using their short names separated\nby comma"
  type: string
  inputBinding:
    prefix: -s
- id: in_tool
  doc: CWL runner executable to use (default 'cwl-runner'
  type: string
  inputBinding:
    prefix: --tool
- id: in_only_tools
  doc: Only test CommandLineTools
  type: boolean
  inputBinding:
    prefix: --only-tools
- id: in_tags
  doc: Tags to be tested
  type: string
  inputBinding:
    prefix: --tags
- id: in_junit_xml
  doc: Path to JUnit xml file
  type: File
  inputBinding:
    prefix: --junit-xml
- id: in_junit_verbose
  doc: Store more verbose output to JUnit xml file
  type: File
  inputBinding:
    prefix: --junit-verbose
- id: in_test_arg
  doc: "==--cache-dir\nAdditional argument given in test cases and required\nprefix\
    \ for tool runner."
  type: string
  inputBinding:
    prefix: --test-arg
- id: in_specifies_number_run
  doc: "Specifies the number of tests to run simultaneously\n(defaults to one)."
  type: long
  inputBinding:
    prefix: -j
- id: in_verbose
  doc: More verbose output during test run.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_classname
  doc: Specify classname for the Test Suite.
  type: string
  inputBinding:
    prefix: --classname
- id: in_timeout
  doc: "Time of execution in seconds after which the test will\nbe skipped. Defaults\
    \ to 600 seconds (10.0 minutes)."
  type: double
  inputBinding:
    prefix: --timeout
- id: in_badge_dir
  doc: Directory that stores JSON files for badges.
  type: Directory
  inputBinding:
    prefix: --badgedir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_junit_verbose
  doc: Store more verbose output to JUnit xml file
  type: File
  outputBinding:
    glob: $(inputs.in_junit_verbose)
cwlVersion: v1.1
baseCommand:
- cwltest
