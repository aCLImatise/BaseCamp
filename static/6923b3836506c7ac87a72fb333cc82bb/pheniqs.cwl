class: CommandLineTool
id: pheniqs.cwl
inputs:
- id: mux
  doc: Multiplex and Demultiplex annotated DNA sequence reads
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pheniqs
