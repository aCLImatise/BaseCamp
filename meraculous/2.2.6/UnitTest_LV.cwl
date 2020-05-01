#!/usr/bin/env cwl-runner

baseCommand:
- UnitTest_LV
class: CommandLineTool
cwlVersion: v1.0
id: unittest_lv
inputs:
- doc: list all/matching test cases
  id: list_tests
  inputBinding:
    prefix: --list-tests
  type: boolean
- doc: list all/matching tags
  id: list_tags
  inputBinding:
    prefix: --list-tags
  type: boolean
- doc: include successful tests in output
  id: success
  inputBinding:
    prefix: --success
  type: boolean
- doc: break into debugger on failure
  id: break
  inputBinding:
    prefix: --break
  type: boolean
- doc: skip exception tests
  id: no_throw
  inputBinding:
    prefix: --nothrow
  type: boolean
- doc: show invisibles (tabs, newlines)
  id: invisibles
  inputBinding:
    prefix: --invisibles
  type: boolean
- doc: output filename
  id: out
  inputBinding:
    prefix: --out
  type: File
- doc: reporter to use (defaults to console)
  id: reporter
  inputBinding:
    prefix: --reporter
  type: string
- doc: suite name
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: abort at first failure
  id: abort
  inputBinding:
    prefix: --abort
  type: boolean
- doc: abort after x failures
  id: abort_x
  inputBinding:
    prefix: --abortx
  type: string
- doc: enable warnings
  id: warn
  inputBinding:
    prefix: --warn
  type: string
- doc: <yes/no>     show test durations
  id: durations
  inputBinding:
    prefix: --durations
  type: boolean
- doc: load test names to run from a file
  id: input_file
  inputBinding:
    prefix: --input-file
  type: File
- doc: list all/matching test cases names only
  id: list_test_names_only
  inputBinding:
    prefix: --list-test-names-only
  type: boolean
- doc: list all reporters
  id: list_reporters
  inputBinding:
    prefix: --list-reporters
  type: boolean
- doc: <decl|lex|rand>      test case order (defaults to decl)
  id: order
  inputBinding:
    prefix: --order
  type: boolean
- doc: <'time'|number>   set a specific seed for random numbers
  id: rng_seed
  inputBinding:
    prefix: --rng-seed
  type: boolean
- doc: force colourised output
  id: force_colour
  inputBinding:
    prefix: --force-colour
  type: boolean
