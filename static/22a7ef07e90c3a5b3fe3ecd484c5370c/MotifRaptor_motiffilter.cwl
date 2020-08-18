class: CommandLineTool
id: ../../../MotifRaptor_motiffilter.cwl
inputs:
- id: workdir
  doc: Working directory
  type: string
  inputBinding:
    prefix: --workdir
- id: motif_summary
  doc: Motif Summary File, usually from step2
  type: string
  inputBinding:
    prefix: --motif_summary
outputs: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- motiffilter
