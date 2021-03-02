class: CommandLineTool
id: CanSNPer2_download.cwl
inputs:
- id: in_database
  doc: CanSNP database
  type: boolean?
  inputBinding:
    prefix: --database
- id: in_source
  doc: Source for download (genbank/refseq)
  type: boolean?
  inputBinding:
    prefix: --source
- id: in_outdir
  doc: reference genomes folder
  type: boolean?
  inputBinding:
    prefix: --outdir
- id: in_logs
  doc: Specify log directory
  type: boolean?
  inputBinding:
    prefix: --logs
- id: in_verbose
  doc: Verbose logging
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- CanSNPer2-download
