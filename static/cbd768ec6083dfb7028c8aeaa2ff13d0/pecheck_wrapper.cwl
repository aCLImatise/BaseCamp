class: CommandLineTool
id: pecheck_wrapper.py.cwl
inputs:
- id: output
  doc: Output directory (created if non-existant)
  type: string
  inputBinding:
    position: 0
- id: input
  doc: Input directory(s) or files
  type: string
  inputBinding:
    position: 1
- id: gzip
  doc: Which command should be used to gzip? (try pigz!)
  type: string
  inputBinding:
    prefix: --gzip
- id: jobs
  doc: number of parallel jobs
  type: string
  inputBinding:
    prefix: --jobs
- id: force
  doc: Force creation of merged outputs even if they exist
  type: boolean
  inputBinding:
    prefix: --force
- id: dry_run
  doc: Don't actually do anything, just print what would be done
  type: boolean
  inputBinding:
    prefix: --dry-run
outputs: []
cwlVersion: v1.1
baseCommand:
- pecheck-wrapper.py
