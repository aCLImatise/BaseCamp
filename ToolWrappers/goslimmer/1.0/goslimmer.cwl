class: CommandLineTool
id: goslimmer.cwl
inputs:
- id: in_go
  doc: Path to the full Gene Ontology OBO or OWL file
  type: File
  inputBinding:
    prefix: --go
- id: in_slim
  doc: Path to the GOslim OBO or OWL file
  type: File
  inputBinding:
    prefix: --slim
- id: in_annotation
  doc: Path to the tabular annotation file (GAF, BLAST2GO or 2-column table format
  type: File
  inputBinding:
    prefix: --annotation
- id: in_output
  doc: Path to the output GOslim annotation file]
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to the output GOslim annotation file]
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- goslimmer
