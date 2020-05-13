class: CommandLineTool
id: nf_core_download.cwl
inputs:
- id: release
  doc: Pipeline release
  type: string
  inputBinding:
    prefix: --release
- id: singularity
  doc: Download singularity containers
  type: boolean
  inputBinding:
    prefix: --singularity
- id: outdir
  doc: Output directory
  type: string
  inputBinding:
    prefix: --outdir
- id: compress
  doc: '[tar.gz|tar.bz2|zip|none] Compression type'
  type: boolean
  inputBinding:
    prefix: --compress
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- download
