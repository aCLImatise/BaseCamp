class: CommandLineTool
id: enasearch_retrieve_analysis_report.cwl
inputs:
- id: in_accession
  doc: "Accession id (study accessions (ERP, SRP, DRP, PRJ\nprefixes), experiment\
    \ accessions (ERX, SRX, DRX prefixes),\nsample accessions (ERS, SRS, DRS, SAM\
    \ prefixes) and run\naccessions))  [required]"
  type: string
  inputBinding:
    prefix: --accession
- id: in_fields
  doc: "Fields to return (accessible with get_analysis_fields)\n[multiple or comma-separated]"
  type: string
  inputBinding:
    prefix: --fields
- id: in_file
  doc: File to save the report
  type: File
  inputBinding:
    prefix: --file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- enasearch
- retrieve_analysis_report
