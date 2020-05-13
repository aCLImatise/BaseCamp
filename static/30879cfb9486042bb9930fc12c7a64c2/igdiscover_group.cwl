class: CommandLineTool
id: igdiscover_group.cwl
inputs:
- id: real_cdr3
  doc: In addition to barcode, group sequences by real CDR3 (detected with regex).
  type: boolean
  inputBinding:
    prefix: --real-cdr3
- id: pseudo_cdr3
  doc: '[START:END] In addition to barcode, group sequences by pseudo CDR3. If START:END
    is omitted, use -80:-60.'
  type: boolean
  inputBinding:
    prefix: --pseudo-cdr3
- id: groups_output
  doc: Write tab-separated table with groups to FILE
  type: File
  inputBinding:
    prefix: --groups-output
- id: plot_sizes
  doc: Plot group sizes to FILE (.png or .pdf)
  type: File
  inputBinding:
    prefix: --plot-sizes
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
    \ 12"
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
- group
