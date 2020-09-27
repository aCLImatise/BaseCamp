class: CommandLineTool
id: recycle.py.cwl
inputs:
- id: in_graph
  doc: "(spades 3.50+) assembly graph FASTG file to process;\nrecommended for spades\
    \ 3.5: before_rr.fastg, for\nspades 3.6+:assembly_graph.fastg"
  type: File
  inputBinding:
    prefix: --graph
- id: in_max_k
  doc: "integer reflecting maximum k value used by the\nassembler"
  type: long
  inputBinding:
    prefix: --max_k
- id: in_bam
  doc: "BAM file resulting from aligning reads to contigs\nfile, filtering for best\
    \ matches"
  type: File
  inputBinding:
    prefix: --bam
- id: in_length
  doc: 'minimum length required for reporting [default: 1000]'
  type: long
  inputBinding:
    prefix: --length
- id: in_max_cv
  doc: "coefficient of variation used for pre-selection\n[default: 0.5, higher-->\
    \ less restrictive]"
  type: long
  inputBinding:
    prefix: --max_CV
- id: in_iso
  doc: "True or False value reflecting whether data sequenced\nwas an isolated strain"
  type: string
  inputBinding:
    prefix: --iso
- id: in_output_dir
  doc: "Output directory\n"
  type: Directory
  inputBinding:
    prefix: --output_dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- recycle.py
