class: CommandLineTool
id: anvi_script_process_genbank.cwl
inputs:
- id: input_genbank
  doc: Input GenBank file
  type: string
  inputBinding:
    prefix: --input-genbank
- id: annotation_source
  doc: 'Annotation source (default: "NCBI_PGAP")'
  type: string
  inputBinding:
    prefix: --annotation-source
- id: annotation_version
  doc: 'Annotation source version to be stored in the database (default: "v4.6")'
  type: string
  inputBinding:
    prefix: --annotation-version
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-process-genbank
