class: CommandLineTool
id: ngm_utils_debug_interleave.cwl
inputs:
- id: in__m_upstream
  doc: ",  --m1 <file>\n(required)  Upstream mates (FASTA/Q)"
  type: File
  inputBinding:
    prefix: '-1'
- id: in__filerequired_downstream
  doc: ",  --m2 <file>\n(required)  Downstream mates (FASTA/Q)"
  type: File
  inputBinding:
    prefix: '-2'
- id: in__output_filerequired
  doc: ",  --output <file>\n(required)  Output file"
  type: File
  inputBinding:
    prefix: -o
- id: in__unpaired_filewrite
  doc: ",  --unpaired <file>\nWrite reads without mate to this file."
  type: File
  inputBinding:
    prefix: -u
- id: in__delimiter_charthe
  doc: ",  --delimiter <char>\nThe character that precedes the 1 and 2 in the input\
    \ files."
  type: long
  inputBinding:
    prefix: -d
- id: in__forceforce_finishing
  doc: ",  --force\nForce finishing even if no pairs are found."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_no_progress
  doc: Suppress progress output.
  type: boolean
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
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_filerequired
  doc: ",  --output <file>\n(required)  Output file"
  type: File
  outputBinding:
    glob: $(inputs.in__output_filerequired)
cwlVersion: v1.1
baseCommand:
- ngm-utils-debug
- interleave
