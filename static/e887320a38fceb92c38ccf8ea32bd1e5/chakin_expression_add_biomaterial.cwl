class: CommandLineTool
id: chakin_expression_add_biomaterial.cwl
inputs:
- id: description
  doc: Description of the biomaterial
  type: string
  inputBinding:
    prefix: --description
- id: biomaterial_provider
  doc: Biomaterial provider name
  type: string
  inputBinding:
    prefix: --biomaterial_provider
- id: bio_sample_accession
  doc: Biosample accession number
  type: string
  inputBinding:
    prefix: --biosample_accession
- id: sra_accession
  doc: SRA accession number
  type: string
  inputBinding:
    prefix: --sra_accession
- id: bio_project_accession
  doc: Bioproject accession number
  type: string
  inputBinding:
    prefix: --bioproject_accession
- id: attributes
  doc: Custom attributes (In JSON dict form)
  type: string
  inputBinding:
    prefix: --attributes
outputs: []
cwlVersion: v1.1
baseCommand:
- chakin
- expression
- add_biomaterial
