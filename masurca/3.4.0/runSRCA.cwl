#!/usr/bin/env cwl-runner

baseCommand:
- runSRCA.pl
class: CommandLineTool
cwlVersion: v1.0
id: runsrca.pl
inputs:
- doc: Assembly script (assemble.sh)
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: Generate example configuration file
  id: generate
  inputBinding:
    prefix: --generate
  type: boolean
- doc: Prepend to PATH in assembly script
  id: path
  inputBinding:
    prefix: --path
  type: boolean
- doc: Prepend to LD_LIBRARY_PATH in assembly script
  id: ld_library_path
  inputBinding:
    prefix: --ld-library-path
  type: boolean
- doc: Skip checking availability of other executables
  id: skip_checking
  inputBinding:
    prefix: --skip-checking
  type: boolean
