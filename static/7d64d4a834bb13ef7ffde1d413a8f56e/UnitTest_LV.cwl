class: CommandLineTool
id: UnitTest_LV.cwl
inputs:
- id: list_tests
  doc: list all/matching test cases
  type: boolean
  inputBinding:
    prefix: --list-tests
- id: list_tags
  doc: list all/matching tags
  type: boolean
  inputBinding:
    prefix: --list-tags
- id: success
  doc: include successful tests in output
  type: boolean
  inputBinding:
    prefix: --success
- id: break
  doc: break into debugger on failure
  type: boolean
  inputBinding:
    prefix: --break
- id: no_throw
  doc: skip exception tests
  type: boolean
  inputBinding:
    prefix: --nothrow
- id: invisibles
  doc: show invisibles (tabs, newlines)
  type: boolean
  inputBinding:
    prefix: --invisibles
- id: out
  doc: output filename
  type: File
  inputBinding:
    prefix: --out
- id: reporter
  doc: reporter to use (defaults to console)
  type: string
  inputBinding:
    prefix: --reporter
- id: name
  doc: suite name
  type: string
  inputBinding:
    prefix: --name
- id: abort
  doc: abort at first failure
  type: boolean
  inputBinding:
    prefix: --abort
- id: abort_x
  doc: abort after x failures
  type: string
  inputBinding:
    prefix: --abortx
- id: warn
  doc: enable warnings
  type: string
  inputBinding:
    prefix: --warn
- id: durations
  doc: <yes/no>     show test durations
  type: boolean
  inputBinding:
    prefix: --durations
- id: input_file
  doc: load test names to run from a file
  type: File
  inputBinding:
    prefix: --input-file
- id: list_test_names_only
  doc: list all/matching test cases names only
  type: boolean
  inputBinding:
    prefix: --list-test-names-only
- id: list_reporters
  doc: list all reporters
  type: boolean
  inputBinding:
    prefix: --list-reporters
- id: order
  doc: <decl|lex|rand>      test case order (defaults to decl)
  type: boolean
  inputBinding:
    prefix: --order
- id: rng_seed
  doc: <'time'|number>   set a specific seed for random numbers
  type: boolean
  inputBinding:
    prefix: --rng-seed
- id: force_colour
  doc: force colourised output
  type: boolean
  inputBinding:
    prefix: --force-colour
outputs: []
cwlVersion: v1.1
baseCommand:
- UnitTest_LV
