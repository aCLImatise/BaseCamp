class: CommandLineTool
id: sed.cwl
inputs:
- id: in_silent
  doc: suppress automatic printing of pattern space
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_debug
  doc: annotate program execution
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_expression
  doc: add the script to the commands to be executed
  type: string
  inputBinding:
    prefix: --expression
- id: in_file
  doc: add the contents of script-file to the commands to be executed
  type: File
  inputBinding:
    prefix: --file
- id: in_follow_symlinks
  doc: follow symlinks when processing in place
  type: boolean
  inputBinding:
    prefix: --follow-symlinks
- id: in_edit_files_place
  doc: "[SUFFIX], --in-place[=SUFFIX]\nedit files in place (makes backup if SUFFIX\
    \ supplied)"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_line_length
  doc: specify the desired line-wrap length for the `l' command
  type: long
  inputBinding:
    prefix: --line-length
- id: in_posix
  doc: disable all GNU extensions.
  type: boolean
  inputBinding:
    prefix: --posix
- id: in_regexp_extended
  doc: "use extended regular expressions in the script\n(for portability use POSIX\
    \ -E)."
  type: boolean
  inputBinding:
    prefix: --regexp-extended
- id: in_separate
  doc: "consider files as separate rather than as a single,\ncontinuous long stream."
  type: boolean
  inputBinding:
    prefix: --separate
- id: in_sandbox
  doc: operate in sandbox mode (disable e/r/w commands).
  type: boolean
  inputBinding:
    prefix: --sandbox
- id: in_unbuffered
  doc: "load minimal amounts of data from the input files and flush\nthe output buffers\
    \ more often"
  type: boolean
  inputBinding:
    prefix: --unbuffered
- id: in_null_data
  doc: separate lines by NUL characters
  type: boolean
  inputBinding:
    prefix: --null-data
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sed
