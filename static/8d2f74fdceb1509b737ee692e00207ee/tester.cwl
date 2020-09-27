class: CommandLineTool
id: tester.cwl
inputs:
- id: in_quiet
  doc: quiet
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose, default behavior
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_noisy
  doc: noisy
  type: boolean
  inputBinding:
    prefix: --noisy
- id: in_recursive
  doc: "option to get tests from package recursively\n(default=false)"
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_testdir
  doc: "option to specify the name of the directory containing\nthe tests (default='Tests')"
  type: Directory
  inputBinding:
    prefix: --testdir
- id: in_func_prefix
  doc: "option to specify the prefix a method or a function\nneeds, to be included\
    \ in the list of tests.\n(default='test_')"
  type: string
  inputBinding:
    prefix: --funcPrefix
- id: in_mod_prefix
  doc: "option to specify the prefix a test module needs, to\nbe included in the list\
    \ of tests. (default= no prefix)"
  type: string
  inputBinding:
    prefix: --modPrefix
- id: in_output
  doc: name of an output file
  type: File
  inputBinding:
    prefix: --output
- id: in_subprocess
  doc: "option to specify whether or not to run each test\nmodule in a subprocess\
    \ (default=False)"
  type: boolean
  inputBinding:
    prefix: --subprocess
- id: in_no_report
  doc: "option to specify whether or not a report file will be\ncreated. When the\
    \ option is given no report will be\ncreated otherwise a report will be created\
    \ in a\nTESTREPORT subdirectory. (default=a report will be\ncreated)"
  type: boolean
  inputBinding:
    prefix: --noreport
- id: in_exit_on_fail
  doc: "option to specify whether or not the tester should\nexit after the first failed\
    \ test. (default=False)\n"
  type: boolean
  inputBinding:
    prefix: --exitOnFail
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: name of an output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- tester
