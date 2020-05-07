class: CommandLineTool
id: enasearch_retrieve_analysis_report.cwl
inputs:
- id: accession
  doc: Accession id (study accessions (ERP, SRP, DRP, PRJ prefixes), experiment accessions
    (ERX, SRX, DRX prefixes), sample accessions (ERS, SRS, DRS, SAM prefixes) and
    run accessions))  [required]
  type: string
  inputBinding:
    prefix: --accession
- id: fields
  doc: Fields to return (accessible with get_analysis_fields) [multiple or comma-separated]
  type: string
  inputBinding:
    prefix: --fields
- id: file
  doc: File to save the report
  type: File
  inputBinding:
    prefix: --file
outputs: []
cwlVersion: v1.1
baseCommand:
- enasearch
- retrieve_analysis_report
