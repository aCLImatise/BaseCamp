class: CommandLineTool
id: igdiscover_dereplicate.cwl
inputs:
- id: limit
  doc: Limit processing to the first N reads
  type: string
  inputBinding:
    prefix: --limit
- id: trim_g
  doc: Trim 'G' nucleotides at 5' end
  type: boolean
  inputBinding:
    prefix: --trim-g
- id: minimum_length
  doc: Minimum sequence length
  type: long
  inputBinding:
    prefix: --minimum-length
- id: barcode_length
  doc: "Length of barcode. Positive for 5' barcode, negative for 3' barcode. Default:\
    \ 0"
  type: string
  inputBinding:
    prefix: --barcode-length
- id: json
  doc: Write statistics to FILE
  type: File
  inputBinding:
    prefix: --json
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- dereplicate
