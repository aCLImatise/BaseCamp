class: CommandLineTool
id: test_musicc.py.cwl
inputs:
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_locals
  doc: Show local variables in tracebacks
  type: boolean?
  inputBinding:
    prefix: --locals
- id: in_fail_fast
  doc: Stop on first fail or error
  type: boolean?
  inputBinding:
    prefix: --failfast
- id: in_catch
  doc: Catch Ctrl-C and display results so far
  type: boolean?
  inputBinding:
    prefix: --catch
- id: in_buffer
  doc: Buffer stdout and stderr during tests
  type: boolean?
  inputBinding:
    prefix: --buffer
- id: in_tests
  doc: a list of any number of test modules, classes and test
  type: string
  inputBinding:
    position: 0
- id: in_methods_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
- id: in_test_music_cdot_py
  doc: '- run default set of tests'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- test_musicc.py
