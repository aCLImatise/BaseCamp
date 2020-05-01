#!/usr/bin/env cwl-runner

baseCommand:
- query_testlists
class: CommandLineTool
cwlVersion: v1.0
id: query_testlists
inputs:
- doc: Print debug information (very verbose) to file /tmp/tmpyq76ofy5/query_testlists.log
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Add additional context (time and file) to log messages
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Print only warnings and error messages
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: Rather than listing tests, just give counts by category/machine/compiler.
  id: count
  inputBinding:
    prefix: --count
  type: boolean
- doc: Rather than listing tests, list the available options for --xml-category, --xml-machine,
    or --xml-compiler. (The singular and plural forms are equivalent - so '--list
    category' is equivalent to '--list categories', etc.)
  id: list
  inputBinding:
    prefix: --list
  type: string
- doc: For each test, also show options for that test (wallclock time, memory leak
    tolerance, etc.). (Has no effect with --list or --count options.)
  id: show_options
  inputBinding:
    prefix: --show-options
  type: boolean
- doc: At the top of the list of tests, define all of the possible test types. (Has
    no effect with --list or --count options.)
  id: define_test_types
  inputBinding:
    prefix: --define-testtypes
  type: boolean
- doc: Only include tests in this category; default is all categories.
  id: xml_category
  inputBinding:
    prefix: --xml-category
  type: string
- doc: Only include tests for this machine; default is all machines.
  id: xml_machine
  inputBinding:
    prefix: --xml-machine
  type: string
- doc: Only include tests for this compiler; default is all compilers.
  id: xml_compiler
  inputBinding:
    prefix: --xml-compiler
  type: string
- doc: Path to testlist file from which tests are gathered; default is all files specified
    in config_files.xml.
  id: xml_test_list
  inputBinding:
    prefix: --xml-testlist
  type: string
