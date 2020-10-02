class: CommandLineTool
id: test_miso.cwl
inputs:
- id: in_verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Minimal output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_fail_fast
  doc: Stop on first failure
  type: boolean
  inputBinding:
    prefix: --failfast
- id: in_catch
  doc: Catch control-C and display results
  type: boolean
  inputBinding:
    prefix: --catch
- id: in_buffer
  doc: Buffer stdout and stderr during test runs
  type: boolean
  inputBinding:
    prefix: --buffer
- id: in_test_miso
  doc: '- run default set of tests'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- test_miso
