class: CommandLineTool
id: CanSNPer2_download.cwl
inputs:
- id: in_db
  doc: ', --database   CanSNP database'
  type: boolean
  inputBinding:
    prefix: -db
- id: in__source_source
  doc: ', --source      Source for download (genbank/refseq)'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__outdir_reference
  doc: ', --outdir      reference genomes folder'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_logs
  doc: Specify log directory
  type: boolean
  inputBinding:
    prefix: --logs
- id: in_verbose
  doc: Verbose logging
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CanSNPer2-download
