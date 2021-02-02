class: CommandLineTool
id: igdiscover_group.cwl
inputs:
- id: in_real_cdr_three
  doc: "In addition to barcode, group sequences by real CDR3\n(detected with regex)."
  type: boolean
  inputBinding:
    prefix: --real-cdr3
- id: in_pseudo_cdr_three
  doc: "[START:END]\nIn addition to barcode, group sequences by pseudo\nCDR3. If START:END\
    \ is omitted, use -80:-60."
  type: boolean
  inputBinding:
    prefix: --pseudo-cdr3
- id: in_groups_output
  doc: Write tab-separated table with groups to FILE
  type: File
  inputBinding:
    prefix: --groups-output
- id: in_plot_sizes
  doc: Plot group sizes to FILE (.png or .pdf)
  type: File
  inputBinding:
    prefix: --plot-sizes
- id: in_limit
  doc: Limit processing to the first N reads
  type: string
  inputBinding:
    prefix: --limit
- id: in_trim_g
  doc: Trim 'G' nucleotides at 5' end
  type: boolean
  inputBinding:
    prefix: --trim-g
- id: in_minimum_length
  doc: Minimum sequence length
  type: long
  inputBinding:
    prefix: --minimum-length
- id: in_barcode_length
  doc: "Length of barcode. Positive for 5' barcode, negative\nfor 3' barcode. Default:\
    \ 12"
  type: long
  inputBinding:
    prefix: --barcode-length
- id: in_json
  doc: Write statistics to FILE
  type: File
  inputBinding:
    prefix: --json
- id: in_sequences
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- igdiscover
- group
