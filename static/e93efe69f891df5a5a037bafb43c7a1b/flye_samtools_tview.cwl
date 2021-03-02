class: CommandLineTool
id: flye_samtools_tview.cwl
inputs:
- id: in_output_html_text
  doc: output as (H)tml or (C)urses or (T)ext
  type: string?
  inputBinding:
    prefix: -d
- id: in_go_directly_position
  doc: :pos      go directly to this position
  type: string?
  inputBinding:
    prefix: -p
- id: in_display_only_reads
  doc: display only reads from this sample or group
  type: string?
  inputBinding:
    prefix: -s
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --input-fmt-option
- id: in_reference
  doc: "Reference sequence FASTA FILE [null]\n"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_t_view
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_aln_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_ref_dot_fast_a
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- tview
