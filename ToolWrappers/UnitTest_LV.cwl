class: CommandLineTool
id: UnitTest_LV.cwl
inputs:
- id: in_list_tests
  doc: list all/matching test cases
  type: boolean
  inputBinding:
    prefix: --list-tests
- id: in_list_tags
  doc: list all/matching tags
  type: boolean
  inputBinding:
    prefix: --list-tags
- id: in_success
  doc: include successful tests in output
  type: boolean
  inputBinding:
    prefix: --success
- id: in_break
  doc: break into debugger on failure
  type: boolean
  inputBinding:
    prefix: --break
- id: in_no_throw
  doc: skip exception tests
  type: boolean
  inputBinding:
    prefix: --nothrow
- id: in_invisibles
  doc: show invisibles (tabs, newlines)
  type: boolean
  inputBinding:
    prefix: --invisibles
- id: in_out
  doc: output filename
  type: File
  inputBinding:
    prefix: --out
- id: in_reporter
  doc: reporter to use (defaults to console)
  type: string
  inputBinding:
    prefix: --reporter
- id: in_name
  doc: suite name
  type: string
  inputBinding:
    prefix: --name
- id: in_abort
  doc: abort at first failure
  type: boolean
  inputBinding:
    prefix: --abort
- id: in_abort_x
  doc: abort after x failures
  type: string
  inputBinding:
    prefix: --abortx
- id: in_warn
  doc: enable warnings
  type: string
  inputBinding:
    prefix: --warn
- id: in_durations
  doc: show test durations
  type: string
  inputBinding:
    prefix: --durations
- id: in_input_file
  doc: load test names to run from a file
  type: File
  inputBinding:
    prefix: --input-file
- id: in_list_test_names_only
  doc: list all/matching test cases names only
  type: boolean
  inputBinding:
    prefix: --list-test-names-only
- id: in_list_reporters
  doc: list all reporters
  type: boolean
  inputBinding:
    prefix: --list-reporters
- id: in_order
  doc: test case order (defaults to decl)
  type: string
  inputBinding:
    prefix: --order
- id: in_rng_seed
  doc: <'time'|number>   set a specific seed for random numbers
  type: boolean
  inputBinding:
    prefix: --rng-seed
- id: in_force_colour
  doc: force colourised output
  type: boolean
  inputBinding:
    prefix: --force-colour
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output filename
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- UnitTest_LV
