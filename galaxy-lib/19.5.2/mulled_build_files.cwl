class: CommandLineTool
id: ../../../mulled_build_files.cwl
inputs:
- id: invo_lucro_path
  doc: ''
  type: string
  inputBinding:
    prefix: --involucro-path
- id: dry_run
  doc: ''
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: command
  doc: Command (build-and-test, build, all)
  type: string
  inputBinding:
    position: 0
- id: files
  doc: Path to directory (or single file) of TSV files describing composite recipes.
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mulled-build-files
