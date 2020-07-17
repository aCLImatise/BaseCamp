class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cwltest.cwl
inputs:
- id: test
  doc: YAML file describing test cases
  type: string
  inputBinding:
    prefix: --test
- id: basedir
  doc: Basedir to use for tests
  type: string
  inputBinding:
    prefix: --basedir
- id: list_tests_exit
  doc: List tests then exit
  type: boolean
  inputBinding:
    prefix: -l
- id: run_specific_tests_format
  doc: Run specific tests, format is 1,3-6,9
  type: string
  inputBinding:
    prefix: -n
- id: run_specific_tests_using
  doc: Run specific tests using their short names separated by comma
  type: string
  inputBinding:
    prefix: -s
- id: tool
  doc: CWL runner executable to use (default 'cwl-runner'
  type: string
  inputBinding:
    prefix: --tool
- id: only_tools
  doc: Only test CommandLineTools
  type: boolean
  inputBinding:
    prefix: --only-tools
- id: tags
  doc: Tags to be tested
  type: string
  inputBinding:
    prefix: --tags
- id: junit_xml
  doc: Path to JUnit xml file
  type: string
  inputBinding:
    prefix: --junit-xml
- id: junit_verbose
  doc: Store more verbose output to JUnit xml file
  type: boolean
  inputBinding:
    prefix: --junit-verbose
- id: test_arg
  doc: ==--cache-dir Additional argument given in test cases and required prefix for
    tool runner.
  type: string
  inputBinding:
    prefix: --test-arg
- id: specifies_number_tests
  doc: Specifies the number of tests to run simultaneously (defaults to one).
  type: string
  inputBinding:
    prefix: -j
- id: verbose
  doc: More verbose output during test run.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: classname
  doc: Specify classname for the Test Suite.
  type: string
  inputBinding:
    prefix: --classname
- id: timeout
  doc: Time of execution in seconds after which the test will be skipped. Defaults
    to 600 seconds (10.0 minutes).
  type: string
  inputBinding:
    prefix: --timeout
- id: badge_dir
  doc: Directory that stores JSON files for badges.
  type: string
  inputBinding:
    prefix: --badgedir
outputs: []
cwlVersion: v1.1
baseCommand:
- cwltest
