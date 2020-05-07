class: CommandLineTool
id: mulled_build_files.cwl
inputs:
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
