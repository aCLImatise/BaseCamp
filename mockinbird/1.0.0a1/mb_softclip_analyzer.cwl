class: CommandLineTool
id: ../../../mb_softclip_analyzer.cwl
inputs:
- id: top_n
  doc: number of most commonly clipped sequences printed
  type: string
  inputBinding:
    prefix: --top_n
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-softclip-analyzer
