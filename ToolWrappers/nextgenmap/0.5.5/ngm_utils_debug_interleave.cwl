class: CommandLineTool
id: ngm_utils_debug_interleave.cwl
inputs:
- id: in_m_one
  doc: (required)  Upstream mates (FASTA/Q)
  type: File?
  inputBinding:
    prefix: --m1
- id: in_m_two
  doc: (required)  Downstream mates (FASTA/Q)
  type: File?
  inputBinding:
    prefix: --m2
- id: in_output
  doc: (required)  Output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_unpaired
  doc: Write reads without mate to this file.
  type: File?
  inputBinding:
    prefix: --unpaired
- id: in_delimiter
  doc: The character that precedes the 1 and 2 in the input files.
  type: long?
  inputBinding:
    prefix: --delimiter
- id: in_force
  doc: Force finishing even if no pairs are found.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_no_progress
  doc: Suppress progress output.
  type: boolean?
  inputBinding:
    prefix: --noprogress
- id: in_ngm_utils
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_interleave
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_char
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: (required)  Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- ngm-utils-debug
- interleave
