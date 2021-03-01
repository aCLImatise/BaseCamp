class: CommandLineTool
id: goenrichment.cwl
inputs:
- id: in_go
  doc: Path to the Gene Ontology OBO or OWL file
  type: File?
  inputBinding:
    prefix: --go
- id: in_annotation
  doc: Path to the tabular annotation file (GAF, BLAST2GO or 2-column table format
  type: File?
  inputBinding:
    prefix: --annotation
- id: in_study
  doc: Path to the file listing the study set gene products
  type: File?
  inputBinding:
    prefix: --study
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- goenrichment
