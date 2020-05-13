class: CommandLineTool
id: test_miso.cwl
inputs:
- id: verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Minimal output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: fail_fast
  doc: Stop on first failure
  type: boolean
  inputBinding:
    prefix: --failfast
- id: catch
  doc: Catch control-C and display results
  type: boolean
  inputBinding:
    prefix: --catch
- id: buffer
  doc: Buffer stdout and stderr during test runs
  type: boolean
  inputBinding:
    prefix: --buffer
outputs: []
cwlVersion: v1.1
baseCommand:
- test_miso
