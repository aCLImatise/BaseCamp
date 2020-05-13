class: CommandLineTool
id: run_genomedata_tests.py.cwl
inputs:
- id: tests
  doc: a list of any number of test modules, classes and test methods.
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Quiet output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: locals
  doc: Show local variables in tracebacks
  type: boolean
  inputBinding:
    prefix: --locals
- id: fail_fast
  doc: Stop on first fail or error
  type: boolean
  inputBinding:
    prefix: --failfast
- id: catch
  doc: Catch Ctrl-C and display results so far
  type: boolean
  inputBinding:
    prefix: --catch
- id: buffer
  doc: Buffer stdout and stderr during tests
  type: boolean
  inputBinding:
    prefix: --buffer
- id: k
  doc: Only run tests which match the given substring
  type: string
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- run_genomedata_tests.py
