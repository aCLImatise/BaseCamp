class: CommandLineTool
id: nf_core_download.cwl
inputs:
- id: in_release
  doc: Pipeline release
  type: string?
  inputBinding:
    prefix: --release
- id: in_singularity
  doc: Download singularity containers
  type: boolean?
  inputBinding:
    prefix: --singularity
- id: in_outdir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_compress
  doc: "[tar.gz|tar.bz2|zip|none]\nCompression type"
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_pipeline_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- nf-core
- download
