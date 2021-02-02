class: CommandLineTool
id: shasum.cwl
inputs:
- id: in_binary
  doc: read in binary mode
  type: boolean
  inputBinding:
    prefix: --binary
- id: in_check
  doc: read SHA sums from the FILEs and check them
  type: boolean
  inputBinding:
    prefix: --check
- id: in_text
  doc: read in text mode (default)
  type: boolean
  inputBinding:
    prefix: --text
- id: in_universal
  doc: "read in Universal Newlines mode\nproduces same digest on Windows/Unix/Mac"
  type: boolean
  inputBinding:
    prefix: --UNIVERSAL
- id: in_read_modeascii_interpreted
  doc: "read in BITS mode\nASCII '0' interpreted as 0-bit,\nASCII '1' interpreted\
    \ as 1-bit,\nall other characters ignored"
  type: boolean
  inputBinding:
    prefix: --01
- id: in_portable
  doc: read in portable mode (to be deprecated)
  type: boolean
  inputBinding:
    prefix: --portable
- id: in_status
  doc: don't output anything, status code shows success
  type: boolean
  inputBinding:
    prefix: --status
- id: in_warn
  doc: warn about improperly formatted checksum lines
  type: boolean
  inputBinding:
    prefix: --warn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- shasum
