#!/usr/bin/env cwl-runner

baseCommand:
- run_genomedata_tests.py
class: CommandLineTool
cwlVersion: v1.0
id: run_genomedata_tests.py
inputs:
- doc: a list of any number of test modules, classes and test methods.
  id: tests
  inputBinding:
    position: 0
  type: string
- doc: Verbose output
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Quiet output
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Show local variables in tracebacks
  id: locals
  inputBinding:
    prefix: --locals
  type: boolean
- doc: Stop on first fail or error
  id: fail_fast
  inputBinding:
    prefix: --failfast
  type: boolean
- doc: Catch Ctrl-C and display results so far
  id: catch
  inputBinding:
    prefix: --catch
  type: boolean
- doc: Buffer stdout and stderr during tests
  id: buffer
  inputBinding:
    prefix: --buffer
  type: boolean
- doc: Only run tests which match the given substring
  id: k
  inputBinding:
    prefix: -k
  type: string
