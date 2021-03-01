class: CommandLineTool
id: igdiscover_dereplicate.cwl
inputs:
- id: in_limit
  doc: Limit processing to the first N reads
  type: string?
  inputBinding:
    prefix: --limit
- id: in_trim_g
  doc: Trim 'G' nucleotides at 5' end
  type: boolean?
  inputBinding:
    prefix: --trim-g
- id: in_minimum_length
  doc: Minimum sequence length
  type: long?
  inputBinding:
    prefix: --minimum-length
- id: in_barcode_length
  doc: "Length of barcode. Positive for 5' barcode, negative\nfor 3' barcode. Default:\
    \ 0"
  type: long?
  inputBinding:
    prefix: --barcode-length
- id: in_json
  doc: Write statistics to FILE
  type: File?
  inputBinding:
    prefix: --json
- id: in_sequences
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- dereplicate
