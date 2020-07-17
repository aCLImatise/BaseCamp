class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/CanSNPer2_download.cwl
inputs:
- id: db
  doc: ', --database   CanSNP database'
  type: boolean
  inputBinding:
    prefix: -db
- id: _source_source
  doc: ', --source      Source for download (genbank/refseq)'
  type: boolean
  inputBinding:
    prefix: -s
- id: _outdir_reference
  doc: ', --outdir      reference genomes folder'
  type: boolean
  inputBinding:
    prefix: -o
- id: logs
  doc: Specify log directory
  type: boolean
  inputBinding:
    prefix: --logs
- id: verbose
  doc: Verbose logging
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- CanSNPer2-download
