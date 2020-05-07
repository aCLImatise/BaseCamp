class: CommandLineTool
id: igdiscover_dendrogram.cwl
inputs:
- id: fast_a
  doc: Path to input FASTA file
  type: string
  inputBinding:
    position: 0
- id: plot
  doc: Path to output PDF or PNG
  type: string
  inputBinding:
    position: 1
- id: mark
  doc: Path to a FASTA file with a set of "known" sequences. Sequences in the main
    file that do *not* occur here will be marked with (new). If not given, no sequences
    will be marked (use this to compare two databases).
  type: string
  inputBinding:
    prefix: --mark
- id: method
  doc: 'Linkage method. Default: "average" (=UPGMA)'
  type: string
  inputBinding:
    prefix: --method
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- dendrogram
