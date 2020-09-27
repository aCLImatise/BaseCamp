class: CommandLineTool
id: sha256sum.cwl
inputs:
- id: in_binary
  doc: read in binary mode
  type: boolean
  inputBinding:
    prefix: --binary
- id: in_check
  doc: read SHA256 sums from the FILEs and check them
  type: boolean
  inputBinding:
    prefix: --check
- id: in_tag
  doc: create a BSD-style checksum
  type: boolean
  inputBinding:
    prefix: --tag
- id: in_text
  doc: read in text mode (default)
  type: boolean
  inputBinding:
    prefix: --text
- id: in_end_output_line
  doc: "end each output line with NUL, not newline,\nand disable file name escaping"
  type: File
  inputBinding:
    prefix: --zero
- id: in_ignore_missing
  doc: don't fail or report status for missing files
  type: boolean
  inputBinding:
    prefix: --ignore-missing
- id: in_quiet
  doc: don't print OK for each successfully verified file
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_status
  doc: don't output anything, status code shows success
  type: boolean
  inputBinding:
    prefix: --status
- id: in_strict
  doc: exit non-zero for improperly formatted checksum lines
  type: boolean
  inputBinding:
    prefix: --strict
- id: in_warn
  doc: warn about improperly formatted checksum lines
  type: boolean
  inputBinding:
    prefix: --warn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_end_output_line
  doc: "end each output line with NUL, not newline,\nand disable file name escaping"
  type: File
  outputBinding:
    glob: $(inputs.in_end_output_line)
cwlVersion: v1.1
baseCommand:
- sha256sum
