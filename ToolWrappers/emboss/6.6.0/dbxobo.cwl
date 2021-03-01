class: CommandLineTool
id: dbxobo.cwl
inputs:
- id: in_directory
  doc: directory  [.] Database directory
  type: boolean?
  inputBinding:
    prefix: -directory
- id: in_filenames
  doc: "string     [*.obo] Wildcard database filename (Any\nstring)"
  type: boolean?
  inputBinding:
    prefix: -filenames
- id: in_fields
  doc: "menu       [*] Index fields (Values: id (ID); acc\n(Synonym); nam (Name);\
    \ isa (Parent); des\n(Description); ns (Namespace))"
  type: boolean?
  inputBinding:
    prefix: -fields
- id: in_outfile
  doc: outfile    [*.dbxobo] General log output file
  type: File?
  inputBinding:
    prefix: -outfile
- id: in_release
  doc: "string     [0.0] Release number (Any string up to 9\ncharacters)"
  type: boolean?
  inputBinding:
    prefix: -release
- id: in_date
  doc: string     [00/00/00] Index date (Date string dd/mm/yy)
  type: boolean?
  inputBinding:
    prefix: -date
- id: in_exclude
  doc: string     Wildcard filename(s) to exclude (Any string)
  type: boolean?
  inputBinding:
    prefix: -exclude
- id: in_index_outdir
  doc: outdir     [.] Index file output directory
  type: File?
  inputBinding:
    prefix: -indexoutdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [*.dbxobo] General log output file
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_index_outdir
  doc: outdir     [.] Index file output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_index_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- dbxobo
