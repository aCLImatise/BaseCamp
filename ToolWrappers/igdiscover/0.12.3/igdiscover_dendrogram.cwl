class: CommandLineTool
id: igdiscover_dendrogram.cwl
inputs:
- id: in_mark
  doc: "Path to a FASTA file with a set of \"known\" sequences.\nSequences in the\
    \ main file that do *not* occur here\nwill be marked with (new). If not given,\
    \ no sequences\nwill be marked (use this to compare two databases)."
  type: File
  inputBinding:
    prefix: --mark
- id: in_method
  doc: "Linkage method. Default: \"average\" (=UPGMA)\n"
  type: string
  inputBinding:
    prefix: --method
- id: in_fast_a
  doc: Path to input FASTA file
  type: string
  inputBinding:
    position: 0
- id: in_plot
  doc: Path to output PDF or PNG
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
- dendrogram
