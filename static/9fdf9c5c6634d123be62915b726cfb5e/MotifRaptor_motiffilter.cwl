class: CommandLineTool
id: MotifRaptor_motiffilter.cwl
inputs:
- id: in_workdir
  doc: Working directory
  type: Directory?
  inputBinding:
    prefix: --workdir
- id: in_motif_summary
  doc: "Motif Summary File, usually from step2\n"
  type: File?
  inputBinding:
    prefix: --motif_summary
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- motiffilter
