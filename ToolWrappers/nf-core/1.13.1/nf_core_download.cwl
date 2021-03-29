class: CommandLineTool
id: nf_core_download.cwl
inputs:
- id: in_release
  doc: Pipeline release
  type: string?
  inputBinding:
    prefix: --release
- id: in_outdir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_compress
  doc: "[tar.gz|tar.bz2|zip|none]\nArchive compression type"
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_force
  doc: Overwrite existing files
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_singularity
  doc: Download singularity images
  type: boolean?
  inputBinding:
    prefix: --singularity
- id: in_singularity_cache
  doc: "Don't copy images to the output directory,\ndon't set 'singularity.cacheDir'\
    \ in workflow"
  type: Directory?
  inputBinding:
    prefix: --singularity-cache
- id: in_parallel_downloads
  doc: Number of parallel image downloads
  type: long?
  inputBinding:
    prefix: --parallel-downloads
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
- id: out_singularity_cache
  doc: "Don't copy images to the output directory,\ndon't set 'singularity.cacheDir'\
    \ in workflow"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_singularity_cache)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- nf-core
- download
