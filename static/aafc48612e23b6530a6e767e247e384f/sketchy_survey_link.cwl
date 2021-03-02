class: CommandLineTool
id: sketchy_survey_link.cwl
inputs:
- id: in_iid
  doc: Path to isolate ID file from Pathfinder Survey
  type: File?
  inputBinding:
    prefix: --iid
- id: in_directory
  doc: Path to directory from which to extract files
  type: File?
  inputBinding:
    prefix: --directory
- id: in_column
  doc: "Use a header and column name to parse isolate IDs\n[None]"
  type: string?
  inputBinding:
    prefix: --column
- id: in_extension
  doc: File extension to link isolate IDs to file [.fasta]
  type: File?
  inputBinding:
    prefix: --extension
- id: in_symlink
  doc: Symlink the detected files to the output directory.
  type: Directory?
  inputBinding:
    prefix: --symlink
- id: in_outdir
  doc: "If symlink, output directory for symbolic links to\nfiles [sketchy_link]"
  type: Directory?
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_symlink
  doc: Symlink the detected files to the output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_symlink)
- id: out_outdir
  doc: "If symlink, output directory for symbolic links to\nfiles [sketchy_link]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- sketchy
- survey
- link
