class: CommandLineTool
id: sketchy_survey_link.cwl
inputs:
- id: iid
  doc: Path to isolate ID file from Pathfinder Survey
  type: File
  inputBinding:
    prefix: --iid
- id: directory
  doc: Path to directory from which to extract files
  type: File
  inputBinding:
    prefix: --directory
- id: column
  doc: Use a header and column name to parse isolate IDs [None]
  type: string
  inputBinding:
    prefix: --column
- id: extension
  doc: File extension to link isolate IDs to file [.fasta]
  type: string
  inputBinding:
    prefix: --extension
- id: symlink
  doc: Symlink the detected files to the output directory.
  type: boolean
  inputBinding:
    prefix: --symlink
- id: outdir
  doc: If symlink, output directory for symbolic links to files [sketchy_link]
  type: File
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- survey
- link
