class: CommandLineTool
id: arb_sed.cwl
inputs:
- id: silent
  doc: suppress automatic printing of pattern space
  type: boolean
  inputBinding:
    prefix: --silent
- id: debug
  doc: annotate program execution
  type: boolean
  inputBinding:
    prefix: --debug
- id: expression
  doc: add the script to the commands to be executed
  type: string
  inputBinding:
    prefix: --expression
- id: file
  doc: add the contents of script-file to the commands to be executed
  type: string
  inputBinding:
    prefix: --file
- id: follow_symlinks
  doc: follow symlinks when processing in place
  type: boolean
  inputBinding:
    prefix: --follow-symlinks
- id: i
  doc: '[SUFFIX], --in-place[=SUFFIX] edit files in place (makes backup if SUFFIX
    supplied)'
  type: boolean
  inputBinding:
    prefix: -i
- id: line_length
  doc: specify the desired line-wrap length for the `l' command
  type: string
  inputBinding:
    prefix: --line-length
- id: posix
  doc: disable all GNU extensions.
  type: boolean
  inputBinding:
    prefix: --posix
- id: regexp_extended
  doc: use extended regular expressions in the script (for portability use POSIX -E).
  type: boolean
  inputBinding:
    prefix: --regexp-extended
- id: separate
  doc: consider files as separate rather than as a single, continuous long stream.
  type: boolean
  inputBinding:
    prefix: --separate
- id: sandbox
  doc: operate in sandbox mode (disable e/r/w commands).
  type: boolean
  inputBinding:
    prefix: --sandbox
- id: unbuffered
  doc: load minimal amounts of data from the input files and flush the output buffers
    more often
  type: boolean
  inputBinding:
    prefix: --unbuffered
- id: null_data
  doc: separate lines by NUL characters
  type: boolean
  inputBinding:
    prefix: --null-data
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_sed
