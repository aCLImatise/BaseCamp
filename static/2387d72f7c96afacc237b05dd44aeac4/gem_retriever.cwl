class: CommandLineTool
id: gem_retriever.cwl
inputs:
- id: index
  doc: (GEM archive)
  type: string
  inputBinding:
    prefix: --index
- id: input
  doc: (default=stdin)
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: (default=stdout)
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- gem-retriever
