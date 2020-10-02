class: CommandLineTool
id: dbxresource.cwl
inputs:
- id: in_directory
  doc: directory  [.] Database directory
  type: boolean
  inputBinding:
    prefix: -directory
- id: in_filenames
  doc: "string     [DRCAT.dat] Wildcard database filename (Any\nstring)"
  type: boolean
  inputBinding:
    prefix: -filenames
- id: in_fields
  doc: "menu       [*] Index fields (Values: id (ID); acc\n(IDother); nam (Name);\
    \ des (Description);\nurl (Server URL); cat (Category name); taxid\n(Taxon id);\
    \ edat (EDAM data term); efmt\n(EDAM format term); eid (EDAM data id term);\n\
    etpc (EDAM topic term); xref (Link); qout\n(Query output); qfmt (Query output\
    \ format);\nqin (Query input parameters); qurl (Query\nURL); rest (Rest URL);\
    \ soap (SOAP URL))"
  type: boolean
  inputBinding:
    prefix: -fields
- id: in_outfile
  doc: outfile    [*.dbxresource] General log output file
  type: File
  inputBinding:
    prefix: -outfile
- id: in_release
  doc: "string     [0.0] Release number (Any string up to 9\ncharacters)"
  type: boolean
  inputBinding:
    prefix: -release
- id: in_date
  doc: string     [00/00/00] Index date (Date string dd/mm/yy)
  type: boolean
  inputBinding:
    prefix: -date
- id: in_exclude
  doc: string     Wildcard filename(s) to exclude (Any string)
  type: boolean
  inputBinding:
    prefix: -exclude
- id: in_index_outdir
  doc: outdir     [.] Index file output directory
  type: File
  inputBinding:
    prefix: -indexoutdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [*.dbxresource] General log output file
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_index_outdir
  doc: outdir     [.] Index file output directory
  type: File
  outputBinding:
    glob: $(inputs.in_index_outdir)
cwlVersion: v1.1
baseCommand:
- dbxresource
