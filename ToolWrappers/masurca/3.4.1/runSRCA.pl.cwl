class: CommandLineTool
id: runSRCA.pl.cwl
inputs:
- id: in_output
  doc: Assembly script (assemble.sh)
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_generate
  doc: Generate example configuration file
  type: boolean?
  inputBinding:
    prefix: --generate
- id: in_path
  doc: Prepend to PATH in assembly script
  type: boolean?
  inputBinding:
    prefix: --path
- id: in_ld_library_path
  doc: Prepend to LD_LIBRARY_PATH in assembly script
  type: boolean?
  inputBinding:
    prefix: --ld-library-path
- id: in_skip_checking
  doc: Skip checking availability of other executables
  type: boolean?
  inputBinding:
    prefix: --skip-checking
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- runSRCA.pl
