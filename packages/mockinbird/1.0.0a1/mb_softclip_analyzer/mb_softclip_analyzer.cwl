class: CommandLineTool
id: ../../../mb_softclip_analyzer.cwl
inputs:
- id: in_top_n
  doc: number of most commonly clipped sequences printed
  type: long
  inputBinding:
    prefix: --top_n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-softclip-analyzer
